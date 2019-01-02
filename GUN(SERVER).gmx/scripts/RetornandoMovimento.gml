tamanho = 256;

buffer = buffer_create(tamanho,buffer_fixed,1);
buffer_seek(buffer,buffer_seek_start,0);
buffer_write(buffer,buffer_string,argument0);
buffer_write(buffer,buffer_s8,argument1);

for(i=0;i<ds_list_size(listSocket);i++;)
{
    var sock = ds_list_find_value(listSocket,i);
    network_send_packet(sock,buffer,buffer_tell(buffer));    
}
buffer_delete(buffer);
