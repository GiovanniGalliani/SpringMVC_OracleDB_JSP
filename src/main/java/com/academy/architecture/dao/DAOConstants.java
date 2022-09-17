package com.academy.architecture.dao;

public interface DAOConstants {
	String SELECT_IMPIEGATO = "select * from impiegato";
	String INSERT_IMPIEGATO =  "insert into impiegato(nome, cognome, stipendio, reparto) values(?, ?, ?, ?)";
	String UPDATE_IMPIEGATO = "update impiegato set nome=?, cognome=?, stipendio=?, reparto=? where id_imp=?";
	String DELETE_IMPIEGATO = "delete from impiegato where id_imp=?";
	String SELECT_IMPIEGATO_BYID = "select * from impiegato where id_imp=?";
}