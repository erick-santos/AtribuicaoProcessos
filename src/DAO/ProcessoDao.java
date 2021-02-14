package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Contagem;
import model.Processo;

public class ProcessoDao {
	private Connection conexao;

	// ok
	public ProcessoDao() {
		conexao = new ConnectionFactory().getConnection();
	}

	// ok
	public void adicionarProcesso(Processo u) throws SQLException {
					
		String sql = "INSERT INTO tbl_Processo (numeroProcesso, linhaMaterial, eixoTematico, membroEquipe, data) VALUES (?,?,?,?,?)";
		try {

			PreparedStatement comando = conexao.prepareStatement(sql);
			comando.setString(1, u.getNumeroProcesso());
			comando.setString(2, u.getLinhaMaterial());
			comando.setString(3, u.getEixoTematico());
			comando.setString(4, u.getMembroEquipe());

			java.sql.Date dataSql = new java.sql.Date((u.getLd()).getTime());
			comando.setDate(5, dataSql);

			comando.execute();

			comando.close();
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	// ok
	public List<Processo> listarProcesso() {

		List<Processo> listaProcesso = new ArrayList<Processo>();
		String sql = "SELECT * FROM tbl_Processo";

		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			ResultSet rs = comando.executeQuery();
			while (rs.next()) {
				Processo p = new Processo();
				p.setId(rs.getInt("id"));
				p.setNumeroProcesso(rs.getString("numeroProcesso"));
				p.setLinhaMaterial(rs.getString("linhaMaterial"));
				p.setEixoTematico(rs.getString("eixoTematico"));
				p.setMembroEquipe(rs.getString("membroEquipe"));
				p.setLd(rs.getDate("data"));

				listaProcesso.add(p);
			}
			rs.close();

			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaProcesso;
	}

	// ok
	public void excluir(Processo u) {
		String sql = "DELETE FROM tbl_Processo WHERE id = ?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			comando.setInt(1, u.getId());
			comando.execute();

			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// ok
	public Processo selecionarProcessoById(int id) {

		conexao = new ConnectionFactory().getConnection();
		Processo p = new Processo();
		String sql = "SELECT * FROM tbl_Processo WHERE id = ?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			// comando.setInt(1, u.getId());
			comando.setInt(1, id);
			ResultSet rs = comando.executeQuery();

			rs.next();
			p.setId(rs.getInt("Id"));
			p.setNumeroProcesso(rs.getString("numeroProcesso"));
			p.setLinhaMaterial(rs.getString("linhaMaterial"));
			p.setEixoTematico(rs.getString("eixoTematico"));
			p.setMembroEquipe(rs.getString("membroEquipe"));
			p.setLd(rs.getDate("data"));

			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;

	}

	// ok
	public void alterarProcesso(Processo p) {
		String sql = "UPDATE tbl_Processo set numeroProcesso=?, linhaMaterial=?, eixoTematico=?, membroEquipe=?, data=? WHERE id=?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);

			comando.setString(1, p.getNumeroProcesso());
			comando.setString(2, p.getLinhaMaterial());
			comando.setString(3, p.getEixoTematico());
			comando.setString(4, p.getMembroEquipe());
			java.sql.Date dataSql = new java.sql.Date((p.getLd()).getTime());
			comando.setDate(5, dataSql);
			comando.setInt(6, p.getId());

			comando.execute();

			comando.close();
			conexao.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// ok
		public Processo confereNumeroProcesso(String numeroProcesso) {

			conexao = new ConnectionFactory().getConnection();
			Processo p = new Processo();
			String sql = "SELECT * FROM tbl_Processo WHERE numeroProcesso = ?";
			try {
				PreparedStatement comando = conexao.prepareStatement(sql);
				comando.setString(1, p.getNumeroProcesso());
				ResultSet rs = comando.executeQuery();

				rs.next();
				p.setNumeroProcesso(rs.getString("numeroProcesso"));
				

				comando.close();
				conexao.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return p;

		}

	// not working
	public void contagemPorPessoa() {
	}

}
