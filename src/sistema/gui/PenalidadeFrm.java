package sistema.gui;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTable;
import java.awt.FlowLayout;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JTextArea;
import javax.swing.JTextPane;
import javax.swing.DropMode;
import java.awt.TextArea;

public class PenalidadeFrm extends JFrame {

	private JPanel contentPane;
	private JTable tablePenalidade;
	private JTextField idPenalidade;
	private JTextField status;
	private JTextField jaCobrado;
	private JTextField valorMulta;
	private JTextField tipo;
	private JTextField dataAdiamento;
	private JTextField dataEmissao;
	private JTextField dataRecebimento;
	private JTextField penalidadeCol;
	private JTextField autoCodigo;
	private JButton btnBuscar;
	private JButton btnExcluir;
	private JButton btnAlterar;
	private JButton btnAdicionar;
	private JButton btnSair;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					PenalidadeFrm frame = new PenalidadeFrm();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public PenalidadeFrm() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 687, 416);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		tablePenalidade = new JTable();
		tablePenalidade.setFillsViewportHeight(true);
		tablePenalidade.setBounds(0, 219, 661, 169);
		contentPane.add(tablePenalidade);
		
		
		idPenalidade = new JTextField();
		idPenalidade.setBounds(141, 35, 96, 20);
		contentPane.add(idPenalidade);
		idPenalidade.setColumns(10);
		
		status = new JTextField();
		status.setText("");
		status.setBounds(141, 81, 96, 20);
		contentPane.add(status);
		status.setColumns(10);
		
		jaCobrado = new JTextField();
		jaCobrado.setBounds(247, 81, 96, 20);
		contentPane.add(jaCobrado);
		jaCobrado.setColumns(10);
		
		valorMulta = new JTextField();
		valorMulta.setBounds(353, 81, 96, 20);
		contentPane.add(valorMulta);
		valorMulta.setColumns(10);
		
		tipo = new JTextField();
		tipo.setBounds(459, 81, 96, 20);
		contentPane.add(tipo);
		tipo.setColumns(10);
		
		dataAdiamento = new JTextField();
		dataAdiamento.setBounds(24, 81, 96, 20);
		contentPane.add(dataAdiamento);
		dataAdiamento.setColumns(10);
		
		dataEmissao = new JTextField();
		dataEmissao.setBounds(24, 131, 96, 20);
		contentPane.add(dataEmissao);
		dataEmissao.setColumns(10);
		
		dataRecebimento = new JTextField();
		dataRecebimento.setBounds(141, 131, 96, 20);
		contentPane.add(dataRecebimento);
		dataRecebimento.setColumns(10);
		
		penalidadeCol = new JTextField();
		penalidadeCol.setBounds(247, 131, 96, 20);
		contentPane.add(penalidadeCol);
		penalidadeCol.setColumns(10);
		
		autoCodigo = new JTextField();
		autoCodigo.setBounds(565, 81, 96, 20);
		contentPane.add(autoCodigo);
		autoCodigo.setColumns(10);
		
		JLabel idpenalidade = new JLabel("ID da penalidade");
		idpenalidade.setBounds(141, 15, 96, 14);
		contentPane.add(idpenalidade);
		
		JLabel lblNewLabel = new JLabel("Status");
		lblNewLabel.setBounds(140, 56, 48, 14);
		contentPane.add(lblNewLabel);
		
		JLabel lblJaCobrado = new JLabel("Ja cobrado?");
		lblJaCobrado.setBounds(247, 56, 96, 14);
		contentPane.add(lblJaCobrado);
		
		JLabel lblValorDaMulta = new JLabel("Valor da multa");
		lblValorDaMulta.setBounds(353, 56, 96, 14);
		contentPane.add(lblValorDaMulta);
		
		JLabel lblTipo = new JLabel("Tipo");
		lblTipo.setBounds(459, 56, 96, 14);
		contentPane.add(lblTipo);
		
		JLabel lblDataAdiamento = new JLabel("Codigo do auto");
		lblDataAdiamento.setBounds(565, 56, 96, 14);
		contentPane.add(lblDataAdiamento);
		
		JLabel lblDataDoAdiamento = new JLabel("Data do adiamento");
		lblDataDoAdiamento.setBounds(24, 56, 96, 14);
		contentPane.add(lblDataDoAdiamento);
		
		JLabel lblNewLabel_1 = new JLabel("Data da emissao");
		lblNewLabel_1.setBounds(24, 112, 96, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblDataDoRecebimento = new JLabel("Data recebimento");
		lblDataDoRecebimento.setBounds(141, 112, 96, 14);
		contentPane.add(lblDataDoRecebimento);
		
		JLabel lblPenalidadecol = new JLabel("PenalidadeCol");
		lblPenalidadecol.setBounds(247, 112, 96, 14);
		contentPane.add(lblPenalidadecol);
		
		JLabel lblDescricao = new JLabel("Descri\u00E7\u00E3o");
		lblDescricao.setBounds(424, 112, 189, 14);
		contentPane.add(lblDescricao);
		
		btnBuscar = new JButton("Buscar");
		btnBuscar.setBounds(24, 162, 89, 23);
		contentPane.add(btnBuscar);
		
		btnExcluir = new JButton("Excluir");
		btnExcluir.setBounds(123, 162, 89, 23);
		contentPane.add(btnExcluir);
		
		btnAlterar = new JButton("Alterar");
		btnAlterar.setBounds(222, 162, 89, 23);
		contentPane.add(btnAlterar);
		
		btnAdicionar = new JButton("Adicionar");
		btnAdicionar.setBounds(325, 162, 89, 23);
		contentPane.add(btnAdicionar);
		
		btnSair = new JButton("Sair");
		btnSair.setBounds(7, 11, 89, 23);
		contentPane.add(btnSair);
		
		TextArea descricao = new TextArea();
		descricao.setBounds(424, 131, 237, 83);
		contentPane.add(descricao);
	}
}
