module FJK_RSE(J,K,Clk,R,S,CE,Qout);

    input J,K;  //inputs
    input Clk;  //Clock
    input R;    //synchronous reset (R) 
    input S; //synchronous set 
    input CE; //clock enable 
    output Qout;  //data output 
    
    //Internal variable
    reg Qout;
    
    always@ (posedge(Clk))  		//Síncrono com a borda positiva do clock
    begin
        if(R == 1) //reset maior prioridade
            Qout = 0;
        else    
            if(S == 1)  			//set segunda prioridade
                Qout = 1;
            else
                if(CE == 1) 		//j e k são considerados se CE estiver alto
                    if(J == 0 && K == 0)    
                        Qout = Qout; 	// nada muda
                    else if(J == 0 && K == 1)
                        Qout = 0;  		//reset
                    else if(J == 1 && K == 0)
                        Qout = 1;  		//set
                    else
                        Qout = ~Qout;  //toggle
                else
                    Qout = Qout; 		// nada muda
    end
    
endmodule
