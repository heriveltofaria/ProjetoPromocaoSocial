/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import cras.HibernateUtil;
import cras.service.UsuarioService;
import java.sql.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import scr.Usuario;

/**
 *
 * @author Herivelto
 */
public class JUnitTest {

    public JUnitTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    @Test
    public void create() throws Exception {
        Usuario usu = new Usuario();
        int ano = 2017;
        int mes = 04;
        int dia = 20;

        Date data = new Date(ano - 1900, mes - 1, dia);
        usu.setId(5l);
        usu.setNomeresponsavel("joao");
        usu.setBairro("ded");
        usu.setPif("sim");
        usu.setTelefone("fdvfvssfds");
        usu.setData(data);

        UsuarioService us = new UsuarioService();
        us.create(usu);
    }
    
    //@Test
    public void delete() throws Exception {
        UsuarioService us = new UsuarioService();
        us.delete(12l);
    }

    //@Test
    public void readAll() throws Exception {
        UsuarioService ps = new UsuarioService();
        List<Usuario> usuarioList = ps.readByAll();

        usuarioList.stream().map((usuario) -> {
            System.out.println("Codigo do Usuario: " + usuario.getId());
            return usuario;
        }).map((usuario) -> {
            System.out.println("Nome do Responsável: " + usuario.getNomeresponsavel());
            return usuario;
        }).map((usuario) -> {
            System.out.println("Bairro: " + usuario.getBairro());
            return usuario;
        }).map((usuario) -> {
            System.out.println("Telefone: " + usuario.getTelefone());
            return usuario;
        }).map((usuario) -> {
            System.out.println("Data: " + usuario.getData());
            return usuario;
        }).forEachOrdered((usuario) -> {
            System.out.println("PIF: " + usuario.getPif());
        });
    }

    //@Test
    public void update() throws Exception {
        int ano = 2007;
        int mes = 04;
        int dia = 10;

        Date data = new Date(ano - 1900, mes - 1, dia);

        UsuarioService ps = new UsuarioService();
        Usuario usuario = new Usuario();
        usuario.setId(13l);
        usuario.setNomeresponsavel("MAriah");
        usuario.setData(data);
        usuario.setBairro("Bicas");
        usuario.setPif("sim");
        usuario.setTelefone("55555544");

        ps.update(usuario);

    }

   // @Test
    public void readById() throws Exception {
        UsuarioService us = new UsuarioService();
        Usuario usuario = us.readById(13l);

        System.out.println("Codigo do Usuario: " + usuario.getId());
        System.out.println("Nome do Responsável: " + usuario.getNomeresponsavel());
        System.out.println("Bairro: " + usuario.getBairro());
        System.out.println("Telefone: " + usuario.getTelefone());
        System.out.println("Data: " + usuario.getData());
        System.out.println("PIF: " + usuario.getPif());

    }
}
