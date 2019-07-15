delimiter //
DROP FUNCTION IF EXISTS fiscalizacao.buscarDataPedidoRenovacao //

create function fiscalizacao.buscarDataPedidoRenovacao (OUTORGA_num_proc_apac INT(11)) 
returns int
deterministic
begin
    declare dataPedidoRenovacao int;
    set dataPedidoRenovacao = 11229999;
	select data into dataPedidoRenovacao from pedido_renovacao where OUTORGA_num_proc_apac  = OUTORGA_num_proc_apac ;
	return dataPedidoRenovacao ;

end; //

