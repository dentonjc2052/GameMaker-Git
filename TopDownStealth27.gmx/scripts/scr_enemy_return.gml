/*
inst = instance_nearest(x, y, obj_grass_light);
if (inst > 0) 
{
    instX = inst.x;
    instY = inst.y;
}
return_to_x = inst.x
return_to_y = inst.y
*/

grid = obj_guard_controller.guard_grid;
// need to reference the object in order to pull the output from it - which was guard_grid
//put in to resolve bug of crashing when knocking guard out before moving...
//taken from start of scr enemy investigate - may be using twice... maybe prefer once???
mp_grid_add_instances(grid, col_solid_block, false);
if (mp_grid_path(grid, path, x, y, return_to_x, return_to_y, true))
{
    path_start(path, move_speed, 0, false);
}
//returning = false;



// need to reference the object in order to pull the output from it - which was guard_grid