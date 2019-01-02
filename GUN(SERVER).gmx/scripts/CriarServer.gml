ServerType = network_socket_tcp;
ServerPorta = 6554;
ServerMaxClientes = 2;
ServerConnect = network_create_server(
                           ServerType,
                           ServerPorta,
                           ServerMaxClientes
                           );
if( ServerConnect < 0 )
{
    show_message("Erro ao Criar Server!");
}
else
{
    show_message("Server Criado Com Sucesso!");
}
