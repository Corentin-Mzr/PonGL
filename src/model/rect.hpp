#pragma once

#include <glm/glm.hpp>

class Rect
{
public:
    Rect() = default;
    Rect(const glm::vec2 &pos,
         const glm::vec2 &vel,
         const glm::vec2 &dim);

    // Update rect position
    void update(const float dt);

    // Set rect position (for collision)
    void set_pos(const glm::vec2 &new_pos);

    // Set rect velocity
    void set_vel(const glm::vec2 &new_vel);

    // Returns position
    glm::vec2 get_pos() const;

    // Returns velocity
    glm::vec2 get_vel() const;

    // Returns width and height of the rectangle
    glm::vec2 get_dim() const;

private:
    glm::vec2 pos, vel, dim;
};