tipo = argument0;
tamanho = argument1;
Parametros = argument2;

switch(tipo)
{
    case "string":
        buffer = buffer_create(tamanho,buffer_fixed,1); // iniciando o buffer com alinhamento 1
        buffer_seek(buffer,buffer_seek_start,0); // sei la
        
        if(Parametros==1)
        {
           buffer_write(buffer,buffer_string,argument3); // argumento 3 no caso de 1 parametro
        }
        else if(Parametros==2)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_s8,argument4); // argumento 4
        }
        else if(Parametros==3)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_s8,argument4); // argumento 4
            buffer_write(buffer,buffer_s16,argument5); // argumento 5
            /// outro      
        }
        else if(Parametros==4)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_s8,argument4); // argumento 4
            buffer_write(buffer,buffer_s16,argument5); // argumento 5
            buffer_write(buffer,buffer_s16,argument6); // argumento 6
                  
        }
        else if(Parametros==5)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_string,argument4); // argumento 4
        }
        else if(Parametros==6)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_s8,argument4); // argumento 4
            buffer_write(buffer,buffer_string,argument5); // argumento 5
        }
        network_send_packet(ClienteSocket,buffer,buffer_tell(buffer));/// mandando o buffer
        buffer_delete(buffer);
        break;
    //=========================================================================================//
    case "bool":
        buffer = buffer_create(tamanho,buffer_fixed,1); // iniciando o buffer com alinhamento 1
        buffer_seek(buffer,buffer_seek_start,0); // sei la
        
        if(Parametros==1)
        {
           buffer_write(buffer,buffer_bool,argument3); // argumento 3 no caso de 1 parametro
        }
        else if(Parametros==2)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_bool,argument4); // argumento 4
        }
        else if(Parametros==3)
        {
            buffer_write(buffer,buffer_string,argument3); // argumento 3
            buffer_write(buffer,buffer_s8,argument4); // argumento 4
            buffer_write(buffer,buffer_bool,argument5); // argumento 5
            /// outro      
        }
        network_send_packet(ClienteSocket,buffer,buffer_tell(buffer));/// mandando o buffer
        buffer_delete(buffer);
        break;
    //=========================================================================================//
        
        
        
        
        
        
    case "buffer_s8":
        //
        
        
        
        
        
        
        
}
