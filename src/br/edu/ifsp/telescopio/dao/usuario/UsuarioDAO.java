package br.edu.ifsp.telescopio.dao.usuario;

import java.util.List;

import  br.edu.ifsp.telescopio.models.Usuario;

public interface UsuarioDAO {
	public void persist(Usuario entity);
	public void update(Usuario entity);	
    public Usuario findById(long id);
    public Usuario findByCod(Double cod);
    public Usuario findByEmail(String email);
    public void delete(Usuario entity);	     
    public List<Usuario> findAll();
}
