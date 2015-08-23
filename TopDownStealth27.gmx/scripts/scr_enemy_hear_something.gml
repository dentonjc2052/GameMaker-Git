
if(instance_exists(obj_sound_source))
{
    total_sounds = instance_number(obj_sound_source);
    
    for (i = 0; i < total_sounds; i++)
    {
        show_debug_message("Looping!");
        k = instance_find(obj_sound_source, i);
        if(point_distance(x, y, (k).x, (k).y) <= (k).noise_level * 1)
        // brackets above important
        // if the distance from the enemy running the script to k the most recent sound
        // is less than or equal to the noise level emitted by it - then pursue
        // by virtue of setting investigating to true and returning this script true
        
            {
                show_debug_message("Heard it!");
                investigate_x = (k).x;
                investigate_y = (k).y;
                investigating = true;
                
                return true;
            }
        return false;
    }
}