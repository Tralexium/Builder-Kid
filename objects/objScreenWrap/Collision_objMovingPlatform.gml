if (other.x < 0 || other.x > room_width || other.y < 0 || other.y > room_height)
{
    if (other.x < 0)
    {
        other.x += room_width
    }
    if (other.x > room_width)
    {
        other.x -= room_width
    }
    if (other.y < 0)
    {
        other.y += room_height
    }
    if (other.y > room_height)
    {
        other.y -= room_height
    }
}

