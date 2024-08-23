// é tipo uma API. recebe a requisição http e devolve algo

package web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "index", urlPatterns = "/aula")
//esse método (doGet)responde o get do http
public class indexServlet extends HttpServlet {
    public void doGet( 
        HttpServletRequest request,
        HttpServletResponse response) throws
        ServletException, IOException{
            request.setAttribute("mensagem", "Palavra"); // "mensagem" é o nome do atributo, e "palavra" é o conteúdo
            // response.getWriter().print("Buuu");
            request.getRequestDispatcher("/WEB-INF/resposta.jsp").forward(request, response);
        }
}