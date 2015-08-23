

if(!stepping)
{
    stepping = true;
    alarm[0] = (60-(max_speed * 10));
    scr_create_sound(max_speed * 20, 10, x, y);
    
}