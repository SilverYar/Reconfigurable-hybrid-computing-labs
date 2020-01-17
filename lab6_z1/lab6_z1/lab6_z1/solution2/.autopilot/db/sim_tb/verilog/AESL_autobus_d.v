// =============================================================
// File generated by AutoESL - High-Level Synthesis System (C, C++, SystemC
// Version: 2012.
// Copyright (C) 2012 Xilinx Inc. All rights reserved
// 
// =============================================================
`timescale 1 ns / 1 ps
 
module AESL_autobus_d #(
	parameter DATA_WIDTH = 32'd32,
	parameter ADDR_WIDTH = 32'd32,
	parameter DEPTH = 32'd5,
	parameter FIFO_rsp_DEPTH = 32'd32,
	parameter FIFO_req_DEPTH = 32'd32,
	parameter mem_page_num = 32'd3) (
	input clk,
	input rst,
	input bus_req_RW,
	output bus_req_full_n,
	input bus_req_RW_en,
	output bus_rsp_empty_n,
	input bus_rsp_read,
	input [ADDR_WIDTH - 1:0] bus_address,
	input [DATA_WIDTH - 1:0] bus_din,
	output [DATA_WIDTH - 1:0] bus_dout,
	input [31:0] bus_size,
	input ready,
	input done,
	output reg finish);
	
	localparam TV_IN  = "c.foo.autotvin_d.dat";
	localparam TV_OUT = "impl_rtl.foo.autotvout_d.dat";
	
	reg [31:0] current_write_transaction = 0;
	reg [31:0] current_read_transaction = -1;
	
	always @ (negedge clk) begin
		if (ready == 1) begin
			current_read_transaction <= current_read_transaction + 1;
		end
	end
	
	always @ (posedge clk) begin
		if (done == 1) begin
			current_write_transaction <= current_write_transaction + 1;
		end
	end
	
	wire [31:0] current_req_transaction = (bus_req_RW) ? current_write_transaction : current_read_transaction;
	
	wire req_full;
	
	fifo #(FIFO_req_DEPTH, 1 + ADDR_WIDTH + DATA_WIDTH + 32 + 32) fifo_req (
		.reset(rst),
		.write_clock(clk),
		.write_en(bus_req_RW_en),
		.write_data({bus_req_RW, bus_address, bus_din, bus_size, current_req_transaction}),
		.read_clock(clk),
		.read_en(1'b0),
		.read_data(),
		.full(req_full),
		.empty());
	
	wire rsp_empty;
	
	fifo #(FIFO_rsp_DEPTH, DATA_WIDTH) fifo_rsp (
		.reset(rst),
		.write_clock(clk),
		.write_en(1'b0),
		.write_data({DATA_WIDTH{1'b0}}),
		.read_clock(clk),
		.read_en(bus_rsp_read),
		.read_data(bus_dout),
		.full(),
		.empty(rsp_empty));
	
	assign bus_req_full_n = ~req_full;
	assign bus_rsp_empty_n = ~rsp_empty;
	
	    reg [DATA_WIDTH - 1:0] mem_0 [0:DEPTH - 1];
	    reg [DATA_WIDTH - 1:0] mem_1 [0:DEPTH - 1];
	    reg [DATA_WIDTH - 1:0] mem_2 [0:DEPTH - 1];
	
	
	reg req_RW;
	reg [ADDR_WIDTH - 1:0] req_address;
	reg [DATA_WIDTH - 1:0] req_din;
	reg [31:0] req_size;
	reg [31:0] req_transaction;
	reg [DATA_WIDTH - 1:0] rsp_dout;
	
	reg pending_write;
	reg pending_read;
	reg [31:0] pending_size;
	reg [ADDR_WIDTH - 1:0] pending_address;
	reg [31:0] pending_transaction;
	
	event next_trigger_1;
	
	initial begin
		pending_write = 0;
		pending_read = 0;
		pending_size = 0;
		pending_address = 0;
		pending_transaction = 0;
		
		wait (rst === 0);
		forever begin
			@ (negedge clk);
			// burst write
			while (pending_write && ~fifo_req.empty) begin
				fifo_req.pop({req_RW, req_address, req_din, req_size, req_transaction});
				if (pending_address < DEPTH) begin
                                  case(req_transaction % mem_page_num)
					    0 : mem_0[pending_address] = req_din;
					    1 : mem_1[pending_address] = req_din;
					    2 : mem_2[pending_address] = req_din;
                                      default: $display("The page num of write is not valid");
                                  endcase
				end else begin
					$display("WARNING: burst write address %d >= bus depth: %d", pending_address, DEPTH);
				end
				pending_size = pending_size - 1;
				pending_address = pending_address + 1;
				if (pending_size == 0) begin
					pending_write = 0;
				end
			end
			// burst read
			while (pending_read && ~fifo_rsp.full) begin
				if (pending_address < DEPTH) begin
                                  case(req_transaction % mem_page_num)
					    0 : rsp_dout = mem_0[pending_address];
					    1 : rsp_dout = mem_1[pending_address];
					    2 : rsp_dout = mem_2[pending_address];
                                      default: $display("The page num of read is not valid");
                                  endcase
				end else begin
					rsp_dout = {DATA_WIDTH{1'b1}};
					$display("WARNING: burst read address %d >= bus depth: %d", pending_address, DEPTH);
				end
				fifo_rsp.push(rsp_dout);
				pending_size = pending_size - 1;
				pending_address = pending_address + 1;
				if (pending_size == 0) begin
					pending_read = 0;
				end
			end
			// proceed new request only idle
			while (~pending_write && ~pending_read && ~fifo_req.empty) begin
				fifo_req.pop({req_RW, req_address, req_din, req_size, req_transaction});
				if (req_size == 0) begin
					$display("WARNING: 0 request size");
				end else begin
					if (req_RW) begin // write request
						pending_write = 1;
						pending_read = 0;
						pending_size = req_size;
						pending_address = req_address;
						pending_transaction = req_transaction;
						if (pending_address < DEPTH) begin
                                                  case(pending_transaction % mem_page_num)
							    0 : mem_0[pending_address] = req_din;
							    1 : mem_1[pending_address] = req_din;
							    2 : mem_2[pending_address] = req_din;
                                                      default: $display("The page num of write is not valid");
                                                  endcase
						end else begin
							$display("WARNING: burst write address %d >= bus depth: %d", pending_address, DEPTH);
						end
						pending_size = pending_size - 1;
						pending_address = pending_address + 1;
						if (pending_size == 0) begin
							pending_write = 0;
						end
						while (pending_write && ~fifo_req.empty) begin
							fifo_req.pop({req_RW, req_address, req_din, req_size, req_transaction});
							if (pending_address < DEPTH) begin
                                                          case(pending_transaction % mem_page_num)
								    0 : mem_0[pending_address] = req_din;
								    1 : mem_1[pending_address] = req_din;
								    2 : mem_2[pending_address] = req_din;
                                                              default: $display("The page num of write is not valid");
                                                          endcase
							end else begin
								$display("WARNING: burst write address %d >= bus depth: %d", pending_address, DEPTH);
							end
							pending_size = pending_size - 1;
							pending_address = pending_address + 1;
							if (pending_size == 0) begin
								pending_write = 0;
							end
						end
					end else begin // read request
						pending_write = 0;
						pending_read = 1;
						pending_size = req_size;
						pending_address = req_address;
						pending_transaction = req_transaction;
						while (pending_read && ~fifo_rsp.full) begin
							if (pending_address < DEPTH) begin
                                                          case(pending_transaction % mem_page_num)
								    0 : rsp_dout = mem_0[pending_address];
								    1 : rsp_dout = mem_1[pending_address];
								    2 : rsp_dout = mem_2[pending_address];
                                                              default: $display("The page num of read is not valid");
                                                          endcase
							end else begin
								rsp_dout = {DATA_WIDTH{1'b1}};
								$display("WARNING: burst read address %d >= bus depth: %d", pending_address, DEPTH);
							end
							fifo_rsp.push(rsp_dout);
							pending_size = pending_size - 1;
							pending_address = pending_address + 1;
							if (pending_size == 0) begin
								pending_read = 0;
							end
						end
					end
				end
			end
			-> next_trigger_1;
		end // forever
	end // initial

	function is_blank_char(input [7:0] in_char);
	    if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
	        is_blank_char = 1;
	    end else begin
	        is_blank_char = 0;
	    end
	endfunction

	function [127:0] read_token(input integer fp);
	    integer ret;
	    begin
	        read_token = "";
	                ret = 0;
	                ret = $fscanf(fp,"%s",read_token);
	    end
	endfunction

	function [127:0] rm_0x(input [127:0] token);
	    reg [127:0] token_tmp;
	    integer i;
	    begin
	        token_tmp = "";
	        for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
	            token_tmp = (token[7:0] << (8 * i)) | token_tmp;
	            i = i + 1;
	        end
	        rm_0x = token_tmp;
	    end
	endfunction

reg done_1;
reg done_2;

always @ (posedge clk or rst) begin
	if (rst) begin
		done_1 <= 0;
		done_2 <= 0;
	end else begin
		done_1 <= done;
		done_2 <= done_1;
	end
end

event next_trigger_2;

reg [31:0] transaction_save;

initial begin : save_tvout_file
	integer fp;
	reg [100 * 8:1] str;
	integer i;
	integer mem_page;
	
	finish = 0;
	transaction_save = 0;
	wait (rst === 0);
	forever begin
		@ (next_trigger_1);
		if (done_1 == 1) begin
			if (transaction_save < 1) begin
				mem_page = transaction_save % mem_page_num;
				fp = $fopen(TV_OUT, "a");
				if (fp == 0) begin
					$display("Failed to open file \"%s\"!", TV_OUT);
					$finish;
				end
				$fdisplay(fp, "[[transaction]] %d", transaction_save);
				for (i = 0; i < DEPTH; i = i + 1) begin
                                  case(mem_page)
					    0 : $fdisplay(fp, "0x%x", mem_0[i]);
					    1 : $fdisplay(fp, "0x%x", mem_1[i]);
					    2 : $fdisplay(fp, "0x%x", mem_2[i]);
                                      default: $display("The page num of write file is not valid");
                                  endcase
				end
				$fdisplay(fp, "[[/transaction]]");
				transaction_save = transaction_save + 1;
				$fclose(fp);
				if (transaction_save == 1) begin
					finish = 1;
				end
			end
		end
		-> next_trigger_2;
	end
end

reg [31:0] transaction_load;

initial begin : load_tvin_file
	integer fp;
	integer ret;
	reg [127:0] token; 
	reg [8 * 5:1] str;
	integer mem_page;
	integer i;
	
	transaction_load = 0;
	wait (rst === 0);
	fp = $fopen(TV_IN, "r");
	if(fp == 0) begin 
		$display("Failed to open file \"%s\"!", TV_IN);
		$finish;
	end
	token = read_token(fp);
	if (token != "[[[runtime]]]") begin // Illegal format
		$display("ERROR: Simulation using HLS TB failed.");
		$finish;
	end
	token = read_token(fp);
	forever begin
		@ (next_trigger_2);
		if (ready == 1) begin
			if (token != "[[[/runtime]]]") begin
				if (token != "[[transaction]]") begin
					$display("ERROR: Simulation using HLS TB failed.");
					$finish; 
				end 
				token = read_token(fp); // skip transaction number
				mem_page = transaction_load % mem_page_num;
				for (i = 0; i < DEPTH; i = i + 1) begin
					token = read_token(fp);
                                  case(mem_page)
					    0 : ret = $sscanf(rm_0x(token), "%x", mem_0[i]);
					    1 : ret = $sscanf(rm_0x(token), "%x", mem_1[i]);
					    2 : ret = $sscanf(rm_0x(token), "%x", mem_2[i]);
                                      default: $display("The page num of read file is not valid");
                                  endcase
				end
				token = read_token(fp);
				if (token != "[[/transaction]]") begin
					$display("ERROR: Simulation using HLS TB failed.");
					$finish;
				end
				token = read_token(fp);
				transaction_load = transaction_load + 1;
			end
		end
		// trigger next
	end
	$fclose(fp);
end

endmodule
