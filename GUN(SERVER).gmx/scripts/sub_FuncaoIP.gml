switch(global.UsuariosON)
{
    case 1:
        draw_text(10,60,"IP_1 :"+string(ds_list_find_value(listIP,0)));
        break;
    case 2:
        draw_text(10,60,"IP_1 :"+string(ds_list_find_value(listIP,0)));
        draw_text(10,90,"IP_2 :"+string(ds_list_find_value(listIP,1)));
        break;
    default:
        // nada
}

