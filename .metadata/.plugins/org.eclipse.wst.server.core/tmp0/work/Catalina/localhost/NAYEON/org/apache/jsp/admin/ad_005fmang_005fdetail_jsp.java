/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.64
 * Generated at: 2022-11-16 03:10:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import gang.DTOlikely;
import gang.DAOlikely;
import java.util.List;
import gang.DTOcomments;
import gang.DAOcomments;
import gang.DTOmangdog;
import gang.DAOmangdog;

public final class ad_005fmang_005fdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/admin/ad_layouts/header", Long.valueOf(1668094138433L));
    _jspx_dependants.put("/admin/ad_layouts/sectionJS", Long.valueOf(1660635156000L));
    _jspx_dependants.put("/admin/ad_layouts/headerCSS", Long.valueOf(1660635156000L));
  }

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
    _jspx_imports_classes.add("gang.DAOlikely");
    _jspx_imports_classes.add("gang.DAOcomments");
    _jspx_imports_classes.add("gang.DTOmangdog");
    _jspx_imports_classes.add("gang.DTOlikely");
    _jspx_imports_classes.add("gang.DTOcomments");
    _jspx_imports_classes.add("java.util.ArrayList");
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>admin_주인없는 하늘아래</title>\r\n");
      out.write("<title>ì£¼ì¸ìë íëìë</title>\r\n");
      out.write("<!-- Required meta tags -->\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("<!-- Bootstrap CSS -->\r\n");
      out.write("	<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<!-- CSS -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/CSSmenu.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/CSSsection.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/CSSbanner.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/CSStab.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/CSShelp.css\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- ì¹ í°í¸ ì¤ì  -->\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Gaegu&family=Noto+Serif+KR&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("h1, nav {font-family: 'Gaegu' !important;}\r\n");
      out.write("table {font-family: 'Hahmlet', serif; font-size: 15px; }\r\n");
      out.write("td {text-align: left;}\r\n");
      out.write("th {width: 20%;}</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<!-- header -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- header -->\r\n");
      out.write("\r\n");
      out.write("<!-- 상단 로고  -->\r\n");
      out.write(" <h1 style=\"text-align: center;\"><a href=\"ad_main.jsp\"> <img src=\"../icon/m_logo.png\" width=\"100\" height=\"100\"></a> </h1>\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("<!-- 로그인/회원가입/로그아웃/마이페이지  -->\r\n");
//1.한글처리, 파라미터 
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");
String name = request.getParameter("name");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" <div style=\"position:absolute; right:20px; top:60px;\"> ");
      out.print(id);
      out.write(" 님 환영합니다 </div>\r\n");
      out.write(" <a href=\"../logout.jsp\"><div style=\"position:absolute; right:80px; top:80px;\">  로그아웃  |  </div></a> \r\n");
      out.write(" <a href=\"ad_manage.jsp\"><div style=\"position:absolute; right:20px; top:80px;\">  회원관리 </div></a>\r\n");
      out.write("<hr>\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- 메뉴 -->\r\n");
      out.write("<nav>\r\n");
      out.write("   <!-- 메뉴 버튼 디자인  -->\r\n");
      out.write("   <div class=\"menu-btn\" >\r\n");
      out.write("      <div class=\"line line__1\"></div>\r\n");
      out.write("      <div class=\"line line__2\"></div>\r\n");
      out.write("      <div class=\"line line__3\"></div>\r\n");
      out.write("   </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <ul class=\"nav-links\">\r\n");
      out.write("      <a href=\"ad_adopt.jsp\"> <li class=\"link\"> 입양 </li> </a>\r\n");
      out.write("	  <a href=\"ad_support.jsp\"> <li class=\"link\"> 후원 </li> </a>\r\n");
      out.write("	  <a href=\"ad_hospital.jsp\"> <li class=\"link\"> 동물병원 </li> </a>\r\n");
      out.write("	  <a href=\"ad_mangdog.jsp\"> <li class=\"link\"> MANGDOG CONTEST </li> </a>\r\n");
      out.write("	  <a href=\"ad_withdog.jsp\"> <li class=\"link\"> WITH DOG </li> </a>    \r\n");
      out.write("	</ul>  	  \r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<!-- 메뉴 JS 설정 -->\r\n");
      out.write("<script  src=\"../JS/JSmenu.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<section style=\"margin-top: -950px; margin-bottom: 2000px;\">\r\n");
      out.write("		");

		request.setCharacterEncoding("UTF-8");
		String id1 = (String) session.getAttribute("id");
				
		String mang_code = request.getParameter("mang_code");
		String mang_title = request.getParameter("mang_title");
		String mang_id = request.getParameter("mang_id");
		String mang_content = request.getParameter("mang_content");
		String mang_pic = request.getParameter("mang_pic");
		String mang_pic_save = request.getParameter("mang_pic_save");
		String mang_date = request.getParameter("mang_date");
		String mang_count = request.getParameter("mang_count");
		String mang_like = request.getParameter("mang_like");

		DAOmangdog dao = new DAOmangdog();

		dao.mangCount(mang_code);
		DTOmangdog dto = dao.getMang(mang_code);
		
		DAOcomments daoC = new DAOcomments();
		List<DTOcomments> commList = daoC.DTOcommList(mang_code);
		dao.close();
		
		DAOlikely daoL = new DAOlikely();
		ArrayList<DTOlikely> Likelist = daoL.mangLike(id, mang_code);
		
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<div style=\"width: 80%; margin: auto;\">\r\n");
      out.write("			<table class=\"table table-bordered\" style=\"width: 80%; margin: auto;\">\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>제목</th>\r\n");
      out.write("					<td colspan=\"3\">");
      out.print(mang_title);
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>작성자</th>\r\n");
      out.write("					<td colspan=\"3\">");
      out.print(mang_id);
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>작성일</th>\r\n");
      out.write("					<td>");
      out.print(mang_date);
      out.write("</td>\r\n");
      out.write("					<th>조회수</th>\r\n");
      out.write("					<td>");
      out.print(mang_count);
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td colspan=\"4\"><br>");
      out.print(mang_content);
      out.write(" <br> <br>\r\n");
      out.write("						<img src=\"../mang_img/");
      out.print(mang_pic_save);
      out.write("\" height=\"40%\" width=\"40%\"\r\n");
      out.write("						class=\"rounded\"><br> <br></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</table><br><br>\r\n");
      out.write("			\r\n");
      out.write("			\r\n");
      out.write("		<!--  좋아요 -->\r\n");
      out.write("		<form action=\"\">\r\n");
      out.write("			<input type=\"hidden\" id=\"mang_code\" name=\"mang_code\" value=\"");
      out.print(mang_code);
      out.write("\"> \r\n");
      out.write("			\r\n");
      out.write("			<button type=\"button\"><img src=\"../icon/heart.png\" width=\"70px\" height=\"70px\" > </button> <br>\r\n");
      out.write("			");
      out.print(mang_like );
      out.write("\r\n");
      out.write("		</form>\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("		\r\n");
      out.write("		<!-- 댓글 목록 -->\r\n");
      out.write("		<div style=\"width: 80%; margin: auto;\"> <br><br>\r\n");
      out.write("\r\n");
      out.write("			<table class=\"table table-hover\">\r\n");
      out.write("				");
 for (DTOcomments f : commList) { 
					String comm_code =  f.getComm_code();
				
      out.write("\r\n");
      out.write("				\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td width=\"15%\"> \r\n");
      out.write("						<b> ");
      out.print(f.getId() );
      out.write(" </b> <br> ");
      out.print(f.getComm_date() );
      out.write("\r\n");
      out.write("					</td>\r\n");
      out.write("					<td> \r\n");
      out.write("						");
      out.print(f.getComm_comment() );
      out.write("\r\n");
      out.write("					</td>	\r\n");
      out.write("					<td>\r\n");
      out.write("							<form action=\"mangdog/ad_commDelete.jsp\">\r\n");
      out.write("							<input type=\"hidden\" id=\"comm_code\" name=\"comm_code\" value=\"");
      out.print(comm_code);
      out.write("\">\r\n");
      out.write("							<button type=\"submit\" class=\"btn btn-link\" style=\"font-size: 15px; color:#404040;  float: right; vertical-align: top; width: 60px; \"> 삭제 </button>\r\n");
      out.write("							</form>\r\n");
      out.write("					\r\n");
      out.write("					</td>\r\n");
      out.write("				</tr>	\r\n");
      out.write("					\r\n");
      out.write("			");
 }
      out.write("\r\n");
      out.write("			</table>\r\n");
      out.write("		\r\n");
      out.write("			\r\n");
      out.write("			<!-- 댓글 작성란  -->\r\n");
      out.write("			<form action=\"mangdog/ad_commAdd.jsp\">\r\n");
      out.write("			<table class=\"table table-light\">\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td> \r\n");
      out.write("						<input type=\"text\" id=\"comm_comment\" name=\"comm_comment\" style=\"width: 1100px; height: 80px;\">\r\n");
      out.write("					</td>\r\n");
      out.write("					\r\n");
      out.write("					<td width=\"80px\"> \r\n");
      out.write("						<button type=\"submit\" class=\"btn btn-outline-secondary\" style=\"width: 80px; height: 80px;\">작성</button>	 \r\n");
      out.write("					</td>\r\n");
      out.write("			</table>\r\n");
      out.write("			\r\n");
      out.write("			\r\n");
      out.write("			<input type=\"hidden\" id=\"mang_code\" name=\"mang_code\" value=\"");
      out.print(mang_code );
      out.write("\">\r\n");
      out.write("			<input type=\"hidden\" id=\"id\" name=\"id\" value=\"");
      out.print(id);
      out.write("\">	\r\n");
      out.write("			</form>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<div style=\"float: right;\">\r\n");
      out.write("			<form action=\"mangdog/ad_deletepro.jsp\">\r\n");
      out.write("				<input type=\"hidden\" id=\"mang_code\" name=\"mang_code\" value=\"");
      out.print(mang_code );
      out.write("\">\r\n");
      out.write("				<button type=\"submit\" class=\"btn btn-outline-secondary\" onclick=\"if(!confirm('삭제하시면 복구하실 수 없습니다. \\n 정말로 삭제하시겠습니다?')) {return false;};\">삭제</button>\r\n");
      out.write("			</form>\r\n");
      out.write("		</div>\r\n");
      out.write("			\r\n");
      out.write("			\r\n");
      out.write("			\r\n");
      out.write("</div><br><br><br>\r\n");
      out.write("<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>\r\n");
      out.write("<script  src=\"../JS/JStab.js\"></script>\r\n");
      out.write("<!-- Option 1: Bootstrap Bundle with Popper -->\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>");
      out.write("\r\n");
      out.write("</section>   \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
