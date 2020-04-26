package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class rollno_005fstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>RESULT PROCESSING SYSTEM</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <style>\n");
      out.write("            header{\n");
      out.write("                width: 100%;\n");
      out.write("                position: fixed;\n");
      out.write("                padding: 10px 0;\n");
      out.write("                background: blue;\n");
      out.write("                color: #fff;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            .after{\n");
      out.write("                margin: auto;\n");
      out.write("                position: absolute;\n");
      out.write("                top: 30%;\n");
      out.write("                left: 45%;\n");
      out.write("                margin-left: -100px;\n");
      out.write("                margin-top: -100px;\n");
      out.write("                padding: 30px 10px 10px 10px;\n");
      out.write("                border: 5px solid yellow;\n");
      out.write("                width: 420px;\n");
      out.write("                height: 520px;\n");
      out.write("                animation: color-me-in 1s infinite;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            @keyframes color-me-in{\n");
      out.write("                0%{\n");
      out.write("                    border: 5px solid red;\n");
      out.write("                }\n");
      out.write("                50%{\n");
      out.write("                    border: 5px solid green;\n");
      out.write("                }\n");
      out.write("                100%{\n");
      out.write("                    border: 5px solid blue;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header><h2><b>Result Processing System</b></h2></header>\n");
      out.write("    <center>\n");
      out.write("        <div clas=\"after\">\n");
      out.write("            <form action=\"modifystudent.jsp\">\n");
      out.write("                Enter your roll number:<input type=\"text\" name=\"roll\" required>\n");
      out.write("                SUBJECT:<select id=\"subject\" name=\"subject\">\n");
      out.write("                    <option value=\"english\">ENGLISH</option>\n");
      out.write("                    <option value=\"math\">MATHS</option>\n");
      out.write("                    <option value=\"chemistry\">CHEMISTRY</option>\n");
      out.write("                    <option value=\"physics\">PHYSICS</option>\n");
      out.write("                    <option value=\"ct\">COMPUTING TECHNIQUES</option>\n");
      out.write("                    <option value=\"ctlab\">CT LAB</option>\n");
      out.write("                    <option value=\"chemlab\">CHEMISTRY LAB</option>\n");
      out.write("                    <option value=\"phylab\">PHYSICS LAB</option>\n");
      out.write("                </select><br><br>\n");
      out.write("                <input type=\"submit\" value=\"PROCEED\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("</body>\n");
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
