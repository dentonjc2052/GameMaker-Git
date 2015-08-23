grid = obj_guard_controller.guard_grid;
// need to reference the object in order to pull the output from it - which was guard_grid

mp_grid_add_instances(grid, col_solid_block, false);
if (mp_grid_path(grid, path, x, y, investigate_x, investigate_y, true))
{
    path_start(path, move_speed, 0, false);
}
/*else
{
    scr_enemy_return();
}
*/
alarm[0] = -1;

//if statement above - asks if there is a valid path to begin with
//rather than just taking off for a path which might be blocked by a wall
//if the path is good, walk it.


//reference the existing grid, without creating another new one
//configure path, what avoid, where head - what objects you want to avoid
//