`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    07:18:26 04/29/2021 
// Module Name:    cu 
//////////////////////////////////////////////////////////////////////////////////
module cu(
    input [31:0] MEM_INST,
	 input INST_ENB,
	 input CLK,
	 output reg [4:0] RS1_ADR,
	 output reg [4:0] RS2_ADR,
	 output reg [4:0] REG_ADR,
	 //output reg RDY_CLK,
	 output reg PC_CLK,
	 output reg [3:0] ALU_OPT,
	 output reg [2:0] BR_OPT,
	 output reg [2:0] LSU_OPT,
	 //output CSR_OPT
	 //output CSR_DATA
	 //output CSR_ADR
	 output reg WRITE_ENB,
	 output reg MEM_WRITE_ENB,
	 output reg [2:0] IMM_TYPE,
	 output reg [2:0] RS1_MUX_SELECT,// 0 - REG_RS1 1 - PC_ADDR
	 output reg [2:0] RS2_MUX_SELECT,// 0 - REG_RS2 1 - IMM 
	 output reg [2:0] REG_MUX_SELECT, //0 - ALU_RESULT 1 - LSU_RESULT 2 - IMM_RESULT 3 - PC_ADDR_RESULT 4 - PC_+4
	 output reg [2:0] LSU_MUX_SELECT,
	 output reg [2:0] PC_MUX_SELECT //0 - +4 1 - +IMM
	 );
	 
//TODO send signal to all to initialize (global reset)
always @ (posedge CLK) begin
	PC_CLK=0;
	//TODO send to IP(PC) module address for writing instructions
	if(INST_ENB)
	 WRITE_ENB=0;
	 MEM_WRITE_ENB=0;
	 BR_OPT=9;
	 begin
		 case (MEM_INST[6:0])//OP CODE
			7'b0110111 : begin //LUI
					IMM_TYPE = 3'b011; //u type
					REG_ADR = MEM_INST[11:7];
					REG_MUX_SELECT = 3'b010; // for IMM
					WRITE_ENB = 1;
			   end
			7'b0010111 : begin //AUIPC
					IMM_TYPE = 3'b011; //u type
				end
			7'b1101111 : begin //BR 6F JAL
					IMM_TYPE = 3'b100;
					REG_MUX_SELECT = 4;
					WRITE_ENB = 1;
					BR_OPT = 4;
				  end	
			7'b1100111 : begin //BR 67
				  end //JALR
			7'b1100011 : begin //BR 63
					RS1_ADR = MEM_INST[19:15];
					 RS2_ADR=MEM_INST[24:20];
					 RS1_MUX_SELECT=0;
					 RS2_MUX_SELECT=0;
					 IMM_TYPE = 3'b001;
					case (MEM_INST[14:12])//funct3
						 3'b000 :begin //BEQ
								BR_OPT = 0;
							end
						 3'b001 :begin //BNE
								BR_OPT = 1;
							end
						 3'b100 :begin //BLT
								BR_OPT = 2;
							end
						 3'b101 :begin //BGE
								BR_OPT = 3;
							end
						 3'b110 :begin 
								BR_OPT = 2;//BLTU ??
							end
						 3'b111 :begin 
								BR_OPT = 3;//BGEU ??
							end
					endcase
				  end
			7'b0000011 : begin //LSU - 03
					LSU_OPT = MEM_INST[14:12];//funct3
					IMM_TYPE = 3'b000;
					RS1_ADR = MEM_INST[19:15];
					REG_ADR = MEM_INST[11:7];
					//1. RS2_MUX for IMM
					RS2_MUX_SELECT = 3'b001;
					//2. ALU_OPT SUM
					ALU_OPT = 0;
					//3. ALU RESULT to LSU
					LSU_MUX_SELECT = 0;
					//4. REG MUX for LSU
					REG_MUX_SELECT = 3'b001;
					//5. write enable
					WRITE_ENB = 1;
				  end
			7'b0100011 : begin //LSU - 23
					IMM_TYPE = 3'b010; // s type
					RS1_ADR = MEM_INST[19:15];
					RS2_ADR = MEM_INST[24:20];
					REG_ADR = MEM_INST[11:7];
					RS2_MUX_SELECT = 3'b001;
					case (MEM_INST[14:12])//funct3
						 3'b000 :begin 
								LSU_OPT = 3b'101;
							end
						 3'b001 :begin 
								LSU_OPT = 3b'110;
							end
						 3'b010 :begin 
								LSU_OPT = 3b'111;
							end
					endcase
					MEM_WRITE_ENB = 1;
				  end
			7'b0010011 : begin //ALU 13
					RS1_ADR = MEM_INST[19:15];
					REG_ADR = MEM_INST[11:7];
					IMM_TYPE = 3'b000;
					RS1_MUX_SELECT=0;
					RS2_MUX_SELECT=1;
					REG_MUX_SELECT=0;
					case (MEM_INST[14:12])//funct3
						 3'b000 :begin //ADDI
								ALU_OPT = 0;
							end
						 3'b010 :begin //SLTI
								ALU_OPT = 3;
							end
						 3'b011 :begin //SLTIU
								ALU_OPT = 4;
							end
						 3'b100 :begin //XORI
								ALU_OPT = 5;
							end
						 3'b110 :begin //ORI
								ALU_OPT = 8;
							end
						 3'b111 :begin //ANDI
								ALU_OPT = 9;
							end
						3'b001:begin //SLLI
								ALU_OPT = 2;
							end
						3'b101:begin
							if(MEM_INST[31:27]==5'b01000) //funct5
								begin//SRAI
									ALU_OPT = 7;
								end
							else if(MEM_INST[31:27]==0)
								begin//SRLI
									ALU_OPT = 6;
								end
						end
					endcase
					WRITE_ENB=1;
				  end
			7'b0110011 : begin //ALU 33
					 RS1_ADR = MEM_INST[19:15];
					 RS2_ADR=MEM_INST[24:20];
					 REG_ADR=MEM_INST[11:7];
					 RS1_MUX_SELECT=0;
					 RS2_MUX_SELECT=0;
					 REG_MUX_SELECT=0;
					case (MEM_INST[14:12]) //funct3
						 3'b000 : begin
								if(MEM_INST[31:27]==5'b01000) //funct5
									begin //SUB
									 ALU_OPT=1;	
									end
								else if(MEM_INST[31:27]==0)
									begin //ADD
									 ALU_OPT=0;
									end
						  end 
						 3'b001 :begin //SLL
								ALU_OPT=2;
							end
						 3'b010 :begin //SLT
								ALU_OPT=3;
							end
						 3'b011 :begin //SLTU
								ALU_OPT=4;
							end
						 3'b100 :begin //XOR
								ALU_OPT=5; 
							end
						 3'b101 : begin
								if(MEM_INST[31:27]==5'b01000)
									begin //SRA
										ALU_OPT=7;
									end
								else if(MEM_INST[31:27]==0)
									begin //SRL
										ALU_OPT=6;
									end
						  end 
						 3'b110 :begin //OR
								ALU_OPT=8;
							end
						 3'b111 :begin //AND
								ALU_OPT=9;
							end
					endcase
					WRITE_ENB=1;
				  end
			7'b0001111 : begin //CSR - 0F
					if(MEM_INST[14:12]==3'b000)//funct3
						begin
						end
					else if (MEM_INST[14:12]==3'b001)//funct3
						begin
						end
				  end
				  7'b1110011 : begin //CSR - 73
					case(MEM_INST[14:12])//funct3
						 3'b000 :begin
							  case(MEM_INST[24:20]) //funct2
									5'b00000:begin 
										end
									5'b00001:begin 
										end
									5'b00010:
										case(MEM_INST[31:25]) // funct 5
											 7'b0000000:begin 
												end
											 7'b0001000:begin 
												end
											 7'b0010000:begin 
												end
											 7'b0011000:begin 
												end
										endcase
									5'b10010:begin 
										end
									5'b00100:begin 
										end
									5'b00101:begin 
										end
								endcase
							end
						 3'b001 :begin 
							end
						 3'b010 :begin 
							end
						 3'b011 :begin 
							end
						 3'b101 :begin 
							end
						 3'b110 :begin 
							end
						 3'b111 :begin 
							end
					endcase
					end
		default : begin
				//nonexisting OP
			end
		endcase
		
		PC_CLK=1;
	end
end

endmodule
