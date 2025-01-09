#include "rect.hpp"

Rect::Rect(const glm::vec2 &pos,
           const glm::vec2 &vel,
           const glm::vec2 &dim) : pos(pos), vel(vel), dim(dim)
{
}

// Update rect position
void Rect::update(const float dt)
{
    pos += vel * dt;
}

// Set rect position (for collision)
void Rect::set_pos(const glm::vec2 &new_pos)
{
    pos = new_pos;
}

// Update rect velocity
void Rect::set_vel(const glm::vec2 &new_vel)
{
    vel = new_vel;
}

// Returns position
glm::vec2 Rect::get_pos() const
{
    return pos;
}

// Returns velocity
glm::vec2 Rect::get_vel() const
{
    return vel;
}

// Returns width and height of the rectangle
glm::vec2 Rect::get_dim() const
{
    return dim;
}