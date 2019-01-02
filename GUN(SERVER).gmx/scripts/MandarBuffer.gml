tipo = argument0;
tamanho = argument1;
Parametros = argument2;

switch(tipo)
{
    case "string":
        buffer = buffer_create(tamanho,buffer_fixed,1); // iniciando o buffer com alinhamento 1
        buffer_seek(buffer,buffer_seek_start,0); // sei la
        //=====================================================================================//
        if(Parametros==1)
        {
           buffer_write(buffer,buffer_string,argument3); // argumento 3 no caso de 1 parametro
        }
        else if(Parametros==2)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_s8,argument4); // argumento 4
        }
        network_send_packet(Socket,buffer,buffer_tell(buffer));/// mandando o buffer
        buffer_delete(buffer); 
        
        break;
        
    case "bool":
        buffer = buffer_create(tamanho,buffer_fixed,1); // iniciando o buffer com alinhamento 1
        buffer_seek(buffer,buffer_seek_start,0); // sei la    
        //=====================================================================================//
        if(Parametros==1)
        {
           buffer_write(buffer,buffer_string,argument3); // argumento 3 no caso de 1 parametro
        }
        else if(Parametros==2)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_s8,argument4); // argumento 4
        }  
        network_send_packet(Socket,buffer,buffer_tell(buffer));/// mandando o buffer
        buffer_delete(buffer); 
        
        break;        
}

