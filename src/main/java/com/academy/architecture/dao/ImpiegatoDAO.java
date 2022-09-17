package com.academy.architecture.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.academy.businesscomponent.model.Impiegato;

public class ImpiegatoDAO implements DAOConstants{
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public int create(Impiegato imp) {
		return jdbcTemplate.update(
				INSERT_IMPIEGATO,
				new Object[] {imp.getNome(), imp.getCognome(), imp.getStipendio(), imp.getReparto()}
				);
	}
	
	public int update(Impiegato i) {
		return jdbcTemplate.update(UPDATE_IMPIEGATO, 
				new Object[] {i.getNome(), i.getCognome(), i.getStipendio(), i.getReparto(), i.getId()});

	}
	
	public int delete(long id) {
		return jdbcTemplate.update(DELETE_IMPIEGATO, new Object[] {id});
	}
	 
	public Impiegato getById(long id) {
		return jdbcTemplate.queryForObject(SELECT_IMPIEGATO_BYID, new Object[] {id},
				new BeanPropertyRowMapper<Impiegato>(Impiegato.class));
	}
	
	public List<Impiegato> getImpiegati() {
		return jdbcTemplate.query(SELECT_IMPIEGATO, new RowMapper<Impiegato>() {
			@Override
			public Impiegato mapRow(ResultSet rs, int rigaCorrente) throws SQLException {
				Impiegato imp = new Impiegato();
				imp.setId(rs.getLong(1));
				imp.setNome(rs.getString(2));
				imp.setCognome(rs.getString(3));
				imp.setStipendio(rs.getDouble(4));
				imp.setReparto(rs.getString(5));
				return imp;
			}
		});
	}
	
	
	
}
