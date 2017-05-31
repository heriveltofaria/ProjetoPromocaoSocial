package br.com.promocaosocial.Controller;



import cras.service.UsuarioService;
import java.awt.List;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;
import scr.Usuario;

@Controller
public class WebController{   
    
    @RequestMapping("/index")
    public String getIndex() {  
        
        return "index";
    }
    
    @RequestMapping("/formCadastro")
    public String getFormCadastro(Model model) {  
       
        return "form/formCadastro";
    }

    @RequestMapping(value = "gravar", method = RequestMethod.POST)
    protected String getFormCadastro(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        String dat = request.getParameter("data");
        String[] div = dat.split("-");

        int ano = Integer.parseInt(div[0]);
        int mes = Integer.parseInt(div[1]);
        int dia = Integer.parseInt(div[2]);

        Date data = new Date(ano - 1900, mes - 1, dia);


        Usuario usu = new Usuario();
        usu.setId(295l);
        usu.setNomeresponsavel(request.getParameter("nome"));
        usu.setBairro(request.getParameter("bairro"));
        usu.setTelefone(request.getParameter("telefone"));
        usu.setData(data);
        usu.setPif(request.getParameter("pif"));
        UsuarioService us = new UsuarioService();
        
        
        us.create(usu);
        return "views/confirmacaoCadastro";
        
    }
    @RequestMapping(value = "listar", method = RequestMethod.GET)
    public String listarUsuario(Model model) throws Exception{
        UsuarioService us = new UsuarioService();
        java.util.List <Usuario> usuarioList = new ArrayList<>();
        usuarioList = us.readByAll();
        
        model.addAttribute("usuarioList",usuarioList);
        
       // model.addAttribute("nome", );
        
        
        return "views/listarUsuario" ;
        
        
    }
}
