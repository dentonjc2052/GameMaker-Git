
loudness = argument0;
duration = argument1;
xpos = argument2;
ypos = argument3;

sound = instance_create(xpos, ypos, obj_sound_source);

sound.noise_level = loudness;
sound.alarm[0] = duration;