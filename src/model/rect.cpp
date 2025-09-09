#include "rect.hpp"

Rect::Rect(const glm::vec2 &pos,
           const glm::vec2 &vel,
           const glm::vec2 &dim) : pos(pos), vel(vel), dim(dim)
{
}

void Rect::update(const float dt)
{
    pos += vel * dt;
}

void Rect::set_pos(const glm::vec2 &new_pos)
{
    pos = new_pos;
}

void Rect::set_vel(const glm::vec2 &new_vel)
{
    vel = new_vel;
}

glm::vec2 Rect::get_pos() const noexcept
{
    return pos;
}

glm::vec2 Rect::get_vel() const noexcept
{
    return vel;
}

glm::vec2 Rect::get_dim() const noexcept
{
    return dim;
}
