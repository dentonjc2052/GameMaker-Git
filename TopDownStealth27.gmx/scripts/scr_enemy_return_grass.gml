inst = instance_nearest(x, y, obj_grass_light);
if (inst > 0) 
{
    instX = inst.x;
    instY = inst.y;
}
return_to_x = inst.x
return_to_y = inst.y

if (mp_grid_path(grid, path, x, y, return_to_x, return_to_y, true))
{
    path_start(path, move_speed, 0, false);
}
//returning = false;