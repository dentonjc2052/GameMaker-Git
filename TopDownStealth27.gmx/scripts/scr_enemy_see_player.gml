
if (!collision_line(x, y, obj_player.x, obj_player.y, col_solid_block, false, true))
{
    cone_left = skin.image_angle + sight_cone_left;
    if(cone_left > 359) {cone_left = cone_left-359};
    
    cone_right = skin.image_angle + sight_cone_right;
    if(cone_right < 0) {cone_right = 359 + cone_right};
// if (cone_left < 0) changed to if(cone_right)
    
    
    p_angle = point_direction(x, y, obj_player.x, obj_player.y);
    show_debug_message ("Pangle: "+string(p_angle));
    show_debug_message ("Lcone: "+string(cone_left));
    show_debug_message ("Rcone: "+string(cone_right));
    
    if (cone_right > cone_left)
    
    {
        if(p_angle <= cone_left or p_angle >= cone_right) {in_cone = true};
        else {in_cone = false};
    }
    else
    {
        if(p_angle <= cone_left and p_angle >= cone_right) {in_cone = true};
        else {in_cone = false};
    }
  
    
    if (in_cone)
    {
        dist_to_player = point_distance(x, y, obj_player.x, obj_player.y);
        p_vis = obj_player.visibility;
        if (p_vis == 3)
        {
            if(dist_to_player < detection_rad_3) 
            { 
                return true;
            }
        }
        else if (p_vis == 2)
        {
            if(dist_to_player < detection_rad_2) 
            { 
                return true;
            }
        }
        else if (p_vis == 1)
        {
            if(dist_to_player < detection_rad_1) 
            { 
                return true;
            }
        }
        else if (p_vis == 0)
        {
            if(dist_to_player < detection_rad_0) 
            { 
                return true;
            }
        }
        
       
    }
return false;
}

// skin.image_angle = point_direction (x, y, obj_player.x, obj_player.y