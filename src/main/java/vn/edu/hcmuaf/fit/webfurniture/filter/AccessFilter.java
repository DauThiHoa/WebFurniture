package vn.edu.hcmuaf.fit.webfurniture.filter;

import javax.servlet.*;
import java.io.IOException;

//@WebFilter(filterName = "AccessFilter" , value = "/manage/*")
public class AccessFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
//        HttpSession session = ((HttpServletRequest) request).getSession();
//        if ( session.getAttribute("auth") == null || ((User) session.getAttribute("auth")).getRole() < 1 ) {
//            ((HttpServletResponse) response).sendRedirect("/WebFurniture_war_exploded/login.jsp");
//            ((HttpServletResponse) response).sendRedirect("/WebFurniture_war_exploded/DangNhap/login");
//         return;
//        }
//        chain.doFilter(request, response);
    }
}
