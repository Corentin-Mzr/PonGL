#include "scene.hpp"

Scene::Scene()
{
    // Seed random number generator
    std::srand(static_cast<unsigned int>(std::time(nullptr)));
}

// Add a rect object to the scene
unsigned Scene::add_object(const Rect &rect)
{
    unsigned obj_id = objects.size();
    objects.push_back(rect);
    initial_positions.push_back(rect.get_pos());

    return obj_id;
}

// Update object velocity
void Scene::set_obj_vel(unsigned id, const glm::vec2 &new_vel)
{
    if (id < objects.size())
        objects[id].set_vel(new_vel);
}

// Update the scene
void Scene::update(const float dt)
{
    move_bot(objects[1], objects[2].get_pos());
    for (size_t i = 0; i < objects.size(); ++i)
    {
        for (size_t j = i + 1; j < objects.size(); ++j)
            handle_rect_collision(objects[i], objects[j], dt);

        objects[i].update(dt);
        handle_wall_collision(objects[i]);
    }
}

// Handle collision between paddle and ball
void Scene::handle_rect_collision(const Rect &paddle, Rect &ball, const float dt)
{
    const glm::vec2 &paddle_pos = paddle.get_pos();
    const glm::vec2 &paddle_dim = paddle.get_dim();
    const glm::vec2 &ball_pos = ball.get_pos();
    const glm::vec2 &ball_dim = ball.get_dim();

    // Calculate the edges of Rect1
    const float paddle_left = paddle_pos.x - paddle_dim.x;
    const float paddle_right = paddle_pos.x + paddle_dim.x;
    const float paddle_top = paddle_pos.y + paddle_dim.y;
    const float paddle_bottom = paddle_pos.y - paddle_dim.y;

    // Calculate the edges of Rect2
    const float ball_left = ball_pos.x - ball_dim.x;
    const float ball_right = ball_pos.x + ball_dim.x;
    const float ball_top = ball_pos.y + ball_dim.y;
    const float ball_bottom = ball_pos.y - ball_dim.y;

    // Compute next ball position
    const glm::vec2 &ball_vel = ball.get_vel();
    const glm::vec2 next_pos = ball_pos + ball_vel * dt;

    // Check for overlap
    bool collision = (next_pos.x + ball_dim.x >= paddle_left &&
                      next_pos.x - ball_dim.x <= paddle_right &&
                      next_pos.y + ball_dim.y >= paddle_bottom &&
                      next_pos.y - ball_dim.y <= paddle_top);

    if (!collision)
        return;

    // Reverse horizontal velocity
    glm::vec2 new_vel = ball_vel;
    new_vel.x = -ball_vel.x;

    // Adjust vertical velocity
    const float offset = (ball_pos.y - paddle_pos.y) / (paddle_dim.y * 2.0f);
    new_vel.y = offset;

    // Update ball velocity
    new_vel = difficulty * glm::normalize(new_vel);
    ball.set_vel(new_vel);

    // And increment a bit to make game harder
    difficulty += 0.02f;
}

// Check for wall collision
void Scene::handle_wall_collision(Rect &r)
{
    const glm::vec2 &pos = r.get_pos();
    const glm::vec2 &dim = r.get_dim();
    const glm::vec2 &vel = r.get_vel();

    // Calculate the edges of Rect
    const float left = pos.x - dim.x / 2.0f;
    const float right = pos.x + dim.x / 2.0f;
    const float top = pos.y + dim.y;
    const float bottom = pos.y - dim.y;

    if (top > 1.0f)
    {
        r.set_pos({pos.x, 1.0f - dim.y});
        r.set_vel({vel.x, -vel.y});
    }

    if (bottom < -1.0f)
    {
        r.set_pos({pos.x, -1.0f + dim.y});
        r.set_vel({vel.x, -vel.y});
    }

    // Discard paddles for this part
    if (vel.x == 0)
        return;

    // Goal for player
    if (right > 1.0f)
    {
        reset(r, 1, player_score);
    }

    // Goal for bot
    if (left < -1.0f)
    {
        reset(r, -1, bot_score);
    }
}

// Move bot in direction of the ball
void Scene::move_bot(Rect &bot, const glm::vec2 &ball_pos)
{
    const glm::vec2 &pos = bot.get_pos();
    int random_choice = rand() % 100;
    int threshold = 60;

    if (pos.y < ball_pos.y && random_choice >= threshold)
    {
        bot.set_vel({0.0f, 1.0f});
    }
    else if (pos.y > ball_pos.y && random_choice >= threshold)
    {
        bot.set_vel({0.0f, -1.0f});
    }
    else
    {
        bot.set_vel({0.0f, 0.0f});
    }
}

// Reset board after a goal
void Scene::reset(Rect &ball, int direction, unsigned &score_to_increment)
{
    // Increment score
    score_to_increment++;

    // Reset difficulty
    difficulty = initial_difficulty;

    // Reset objects position
    for (size_t i = 0; i < objects.size(); ++i)
    {
        objects[i].set_pos(initial_positions[i]);
    }

    const float random_y = ((rand() % 10001) / 10000.0f) - 0.5f;
    glm::vec2 new_vel = difficulty * glm::normalize(glm::vec2{direction, random_y});
    ball.set_vel(new_vel);
}

// Get objects
std::vector<Rect> Scene::get_objects() const
{
    return objects;
}

// Returns current difficulty
float Scene::get_difficulty() const
{
    return difficulty;
}

// Returns player score
unsigned Scene::get_player_score() const
{
    return player_score;
}

// Returns bot score
unsigned Scene::get_bot_score() const
{
    return bot_score;
}