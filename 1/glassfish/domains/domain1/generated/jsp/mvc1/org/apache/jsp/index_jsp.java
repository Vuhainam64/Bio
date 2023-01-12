package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import models.Calculator;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      response.setHeader("X-Powered-By", "JSP/2.3");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Calculator</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String snum1 = request.getParameter("num1");
            String snum2 = request.getParameter("num2");
            if (snum1 != null && snum2 != null) {
                double num1 = Double.parseDouble(request.getParameter("num1"));
                double num2 = Double.parseDouble(request.getParameter("num2"));
                String op = request.getParameter("op");
                Calculator model = new Calculator(num1, num2, op);
                request.setAttribute("model", model);
            }


        
      out.write("\n");
      out.write("        <h1>Calculator</h1>\n");
      out.write("        <hr/>\n");
      out.write("        <form action=\"index.jsp\" method=\"post\">\n");
      out.write("            Num1:<br/>\n");
      out.write("            <input type=\"number\" step=\"0.01\" name=\"num1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${model.num1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/><br/>            \n");
      out.write("            Num2:<br/>\n");
      out.write("            <input type=\"number\" step=\"0.01\" name=\"num2\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${model.num2}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/><br/>\n");
      out.write("            <input type=\"submit\" name=\"op\" value=\"Add\"/>\n");
      out.write("            <input type=\"submit\" name=\"op\" value=\"Sub\"/>\n");
      out.write("            <input type=\"submit\" name=\"op\" value=\"Mul\"/>\n");
      out.write("            <input type=\"submit\" name=\"op\" value=\"Div\"/>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("        Result: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${model.result}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
