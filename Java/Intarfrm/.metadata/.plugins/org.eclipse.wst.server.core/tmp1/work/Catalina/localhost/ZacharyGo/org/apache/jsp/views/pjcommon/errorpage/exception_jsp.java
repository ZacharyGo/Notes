/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.45
 * Generated at: 2021-12-13 10:08:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.pjcommon.errorpage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class exception_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/WEB-INF/ifm-tags.tld", Long.valueOf(1639376588000L));
    _jspx_dependants.put("jar:file:/D:/Practice/Java/Intarfrm/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/ZacharyGo/WEB-INF/lib/standard.jar!/META-INF/fmt.tld", Long.valueOf(1098682290000L));
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1639376588000L));
    _jspx_dependants.put("jar:file:/D:/Practice/Java/Intarfrm/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/ZacharyGo/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098682290000L));
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fq_005fgetProgramCommonResource_0026_005ftargetKey_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fq_005fgetExceptionMsg_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fq_005fgetExceptionInfo_005fnobody;

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
    _005fjspx_005ftagPool_005fq_005fgetProgramCommonResource_0026_005ftargetKey_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fq_005fgetExceptionMsg_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fq_005fgetExceptionInfo_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fq_005fgetProgramCommonResource_0026_005ftargetKey_005fnobody.release();
    _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody.release();
    _005fjspx_005ftagPool_005fq_005fgetExceptionMsg_005fnobody.release();
    _005fjspx_005ftagPool_005fq_005fgetExceptionInfo_005fnobody.release();
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
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
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>");
      if (_jspx_meth_q_005fgetProgramCommonResource_005f0(_jspx_page_context))
        return;
      out.write("</title>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\r\n");
      out.write("\t\t<link href=\"");
      if (_jspx_meth_q_005fwebRootName_005f0(_jspx_page_context))
        return;
      out.write("/views/np/pc/style/np/reset.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write(" \t\t<link href=\"");
      if (_jspx_meth_q_005fwebRootName_005f1(_jspx_page_context))
        return;
      out.write("/views/np/pc/style/np/np.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write(" \t\t<link href=\"");
      if (_jspx_meth_q_005fwebRootName_005f2(_jspx_page_context))
        return;
      out.write("/views/np/pc/style/np-systemerror.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<div class=\"np-main\">\r\n");
      out.write("\t\t\t<div class=\"np-system-content\">\r\n");
      out.write("\t\t\t\t<div class=\"np-system-conten\">\r\n");
      out.write("\t\t\t\t\t<div class=\"np-content-header np-system-error\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"np-content-title\">");
      if (_jspx_meth_q_005fgetProgramCommonResource_005f1(_jspx_page_context))
        return;
      out.write("</span>\r\n");
      out.write("        \t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"np-content-boby\">\r\n");
      out.write("\t\t\t\t\t\t<span>");
      if (_jspx_meth_q_005fgetExceptionMsg_005f0(_jspx_page_context))
        return;
      out.write("</span>\r\n");
      out.write("        \t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"np-content-footer\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t<div>\r\n");
      out.write("\t\t\t\t<span style=\"white-space: pre-wrap\">");
      if (_jspx_meth_q_005fgetExceptionInfo_005f0(_jspx_page_context))
        return;
      out.write("</span>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
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

  private boolean _jspx_meth_q_005fgetProgramCommonResource_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  q:getProgramCommonResource
    com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetProgramCommonResourceTag _jspx_th_q_005fgetProgramCommonResource_005f0 = (com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetProgramCommonResourceTag) _005fjspx_005ftagPool_005fq_005fgetProgramCommonResource_0026_005ftargetKey_005fnobody.get(com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetProgramCommonResourceTag.class);
    boolean _jspx_th_q_005fgetProgramCommonResource_005f0_reused = false;
    try {
      _jspx_th_q_005fgetProgramCommonResource_005f0.setPageContext(_jspx_page_context);
      _jspx_th_q_005fgetProgramCommonResource_005f0.setParent(null);
      // /views/pjcommon/errorpage/exception.jsp(10,9) name = targetKey type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_q_005fgetProgramCommonResource_005f0.setTargetKey("fatalErrorTitle");
      int _jspx_eval_q_005fgetProgramCommonResource_005f0 = _jspx_th_q_005fgetProgramCommonResource_005f0.doStartTag();
      if (_jspx_th_q_005fgetProgramCommonResource_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fq_005fgetProgramCommonResource_0026_005ftargetKey_005fnobody.reuse(_jspx_th_q_005fgetProgramCommonResource_005f0);
      _jspx_th_q_005fgetProgramCommonResource_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_q_005fgetProgramCommonResource_005f0, _jsp_getInstanceManager(), _jspx_th_q_005fgetProgramCommonResource_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_q_005fwebRootName_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  q:webRootName
    com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag _jspx_th_q_005fwebRootName_005f0 = (com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag) _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody.get(com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag.class);
    boolean _jspx_th_q_005fwebRootName_005f0_reused = false;
    try {
      _jspx_th_q_005fwebRootName_005f0.setPageContext(_jspx_page_context);
      _jspx_th_q_005fwebRootName_005f0.setParent(null);
      int _jspx_eval_q_005fwebRootName_005f0 = _jspx_th_q_005fwebRootName_005f0.doStartTag();
      if (_jspx_th_q_005fwebRootName_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody.reuse(_jspx_th_q_005fwebRootName_005f0);
      _jspx_th_q_005fwebRootName_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_q_005fwebRootName_005f0, _jsp_getInstanceManager(), _jspx_th_q_005fwebRootName_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_q_005fwebRootName_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  q:webRootName
    com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag _jspx_th_q_005fwebRootName_005f1 = (com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag) _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody.get(com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag.class);
    boolean _jspx_th_q_005fwebRootName_005f1_reused = false;
    try {
      _jspx_th_q_005fwebRootName_005f1.setPageContext(_jspx_page_context);
      _jspx_th_q_005fwebRootName_005f1.setParent(null);
      int _jspx_eval_q_005fwebRootName_005f1 = _jspx_th_q_005fwebRootName_005f1.doStartTag();
      if (_jspx_th_q_005fwebRootName_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody.reuse(_jspx_th_q_005fwebRootName_005f1);
      _jspx_th_q_005fwebRootName_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_q_005fwebRootName_005f1, _jsp_getInstanceManager(), _jspx_th_q_005fwebRootName_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_q_005fwebRootName_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  q:webRootName
    com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag _jspx_th_q_005fwebRootName_005f2 = (com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag) _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody.get(com.fujitsu.intarfrm.helpers.views.taglibs.controllers.WebRootNameTag.class);
    boolean _jspx_th_q_005fwebRootName_005f2_reused = false;
    try {
      _jspx_th_q_005fwebRootName_005f2.setPageContext(_jspx_page_context);
      _jspx_th_q_005fwebRootName_005f2.setParent(null);
      int _jspx_eval_q_005fwebRootName_005f2 = _jspx_th_q_005fwebRootName_005f2.doStartTag();
      if (_jspx_th_q_005fwebRootName_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fq_005fwebRootName_005fnobody.reuse(_jspx_th_q_005fwebRootName_005f2);
      _jspx_th_q_005fwebRootName_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_q_005fwebRootName_005f2, _jsp_getInstanceManager(), _jspx_th_q_005fwebRootName_005f2_reused);
    }
    return false;
  }

  private boolean _jspx_meth_q_005fgetProgramCommonResource_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  q:getProgramCommonResource
    com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetProgramCommonResourceTag _jspx_th_q_005fgetProgramCommonResource_005f1 = (com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetProgramCommonResourceTag) _005fjspx_005ftagPool_005fq_005fgetProgramCommonResource_0026_005ftargetKey_005fnobody.get(com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetProgramCommonResourceTag.class);
    boolean _jspx_th_q_005fgetProgramCommonResource_005f1_reused = false;
    try {
      _jspx_th_q_005fgetProgramCommonResource_005f1.setPageContext(_jspx_page_context);
      _jspx_th_q_005fgetProgramCommonResource_005f1.setParent(null);
      // /views/pjcommon/errorpage/exception.jsp(21,37) name = targetKey type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_q_005fgetProgramCommonResource_005f1.setTargetKey("errorContentCaption");
      int _jspx_eval_q_005fgetProgramCommonResource_005f1 = _jspx_th_q_005fgetProgramCommonResource_005f1.doStartTag();
      if (_jspx_th_q_005fgetProgramCommonResource_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fq_005fgetProgramCommonResource_0026_005ftargetKey_005fnobody.reuse(_jspx_th_q_005fgetProgramCommonResource_005f1);
      _jspx_th_q_005fgetProgramCommonResource_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_q_005fgetProgramCommonResource_005f1, _jsp_getInstanceManager(), _jspx_th_q_005fgetProgramCommonResource_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_q_005fgetExceptionMsg_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  q:getExceptionMsg
    com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetExceptionMsgTag _jspx_th_q_005fgetExceptionMsg_005f0 = (com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetExceptionMsgTag) _005fjspx_005ftagPool_005fq_005fgetExceptionMsg_005fnobody.get(com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetExceptionMsgTag.class);
    boolean _jspx_th_q_005fgetExceptionMsg_005f0_reused = false;
    try {
      _jspx_th_q_005fgetExceptionMsg_005f0.setPageContext(_jspx_page_context);
      _jspx_th_q_005fgetExceptionMsg_005f0.setParent(null);
      int _jspx_eval_q_005fgetExceptionMsg_005f0 = _jspx_th_q_005fgetExceptionMsg_005f0.doStartTag();
      if (_jspx_th_q_005fgetExceptionMsg_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fq_005fgetExceptionMsg_005fnobody.reuse(_jspx_th_q_005fgetExceptionMsg_005f0);
      _jspx_th_q_005fgetExceptionMsg_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_q_005fgetExceptionMsg_005f0, _jsp_getInstanceManager(), _jspx_th_q_005fgetExceptionMsg_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_q_005fgetExceptionInfo_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  q:getExceptionInfo
    com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetExceptionInfoTag _jspx_th_q_005fgetExceptionInfo_005f0 = (com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetExceptionInfoTag) _005fjspx_005ftagPool_005fq_005fgetExceptionInfo_005fnobody.get(com.fujitsu.intarfrm.helpers.views.taglibs.controllers.GetExceptionInfoTag.class);
    boolean _jspx_th_q_005fgetExceptionInfo_005f0_reused = false;
    try {
      _jspx_th_q_005fgetExceptionInfo_005f0.setPageContext(_jspx_page_context);
      _jspx_th_q_005fgetExceptionInfo_005f0.setParent(null);
      int _jspx_eval_q_005fgetExceptionInfo_005f0 = _jspx_th_q_005fgetExceptionInfo_005f0.doStartTag();
      if (_jspx_th_q_005fgetExceptionInfo_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fq_005fgetExceptionInfo_005fnobody.reuse(_jspx_th_q_005fgetExceptionInfo_005f0);
      _jspx_th_q_005fgetExceptionInfo_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_q_005fgetExceptionInfo_005f0, _jsp_getInstanceManager(), _jspx_th_q_005fgetExceptionInfo_005f0_reused);
    }
    return false;
  }
}
