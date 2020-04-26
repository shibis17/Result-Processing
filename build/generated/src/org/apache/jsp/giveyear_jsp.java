package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class giveyear_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Result Processing System</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <h1>Comparison between years</h1>\n");
      out.write("    </center>\n");
      out.write("    <hr>\n");
      out.write("        <br><br>\n");
      out.write("    <center>\n");
      out.write("        <form action=\"compareyear.jsp\">\n");
      out.write("            <h2>Enter the years you want to compare with:</h2><br><br>\n");
      out.write("        Enter year 1:\n");
      out.write("        <input type=\"text\" name=\"year1\"><br><br>\n");
      out.write("        Enter year 2:\n");
      out.write("        <input type=\"text\" name=\"year2\" id=\"year2\"><br><br>\n");
      out.write("        SUBJECT:   <select id=\"subject\" name=\"subject\">\n");
      out.write("                        <option value=\"english\">ENGLISH</option>\n");
      out.write("                        <option value=\"math\">MATH</option>\n");
      out.write("                        <option value=\"chemistry\">CHEMISTRY</option>\n");
      out.write("                        <option value=\"physics\">PHYSICS</option>\n");
      out.write("                        <option value=\"ct\">COMPUTING TECHNIQUES</option>\n");
      out.write("                        <option value=\"ctlab\">CT LAB</option>\n");
      out.write("                        <option value=\"chemlab\">CHEMLAB</option>\n");
      out.write("                        <option value=\"phylab\">PHYSICSLAB</option>\n");
      out.write("                    </select><br><br>\n");
      out.write("        <br><br>\n");
      out.write("        <input type=\"submit\" value=\"COMPARE\">\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
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
