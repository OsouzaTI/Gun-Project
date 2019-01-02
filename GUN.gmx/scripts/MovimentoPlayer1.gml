/// Movimento
if keyboard_check(vk_left)
{
    MandarBuffer("string",256,2,"left",global.ID_player,noone,noone);/// Mandei buffer dizendo qual tecla foi
                                                         ///  pressionada e qual player pelo ID                                                                                             
}
else if( keyboard_check(vk_right) )
{
    MandarBuffer("string",256,2,"right",global.ID_player,noone,noone);/// Mandei buffer dizendo qual tecla foi
                                                         ///  pressionada e qual player pelo ID                                                           
}
else if(keyboard_check_pressed(ord("A")))
{
    if(global.ID_player==1)&& !global.Player1Shoot
    {
        MandarBuffer("string",256,2,"Shoot",global.ID_player,noone,noone);
        oPlayer1.alarm[0] = 5;
        global.Player1Shoot = true;
    }
    else if(global.ID_player==2)&& !global.Player2Shoot
    {
        MandarBuffer("string",256,2,"Shoot",global.ID_player,noone,noone);
        oPlayer1.alarm[0] = 5;
        global.Player2Shoot = true;
    }
}
else if( !keyboard_check(vk_left) && !keyboard_check(vk_right) )
{
    MandarBuffer("string",256,5,"MoveP"+string(global.ID_player),"parado",noone,noone);
    //show_debug_message("Player parado");
}
