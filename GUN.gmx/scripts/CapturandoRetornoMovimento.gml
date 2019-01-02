switch(Type)
{
    case network_type_data:
        if(b=="left")
        {
            b_1 = buffer_read(Buffer,buffer_s8); // lendo o ID do safado que mandou
            if(b_1==1)
            {
                oPlayer1.x -= oPlayer1.roboSpeed;
                global.SpritePlayer1 = "left";
            }
            else if(b_1==2)
            {
                oPlayer2.x -= oPlayer2.roboSpeed;
                global.SpritePlayer2 = "left";
            }
            
        }
        else if(b=="right")
        {
            b_1 = buffer_read(Buffer,buffer_s8);
            if(b_1==1)
            {
                oPlayer1.x += oPlayer1.roboSpeed;
                global.SpritePlayer1 = "right";
            }
            else if (b_1==2)
            {
                oPlayer2.x += oPlayer2.roboSpeed;
                global.SpritePlayer2 = "right";
            } 
 
        }
        else if(b=="Shoot")
        {
            b_1 = buffer_read(Buffer,buffer_s8)
            if(b_1==1)
            {
                global.SpritePlayer1="Shoot";
            }
            else if(b_1==2)
            {
                global.SpritePlayer2="Shoot";
            }
        }
        else if(b=="MoveP1")
        {
            global.SpritePlayer1 = buffer_read(Buffer,buffer_string);
            ///show_debug_message(global.SpritePlayer1);
        }
        else if(b=="MoveP2")
        {
            global.SpritePlayer2 = buffer_read(Buffer,buffer_string);
            //show_debug_message(global.SpritePlayer2);
        }    
//====================================================================================//
        else if(b=="ZombieCreate")
        {
            xx = irandom(room_width);
            yy = 256;
            instance_create(xx,yy,oZombie);
        }          
//=============================XAT==================================//      
        else if(b=="xat")
        {
            b_1 = buffer_read(Buffer,buffer_s8);
            if(b_1==1)
            {
                global.msgPlayer1 = buffer_read(Buffer,buffer_string);
            }
            else if (b_1==2)
            {
                global.msgPlayer2 = buffer_read(Buffer,buffer_string);
            }
        }
//====================================================================================//
}

























