if(os_type!=os_android)
{
    globalvar ClienteSocket;
    ClienteType = network_socket_tcp;
    ClienteSocket = network_create_socket(ClienteType);
    ClientePorta = 6554;
    ClienteURL = "192.168.1.9";
    ClienteConnect = network_connect(
                        ClienteSocket,
                        ClienteURL,
                        ClientePorta
                        );
    if ( ClienteConnect < 0 )
    {
        show_message("Erro ao conectar!");
    }
    else
    {
        show_message("Conectado com sucesso!");
    }
}
else
{
    show_message("E android");
    globalvar ClienteSocket;
    ClienteType = network_socket_tcp;
    ClienteSocket = network_create_socket(ClienteType);
    ClientePorta = 6554;
    ClienteURL = "192.168.1.9";
    ClienteConnect = network_connect(
                        ClienteSocket,
                        ClienteURL,
                        ClientePorta
                        );
    if ( ClienteConnect < 0 )
    {
        show_message("Erro ao conectar!");
    }
    else
    {
        show_message("Conectado com sucesso!");
    }
}