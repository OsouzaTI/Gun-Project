/// Todas as Funções aqui
//======== Assincrono ============//
Type = async_load[? "type"];
Buffer = async_load[? "buffer"];
Socket = async_load[? "socket"];
IP = async_load[? "ip"];
ID = async_load[? "id"];
//================================//
if(Type==network_type_data) b = buffer_read(Buffer,buffer_string);
//================================//
AtualizarClientesON();// atualiza o numero de clientes e salva o socket e o ip
CapturandoAcao();// Captura os buffer mandados pelos Clientes em 
                 // relação aos movimentos
                 // Capturando a posição X e Y dos clientes a cada X segundos
