package sistema.dao;

import java.util.ArrayList;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import sistema.entidades.Penalidade;



public class PenalidadeTabela extends AbstractTableModel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ArrayList<Penalidade> dataList = new ArrayList<Penalidade>();
	private String[] columns={"Id", "Status", "Ja cobrado", "Descricao", "Valor da multa", "Tipo","Data adiamento","Data emissão","Data recebimento","Penalidade","Código do auto"};
	Class[] columnTypes = new Class[] {Object.class, Object.class, Object.class, Object.class, Object.class, Object.class,Object.class,Object.class,Object.class,Object.class,Object.class};
	boolean[] columnEditables = new boolean[] {false, false, false, false, false, false,false,false,false,false,false};
	
	public Class getColumnClass(int columnIndex) {
		return columnTypes[columnIndex];
	}
	
	public boolean isCellEditable(int row, int column) {
		return columnEditables[column];
	}
	
	public PenalidadeTabela() {

	}

	public PenalidadeTabela(List l) {
		dataList.addAll(l);
	}  

	public void addPenalidade(Penalidade se) {
		dataList.add(se);
		fireTableDataChanged();
	}

	public void addPenalidadeTabela_List(List l) {
		dataList.addAll(l);
		fireTableDataChanged();
	}
	
	public Penalidade getPenalidade(int row) {
		return dataList.get(row);
	} 
	
	public int getId(Penalidade se){
		Penalidade seTabela;
		for(int i = 0; i < dataList.size(); i++){
			seTabela = dataList.get(i);
			if(se.getIdPenalidade() == seTabela.getIdPenalidade()){
				return i;
			}
		}
		return -1;
	}

	public Penalidade removePenalidadeAt(int row) {
		Penalidade se;
		se = dataList.remove(row);
		fireTableDataChanged();
		return se;
	}
	
	public int getRowCount() {
		return dataList.size();
	}
	
	public int getColumnCount() {
		return columns.length;
	}

	public String getColumnName(int col) {
		return columns[col];
	}

	public Object getValueAt(int row, int col) {
		Penalidade se = dataList.get(row);
		switch (col) {
		case 0:
			return se.getIdPenalidade();
		case 1:
			return se.getStatus();
		case 2:
			return se.getJaCobrada();
		case 3:
			return se.getDescricao();
		case 4:
			return se.getValorMulta();
		case 5:
			return se.getTipo();
		case 6:
			return se.getDataAdiamento();
		case 7:
			return se.getDataEmissa();
		case 8:
			return se.getDataRecebimento();
		case 9:
			return se.getPenalidadeCol();
		case 10:
			return se.getAutoCodigo();
		default:
			return null;
		}
	}

}
