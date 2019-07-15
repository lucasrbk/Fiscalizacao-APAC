delimiter //
DROP FUNCTION IF EXISTS fiscalizacao.verificacaoIrregularidade //

delimiter :
create function fiscalizacao.verificacaoIrregularidade(OUTORGA_num_proc_apac int)
returns boolean
deterministic
begin
	declare data_validade date;
	
    
    select data_validade INTO data_validade from fiscalizaca.termo_de_outorga where OUTORGA_num_proc_apac = OUTORGA_num_proc_apac;		
	 if ( data_validade < CURDATE() )  then
return false;
else
return true;
end if;
	   end :