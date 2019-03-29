package Filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class CountFilter implements Filter {

    private int count;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        try {
            String param = filterConfig.getInitParameter("count");
            count = Integer.valueOf(param);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        count++;
        HttpServletRequest req = (HttpServletRequest) request;
        ServletContext context = req.getSession().getServletContext();
        context.setAttribute("count", count);
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
