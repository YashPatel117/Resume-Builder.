import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.PrintWriter;
import static java.lang.System.out;
import jakarta.servlet.RequestDispatcher;

@MultipartConfig(
    fileSizeThreshold=1024*1024,  // 1MB
    maxFileSize=1024*1024*10,     // 10MB
    maxRequestSize=1024*1024*10)  // 10MB
public class Add extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            session.setMaxInactiveInterval(-1);

        String username = request.getParameter("username");
                        session.setAttribute("username", username);
        String fname = request.getParameter("fname");            
        String lname = request.getParameter("lname");
        String job = request.getParameter("job");
        String edu = request.getParameter("edu");
        String cf = request.getParameter("cf");
        String ct = request.getParameter("ct");
        String course = request.getParameter("course");
        String wf1 = request.getParameter("wf1");
        String wt1 = request.getParameter("wt1");
        String we1 = request.getParameter("we1");
        String cn1 = request.getParameter("cn1");
        String wf2 = request.getParameter("wf2");
        String wt2 = request.getParameter("wt2");
        String we2 = request.getParameter("we2");
        String cn2 = request.getParameter("cn2");
        String address = request.getParameter("address");
        String mo = request.getParameter("mo");
        String email = request.getParameter("email");
        String sk1 = request.getParameter("sk1");
        String sk1p = request.getParameter("sk1p");
        String sk2 = request.getParameter("sk2");
        String sk2p = request.getParameter("sk2p");
        String sk3 = request.getParameter("sk3");
        String sk3p = request.getParameter("sk3p");
        String sk4 = request.getParameter("sk4");
        String sk4p = request.getParameter("sk4p");
        String l1 = request.getParameter("l1");
        String l2 = request.getParameter("l2");
        String profile = request.getParameter("profile");
        

        // Get the uploaded file
        Part photoPart = request.getPart("photo");
        String photoFileName = username + ".jpg"; 
        String url = "image/" + photoFileName; 
        String photoFilePath = "C:\\Users\\yeshp\\Documents\\GitHub\\Resume-Builder\\Mini_Project_1\\web\\image\\" + photoFileName;
        // Save the file to the specified path
        boolean fileUploaded = false;
        try (InputStream photoInputStream = photoPart.getInputStream()) {
            Files.copy(photoInputStream, Paths.get(photoFilePath), StandardCopyOption.REPLACE_EXISTING);
            fileUploaded = true;
        } catch (IOException e) {
            // Handle the exception
            e.printStackTrace();
        }

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "123456");

            String query = "UPDATE details SET fname=?, lname=?, job=?, edu=?, cf=?, ct=?, course=?, wf1=?, wt1=?, we1=?, cn1=?, wf2=?, wt2=?, we2=?, cn2=?, address=?, mo=?, email=?, sk1=?, sk1p=?, sk2=?, sk2p=?, sk3=?, sk3p=?, sk4=?, sk4p=?, l1=?, l2=?, photo=? , profile=? WHERE username=?";

            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, fname);
            preparedStatement.setString(2, lname);
            preparedStatement.setString(3, job);
            preparedStatement.setString(4, edu);
            preparedStatement.setString(5, cf);
            preparedStatement.setString(6, ct);
            preparedStatement.setString(7, course);
            preparedStatement.setString(8, wf1);
            preparedStatement.setString(9, wt1);
            preparedStatement.setString(10, we1);
            preparedStatement.setString(11, cn1);
            preparedStatement.setString(12, wf2);
            preparedStatement.setString(13, wt2);
            preparedStatement.setString(14, we2);
            preparedStatement.setString(15, cn2);
            preparedStatement.setString(16, address);
            preparedStatement.setString(17, mo);
            preparedStatement.setString(18, email);
            preparedStatement.setString(19, sk1);
            preparedStatement.setString(20, sk1p);
            preparedStatement.setString(21, sk2);
            preparedStatement.setString(22, sk2p);
            preparedStatement.setString(23, sk3);
            preparedStatement.setString(24, sk3p);
            preparedStatement.setString(25, sk4);
            preparedStatement.setString(26, sk4p);
            preparedStatement.setString(27, l1);
            preparedStatement.setString(28, l2);
            preparedStatement.setString(29, url); 
            preparedStatement.setString(30, profile);
            preparedStatement.setString(31, username);

            if(preparedStatement.executeUpdate()!=0){
                out.println("yes");
            }

            preparedStatement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            // Handle the exception
            e.printStackTrace();
        }
        if(fileUploaded){
            RequestDispatcher dispatcher = request.getRequestDispatcher("select.jsp");
            dispatcher.forward(request, response);
        }
    }
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
