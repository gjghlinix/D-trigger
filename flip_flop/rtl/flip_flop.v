module flip_flop
(
	input wire sys_clock,
	input wire sys_rst_n,
	input wire key_in,
	
	output reg led_out
);
/* //同步复位

always@(posedge sys_clock)
	if(sys_rst_n == 1'b0)
		led_out <= 1'b0;
	else
		led_out <= key_in;
		 */
//异步复位		
always@(posedge sys_clock or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		led_out <= 1'b0;
	else
		led_out <= key_in;		
endmodule

//altera芯片最好使用异步复位，Xlilinx使用同步复位（结构决定）
