
if (vspeed > 0)
{
    if (place_meeting(x, y+vspeed, col_solid_block))
    {
        while(!place_meeting(x, y+1, col_solid_block)){y++};
        vspeed = 0;
    }
}



if (vspeed < 0)
{
    if (place_meeting(x, y+vspeed, col_solid_block))
    {
        while(!place_meeting(x, y-1, col_solid_block)){y--};
        vspeed = 0;
    }
}




if (hspeed > 0)
{
    if (place_meeting(x+hspeed, y, col_solid_block))
    {
        while(!place_meeting(x+1, y, col_solid_block)){x++};
        hspeed = 0;
    }
}



if (hspeed < 0)
{
    if (place_meeting(x+hspeed, y, col_solid_block))
    {
        while(!place_meeting(x-1, y, col_solid_block)){x--};
        hspeed = 0;
    }
}