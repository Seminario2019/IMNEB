package perfiles;
import home.*;
import usuario.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class perfiles_crud {

      Servlet.Conexion conn =  new Servlet.Conexion();
  public perfiles_crud(){
  }
 

  public JSONArray usuarios(String usuario) {
         
     JSONArray list = new JSONArray();
    try {
      Connection con = conn.DBConect();
      Statement stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT id_user as id, rtrim(usuario) as usuario,rtrim(nombre)+' '+rtrim(apellido) as nombre" +
"                 ,rtrim(imagen) as imagen  ,email,sexo,telefono,celular" +
"                 FROM usuarios where usuario  =  '"+usuario+"' ");
      while(rs.next()){
            JSONObject obj=new JSONObject();
            obj.put("id", rs.getString("id"));
            obj.put("usuario", rs.getString("usuario"));
            obj.put("nombre", rs.getString("nombre"));
            obj.put("imagen", rs.getString("imagen"));
            obj.put("email", rs.getString("email"));
            obj.put("sexo", rs.getString("sexo"));
            obj.put("telefono", rs.getString("telefono"));
            obj.put("celular", rs.getString("celular"));
 
            list.put(obj);
        }
 
      rs.close();
      stmt.close();
      con.close();
    }catch (SQLException e){
      System.out.println("error: "+e.getMessage());
    }     catch (JSONException ex) {
              Logger.getLogger(perfiles_crud.class.getName()).log(Level.SEVERE, null, ex);
          }
    return list;
  }

 public JSONArray adperfil() {
         
     JSONArray list = new JSONArray();
    try {
      Connection con = conn.DBConect();
      Statement stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT id_user as id,rtrim(usuario) as usuario, rtrim(nombre) as nombre,rtrim(apellido) as apellido ,rtrim(imagen) as imagen,email,sexo,telefono,celular  FROM usuarios");
      while(rs.next()){
            JSONObject obj=new JSONObject();
            obj.put("id", rs.getString("id"));
            obj.put("usuario", rs.getString("usuario"));
            obj.put("nombre", rs.getString("nombre"));
            obj.put("apellido", rs.getString("apellido"));
            obj.put("avatar", rs.getString("imagen"));
            obj.put("email", rs.getString("email"));
            obj.put("sexo", rs.getString("sexo"));
            obj.put("celular", rs.getString("celular")); 
            obj.put("imagen", rs.getString("imagen"));
            
                 
            list.put(obj);
        }
 
      rs.close();
      stmt.close();
      con.close();
    }catch (SQLException e){
      System.out.println("error: "+e.getMessage());
    }     catch (JSONException ex) {
              Logger.getLogger(perfiles_crud.class.getName()).log(Level.SEVERE, null, ex);
          }
    return list;
  }
 
 
 public JSONArray crear(String usuario,String clave,String nombre,String apellido,String email,String imagen,String sexo,String telefono,String celular) {
       JSONArray list = new JSONArray();   
     String list1 = "[{\"mensaje\":\"uno\"}]";
     
    try {
      Connection con = conn.DBConect();
      Statement stmt1 = con.createStatement();
      int id = 0;
      ResultSet rs = stmt1.executeQuery("select max(id_user)+1 as id from usuarios; ");
      while(rs.next()){
            JSONObject obj=new JSONObject();
            id=rs.getInt("id");
            
        }
 
      rs.close();
      stmt1.close();      
      con.close();
      
      con = conn.DBConect();
      String query = "INSERT INTO usuarios VALUES  (?,?,?,?,?,?,?,?,?,?,?)";
           PreparedStatement stmt = con.prepareStatement(query);
                                stmt.setInt(1,id);
                                stmt.setString(2,usuario);
				stmt.setString(3,clave);
				stmt.setString(4,nombre);
				stmt.setString(5,apellido);
				stmt.setString(6,email);
				stmt.setString(7,"");
				stmt.setString(8,imagen);
				stmt.setString(9,sexo);
				stmt.setString(10,telefono);
				stmt.setString(11,celular);
				stmt.executeUpdate();
      stmt.close(); 
      con.close();
      JSONObject obj=new JSONObject();
            obj.put("mensaje", "uno");
            
                 
            list.put(obj);
    }catch (SQLException e){
      System.out.println("error: "+e.getMessage());
      JSONObject obj=new JSONObject();
           try {
               obj.put("mensaje", e.getMessage());
               list.put(obj);
           } catch (JSONException ex) {
               Logger.getLogger(perfiles_crud.class.getName()).log(Level.SEVERE, null, ex);
           }
    }     catch (JSONException ex) {
              Logger.getLogger(perfiles_crud.class.getName()).log(Level.SEVERE, null, ex);
          }
    return list;
  }
 
 
 public JSONArray actualiza_Clave(String usuario,String clave) {
       JSONArray list = new JSONArray();   
     
    try {
      Connection con = conn.DBConect();
      
       String query = "UPDATE usuarios set clave = ? WHERE usuario = ?";
      PreparedStatement stmt = con.prepareStatement(query);
                                stmt.setString(1,clave);
                                stmt.setString(2,usuario);
				stmt.executeUpdate();
      stmt.close();
      con.close();
      JSONObject obj=new JSONObject();
      
            obj.put("mensaje", "uno");
            
                 
            list.put(obj);
    }catch (SQLException e){
      System.out.println("error: "+e.getMessage());
      JSONObject obj=new JSONObject();
           try {
               obj.put("mensaje", e.getMessage());
               list.put(obj);
           } catch (JSONException ex) {
               Logger.getLogger(perfiles_crud.class.getName()).log(Level.SEVERE, null, ex);
           }
    }     catch (JSONException ex) {
              Logger.getLogger(perfiles_crud.class.getName()).log(Level.SEVERE, null, ex);
          }
    return list;
  }
}