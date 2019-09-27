/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package perfiles;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author usuario
 */
@WebServlet(name = "nueperfilSave", urlPatterns = {"/nueperfilSave"})
public class nueperfilSave extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        response.setContentType("text/html;charset=UTF-8");
        
        
String usuario = null ;
String clave = null ;
String nombre = null ;
String apellido = null ;
String email = null ;
String imagen = null ;
String sexo = null ;
String telefono = null ;
String celular = null ;
      
String datos[] = null ;

        StringBuilder sb = new StringBuilder();
        BufferedReader br = request.getReader();
         
        
        try {
            
            
            String str = null;
            while ((str = br.readLine()) != null) {
                sb.append(str);
            }
            JSONObject jObj = new JSONObject(sb.toString());
            
            usuario = jObj.getJSONObject("datos").getString("usuario");
            clave = jObj.getJSONObject("datos").getString("clave");
            nombre = jObj.getJSONObject("datos").getString("nombre");
            apellido = jObj.getJSONObject("datos").getString("apellido");
            email = jObj.getJSONObject("datos").getString("email");
            imagen = jObj.getJSONObject("datos").getString("imagen");
            sexo = jObj.getJSONObject("datos").getString("sexo");
            telefono = jObj.getJSONObject("datos").getString("telefono");
            celular = jObj.getJSONObject("datos").getString("celular");
      perfiles_crud crud = new perfiles_crud();
      
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println(crud.crear(usuario,clave,nombre,apellido,email,imagen,sexo,telefono,celular));
        }
        
                } catch (JSONException ex) {
            java.util.logging.Logger.getLogger(nueperfilSave.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
