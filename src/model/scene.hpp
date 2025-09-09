#pragma once

#include <iostream>
#include <ctime>

#include "rect.hpp"

// Contains all objects of the scene
// and handles the physics of the game
class Scene
{
public:
    Scene();

    // Add a rect object to the scene
    unsigned add_object(const Rect &rect);

    // Update object velocity
    void set_obj_vel(unsigned id, const glm::vec2 &new_vel);

    // Update the scene
    void update(const float dt);

    // Handle collision between paddle and ball
    void handle_rect_collision(const Rect& paddle, Rect &ball, const float dt);

    // Check for wall collision
    void handle_wall_collision(Rect& r);

    // Move bot in direction of the ball
    void move_bot(Rect &bot, const Rect &ball);

    // Reset board after a goal
    void reset(Rect &ball, int direction, unsigned &score_to_increment);

    // Get objects
    std::vector<Rect> get_objects() const;

    // Returns current difficulty
    float get_difficulty() const;

    // Returns player score
    unsigned get_player_score() const;

    // Returns bot score
    unsigned get_bot_score() const;

private:
    std::vector<glm::vec2> initial_positions;
    std::vector<Rect> objects;
    float initial_difficulty = 0.7f;
    float difficulty = initial_difficulty;
    unsigned player_score = 0;
    unsigned bot_score = 0;
};