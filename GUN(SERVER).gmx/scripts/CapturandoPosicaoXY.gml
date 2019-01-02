switch(Type)
{
    case network_type_data:
        if(b=="XY")
        {
            b_1 = buffer_read(Buffer,buffer_s8);
            if(b_1==1)
            {
                global.Player1_X = buffer_read(Buffer,buffer_s16);
                global.Player1_Y = buffer_read(Buffer,buffer_s16);
            }
            else if(b_1==2)
            {
                global.Player2_X = buffer_read(Buffer,buffer_s16);
                global.Player2_Y = buffer_read(Buffer,buffer_s16);
            }
        }
}
