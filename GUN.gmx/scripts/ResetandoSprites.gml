if(global.ID_player==1)
{
    if (!keyboard_check(vk_left) && !keyboard_check(vk_right))
    {
        if(oPlayer1.sprite_index==sprLeft1)
        {
            sprite_index = sprIdle1_Left;
            show_debug_message("Nao apertou");
        }
        else if(oPlayer1.sprite_index==sprRight1)
        {
            sprite_index = sprIdle1_Right;
            show_debug_message("Nao apertou");
        }
    }
}
else if(global.ID_player==2)
{

}
