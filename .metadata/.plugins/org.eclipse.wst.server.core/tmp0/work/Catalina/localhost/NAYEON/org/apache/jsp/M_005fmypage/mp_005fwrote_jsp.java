/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.64
 * Generated at: 2022-11-16 02:42:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.M_005fmypage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import gang.DTOmangdog;
import java.util.List;
import gang.DAOmangdog;

public final class mp_005fwrote_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("gang.DAOmangdog");
    _jspx_imports_classes.add("gang.DTOmangdog");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP?????? ?????? GET, POST ?????? HEAD ??????????????? ???????????????. Jasper??? OPTIONS ????????? ?????? ???????????????.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("  h1,nav{font-family:  'Gaegu' !important;}\r\n");
      out.write("  .card-footer{text-align: left;}\r\n");
      out.write("  .card-img-top{height: 300px; padding: 8px;}\r\n");
      out.write("  .card{ font-size: 12px; }\r\n");
      out.write("  .container1{ position: relative; width: 250px; height: 350px; margin: 60px auto;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\" style=\"width: 80%; margin: auto;\">	\r\n");

request.setCharacterEncoding("UTF-8");


DAOmangdog dao = new DAOmangdog();
String mang_id = (String)session.getAttribute("id"); 
List<DTOmangdog> wroteList = dao.DTOwroteList(mang_id);
dao.close();

      out.write("\r\n");
      out.write("\r\n");
  for (DTOmangdog f : wroteList) {  
      out.write("\r\n");
      out.write("<div class=\"col\">\r\n");
      out.write("<div class=\"container1\">\r\n");
      out.write("<div class=\"card\" >\r\n");
      out.write("\r\n");
      out.write("  <!-- ????????? -->\r\n");
      out.write("  <form action=\"m_detail.jsp\">\r\n");
      out.write("  <input type=\"image\" src=\"mang_img/");
      out.print(f.getMang_pic_save());
      out.write("\" class=\"card-img-top\" > \r\n");
      out.write("  \r\n");
      out.write("  <!-- ?????? ??? ?????? -->\r\n");
      out.write("  <div class=\"card-body\">\r\n");
      out.write("  <h5 class=\"card-title\"> ");
      out.print(f.getMang_title() );
      out.write(" </h5>\r\n");
      out.write("  <p class=\"card-text\"> ");
      out.print(f.getMang_id() );
      out.write(" </p>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  <!-- input??? ????????? -->\r\n");
      out.write("  <input type=\"hidden\" id=\"mang_code\" name=\"mang_code\" value=\"");
      out.print(f.getMang_code());
      out.write("\">\r\n");
      out.write("  <input type=\"hidden\" id=\"mang_id\" name=\"mang_id\" value=\"");
      out.print(mang_id);
      out.write("\">\r\n");
      out.write("  <input type=\"hidden\" id=\"mang_title\" name=\"mang_title\" value=\"");
      out.print(f.getMang_title());
      out.write("\">\r\n");
      out.write("  <input type=\"hidden\" id=\"mang_content\" name=\"mang_content\" value=\"");
      out.print(f.getMang_content());
      out.write("\">\r\n");
      out.write("  <input type=\"hidden\" id=\"mang_date\" name=\"mang_date\" value=\"");
      out.print(f.getMang_date());
      out.write("\">\r\n");
      out.write("  <input type=\"hidden\" id=\"mang_pic_save\" name=\"mang_pic_save\" value=\"");
      out.print(f.getMang_pic_save());
      out.write("\">\r\n");
      out.write("  <input type=\"hidden\" id=\"mang_count\" name=\"mang_count\" value=\"");
      out.print(f.getMang_count() );
      out.write("\">\r\n");
      out.write("  <input type=\"hidden\" id=\"mang_like\" name=\"mang_like\" value=\"");
      out.print(f.getMang_like() );
      out.write("\">\r\n");
      out.write("  </div></form>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  <div class=\"card-footer\" >\r\n");
      out.write("        <small class=\"text-muted\">\r\n");
      out.write("        ");
      out.print(f.getMang_date());
      out.write("   &nbsp;&nbsp;\r\n");
      out.write("        \r\n");
      out.write("        <span style=\"float: right;\">\r\n");
      out.write("        <span> <img src=\"icon/count.png\" width=\"20px\" height=\"20px\" style=\"margin-right: 3px;\"> ");
      out.print(f.getMang_count());
      out.write(" &nbsp; </span>  \r\n");
      out.write("        <span> <img src=\"icon/heart_icon.png\" width=\"18px\" height=\"18px\" style=\"margin-right: 3px;\"> ");
      out.print(f.getMang_like());
      out.write(" </span>\r\n");
      out.write("        </span>\r\n");
      out.write("        \r\n");
      out.write("        </small>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("</div> \r\n");
      out.write("</div>  ");
} 
      out.write(" \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
