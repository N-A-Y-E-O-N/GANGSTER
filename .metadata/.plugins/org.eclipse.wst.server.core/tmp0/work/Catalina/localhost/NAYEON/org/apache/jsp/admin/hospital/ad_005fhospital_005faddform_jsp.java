/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.64
 * Generated at: 2022-11-16 06:31:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin.hospital;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ad_005fhospital_005faddform_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/admin/hospital/../ad_layouts/hospitalJS", Long.valueOf(1665336219562L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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

      out.write('\r');
      out.write('\n');
String target = request.getParameter("target");
if (target == null) target = "../../layouts/null";
String targetPage = target + ".jsp";
      out.write("     \r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>admin_???????????? ????????????</title>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<script>\r\n");
      out.write("    function validateForm(hospital) { \r\n");
      out.write("        if (hospital.hos_name.value == \"\") {\r\n");
      out.write("            alert(\"???????????? ???????????????.\");\r\n");
      out.write("            hospital.hos_name.focus();\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("        if (hospital.hos_add.value == \"\") {\r\n");
      out.write("            alert(\"????????? ???????????????.\");\r\n");
      out.write("            hospital.hos_add.focus();\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("        if (hospital.hos_link.value == \"\") {\r\n");
      out.write("            alert(\"????????? ???????????????.\");\r\n");
      out.write("            hospital.hos_link.focus();\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("    }\r\n");
      out.write("</script>");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<form action=\"hospital/ad_hospital_add.jsp\" method=\"post\" name=\"hospital\" onsubmit=\"return validateForm(this);\">\r\n");
      out.write("<table style=\"width: 60%; font-family: 'Hahmlet', serif;\"  class=\"table table-striped table-hover\">\r\n");
      out.write("	<tr> \r\n");
      out.write("		<th> ?????????  </th> \r\n");
      out.write("		<td> <input type=\"text\" name=\"hos_name\" style=\"width: 250px; float: left;\" /> </td>		\r\n");
      out.write("	</tr>\r\n");
      out.write("\r\n");
      out.write("	<tr> \r\n");
      out.write("		<th> ??????  </th> \r\n");
      out.write("		<td> <input type=\"text\" name=\"hos_add\" style=\"width: 90%; float: left;\"/> </td>		\r\n");
      out.write("	</tr>\r\n");
      out.write("	\r\n");
      out.write("	<tr> \r\n");
      out.write("		<th> ??????  </th> \r\n");
      out.write("		<td> <input type=\"text\" name=\"hos_link\" style=\"width: 90%; float: left;\" /> </td>		\r\n");
      out.write("	</tr>		\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	<tr> \r\n");
      out.write("		<th> ???????????? </th> \r\n");
      out.write("		<td> <input type=\"text\" name=\"hos_tel\"style=\"width: 250px; float: left;\"/> </td>		\r\n");
      out.write("	</tr>\r\n");
      out.write("	\r\n");
      out.write("	<tr> \r\n");
      out.write("		<th> ??????  </th>\r\n");
      out.write("	<td><div style=\"float: left;\">\r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"weekend\"> ?????? \r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"mon\"> ??? \r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"tue\"> ??? \r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"wed\"> ??? \r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"thu\"> ??? \r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"fri\"> ??? \r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"sat\"> ??? \r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"sun\"> ???\r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_dayoff\" value = \"x\"> x  </div></td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	<tr> \r\n");
      out.write("		<th> ????????????  </th>\r\n");
      out.write("	<td><div style=\"float: left;\">\r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_details1\" value = \"24/7\"> 24??????\r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_details2\" value = \"salon\"> ??????\r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_details3\" value = \"hotel\"> ??????\r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_details4\" value = \"rehabilitation\"> ??????\r\n");
      out.write("		<input type=\"checkbox\" name=\"hos_details5\" value = \"surgery\"> ????????????</div></td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td colspan=\"2\" style=\"text-align: center;\"> \r\n");
      out.write("		<input type=\"submit\" class=\"btn btn-outline-secondary\" value=\"??????\"> \r\n");
      out.write("		<input type=\"reset\" class=\"btn btn-outline-secondary\" value=\"?????? ??????\"> \r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>	 \r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
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
