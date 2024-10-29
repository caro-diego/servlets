/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ejemplo;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author karen
 */
@WebServlet("/ProcesarFormulario")
public class Formulario extends HttpServlet {

    private static final String Usuario_Validado = "Juliana";
    private static final String Clave_Validado = "2233";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Usuario = request.getParameter("Usuario");
        String Clave = request.getParameter("Clave");

        if (Usuario_Validado.equals(Usuario) && Clave_Validado.equals(Clave)) {
            request.getRequestDispatcher("bienvenida.jsp").forward(request, response);

        } else {
            request.setAttribute("error", "Usuario o clave incorrecta");
            request.setAttribute("error exist", true);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }

    }

}