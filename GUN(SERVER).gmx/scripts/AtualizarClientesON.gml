switch(Type)
{
    case network_type_connect:
        ds_list_add(listSocket,Socket);
        ds_list_add(listIP,IP);
        global.UsuariosON++;
        show_debug_message("ID:"+string(Socket)+" Conectou!");
        show_debug_message("IP:"+string(IP));
        MandarID(); // Manda o ID do socket pro cliente
        break;
    case network_type_disconnect:
        ///========= id para deletar ===============//
        sock_ = ds_list_find_index(listSocket,Socket);
        ip_ = ds_list_find_index(listIP,IP);
        ds_list_delete(listSocket,sock_);
        ds_list_delete(listIP,ip_);
        ///========= id para deletar ===============//
        global.UsuariosON--;
        show_debug_message("ID:"+string(Socket)+" Desconectou!");
        show_debug_message("IP:"+string(IP));
        break;
}
