package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Processo;

public class ProcessoDao {
	private Connection conexao;

	public ProcessoDao() {
		conexao = new ConnectionFactory().getConnection();
	}

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

	public void excluir(Processo u) {
		String sql = "DELETE FROM tbl_Processo WHERE id = ?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			comando.setInt(1, u.getId());
			comando.execute();
			comando.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Processo selecionarProcessoById(int id) {
		//String sql = "SELECT * FROM tbl_USUARIO WHERE id = ?";
		conexao = new ConnectionFactory().getConnection();
		Processo u = new Processo();
		String sql = "SELECT * FROM tbl_Processo WHERE id = ?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			//comando.setInt(1, u.getId());
			comando.setInt(1, id);
			ResultSet rs = comando.executeQuery();

			rs.next();
			u.setId(rs.getInt("Id"));
			u.setNome(rs.getString("nome"));
			u.setEmail(rs.getString("email"));
			u.setSenha(rs.getString("senha"));
			u.setTipo(rs.getString("tipo"));
			//u.setEstabelecimento((Estabelecimento) rs.getObject("estabelecimento"));

			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;

	}
	
	public Processo selecionarUltimoUsuarioAdicionado() {
		//String sql = "SELECT * FROM tbl_USUARIO WHERE id = ?";
		Processo u = new Processo();
		String sql = "SELECT MAX(id) FROM tbl_USUARIO";
		try {
			conexao = new ConnectionFactory().getConnection();
			PreparedStatement comando = conexao.prepareStatement(sql);
			ResultSet rs = comando.executeQuery();
			rs.next();
			
			String sql_ultimoUsuario = "SELECT * FROM tbl_Usuario WHERE id = ?";
			PreparedStatement comando_ultimoUsuario = conexao.prepareStatement(sql_ultimoUsuario);
			comando_ultimoUsuario.setInt(1, rs.getInt(1));
			ResultSet rs_ultimoUsuario = comando_ultimoUsuario.executeQuery();
			rs_ultimoUsuario.next();
			
			u.setId(rs_ultimoUsuario.getInt("id"));
			u.setNome(rs_ultimoUsuario.getString("nome"));
			//u.setEmail(rs_ultimoUsuario.getString("email"));
			//u.setSenha(rs_ultimoUsuario.getString("senha"));
			u.setTipo(rs_ultimoUsuario.getString("tipo"));
			//u.setEstabelecimento((Estabelecimento) rs.getObject("estabelecimento"));

			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;

	}

	public void alterarProcesso(Processo p) {
		String sql = "UPDATE tbl_Processo set numeroProcesso=?, linhaMaterial=?, eixoTematico=?, membroEquipe=? WHERE id=?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);

			comando.setInt(1, p.getId());
			comando.setString(2, p.getNumeroProcesso());
			comando.setString(3, p.getLinhaMaterial());
			comando.setString(4, p.getEixoTematico());
			comando.setString(5, p.getMembroEquipe());

			comando.execute();
			comando.close();
			conexao.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
