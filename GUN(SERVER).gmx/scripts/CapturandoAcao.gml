switch(Type)
{
    case network_type_data:
        if(b=="left")
        {
            b_1 = buffer_read(Buffer,buffer_s8); // lendo o ID do safado que mandou
            if(b_1==1)// se for o 1
            {
                show_debug_message("player 1 pressionou left!");
                RetornandoMovimento("left",1);
            }
            else if (b_1==2)// se for o 2
            {
                show_debug_message("player 2 pressionou left!");     
                RetornandoMovimento("left",2);       
            }
        }
        else if(b=="right")
        {
            b_1 = buffer_read(Buffer,buffer_s8);// lendo o ID do safado que mandou
            if(b_1==1)// se for o 1
            {
                show_debug_message("player 1 pressionou right!");
                RetornandoMovimento("right",1);
            }
            else if (b_1==2)// se for o 2
            {
                show_debug_message("player 2 pressionou right!");    
                RetornandoMovimento("right",2);                      
            } 
        }
        else if(b=="Shoot")
        {
            b_1 = buffer_read(Buffer,buffer_s8);
            if(b_1==1)// se for o 1
            {
                show_debug_message("player 1 Atirou!");
                RetornandoMovimento("Shoot",1);
            }
            else if (b_1==2)// se for o 2
            {
                show_debug_message("player 2 Atirou!");    
                RetornandoMovimento("Shoot",2);                      
            } 
        }
        else if(b=="MoveP1")
        {
            RetornandoPlayerParado("MoveP1","parado");
        }
        else if(b=="MoveP2")
        {
            RetornandoPlayerParado("MoveP2","parado");
        }
//====================== Criar Zombie================================//
        else if(b=="ZombieCreate")
        {
            if(global.UsuariosON==2)
            {
                RetornandoPlayerParado("ZombieCreate","Um zumbie vai ser criado!");
            }
        }
//=============================XAT==================================//      
        else if(b=="xat")
        {
            b_1 = buffer_read(Buffer,buffer_s8);
            if(b_1==1)
            {
                b_2 = buffer_read(Buffer,buffer_string)
                RetornandoMSG_XAT("xat",1,b_2);
            }
            else if (b_1==2)
            {
                b_2 = buffer_read(Buffer,buffer_string)
                RetornandoMSG_XAT("xat",2,b_2);
            }
        }
//=========================== Capturando X e Y ============================//
        if(b=="XY")
        {
            b_1 = buffer_read(Buffer,buffer_s8);
            if(b_1==1)
            {
                global.Player1_X = buffer_read(Buffer,buffer_s16);
                global.Player1_Y = buffer_read(Buffer,buffer_s16);
                RetornandoXY("XY",1,global.Player1_X,global.Player1_Y);
                
            }
            else if(b_1==2)
            {
                global.Player2_X = buffer_read(Buffer,buffer_s16);
                global.Player2_Y = buffer_read(Buffer,buffer_s16);
            }
            //show_debug_message("Recebi X e Y");
        }
//========================================================================//        
        
        
        
        
        
        
        
        
        
}
