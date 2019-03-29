import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddServlet")
public class AddServlet extends HttpServlet {

    private static final long esrialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String author = request.getParameter("author");
        String price = request.getParameter("price");
        out.print("<h2>图书信息添加成功</h2><br>");
        out.print("图书编号:" + id + "<br>");
        out.print("图书名称" + name + "<br>");
        out.print("作者:" + author + "<br>");
        out.print("价格" + price + "<br>");
        out.flush();
        out.close();
    }
}
