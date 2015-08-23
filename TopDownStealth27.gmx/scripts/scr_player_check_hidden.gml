//if(place_meeting(x, y, col_hiding_block)) {hidden = true};
//else {hidden = false}; 

//if (hidden)
//{
 //  // max_speed = max_speed_hidden;
 //   skin.image_alpha = 0.7;
//}

//else
//{
  //  max_speed = speed_limit;
//    skin.image_alpha = 1.0;
    
//}

/// scr_player_check_hidden()

// Are you hidden?
if(place_meeting(x, y, obj_collision_lv1)) // Kinda hidden?
{
    visibility = 2;
    skin.image_alpha = 0.9;
}
else if(place_meeting(x, y, obj_collision_lv2)) // Pretty well hidden?
{
    visibility = 1;
    skin.image_alpha = 0.7;
}
else if(place_meeting(x, y, obj_collision_lv3))// Suuuuper well hidden?
{
    visibility = 0;
    skin.image_alpha = 0.5;
}
else // Not hidden at all :(
{
    visibility = 3;
    skin.image_alpha = 1.0;
}