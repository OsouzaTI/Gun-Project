switch(Type)
{
    case network_type_data:
        if(b=="ID"){ global.ID_player = buffer_read(Buffer,buffer_u8) }
        break;
}
