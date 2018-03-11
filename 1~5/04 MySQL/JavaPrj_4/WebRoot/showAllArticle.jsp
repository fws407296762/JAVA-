<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>����ϵͳ��ҳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/main.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="js/mootools.js"></script>
<script type="text/javascript" src="js/site.js"></script>
</head>
<body>
<div id="wrapper">
  <div id="container">
    <div id="scene"> c<img src="images/scene.jpg" alt="" />
      <h1>������վϵͳ</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
        <div class="holder"> <a href="showAllArticle.action">������ҳ</a> </div>
        <div class="holder"> <a href="register.jsp">�²���ע��</a> </div>
        <div class="holder"> <a href="login.jsp">���͵�¼</a> </div>
      </div>
    </div>
    <div id="content">
      <div id="col_left">
        <div class="post">
          <div class="meta"><a class="title" href="">����ϵͳ��ҳ</a>
            <div class="clear"></div>
          </div>
        <!-- ѭ����� -->
		<s:iterator value="#request.all" id="art" status="sta">
          <div class="comments">
            <div class="comment">
              <div class="meta"> <span><a href="user/showArticle.action?username=<s:property value='#art.username'/>&id=<s:property value='#art.id'/>"><s:property value="#art.title"/></a> <small>:</small></span>
                <div class="clear"> </div>
              </div>
            </div>
            <div class="comment alt">
              <div class="meta"><span class="datetime">
              	<!-- ����ʱ�� -->
														������:
														<s:date name="#art.date"/>
														<!-- ���������� -->
														|����(<s:property value="#request.critiqueCounts[#sta.index]"/>)|���(<s:property value="#art.hasread"/>)|����:<s:property value="#art.username"/>
              </span>
                <div class="clear"> </div>
              </div>
            </div>
          </div>
		 </s:iterator>
		  <div class="comment" align="center">
		  	��ǰ��${page.currentPage}ҳ����${page.totalPage}ҳ��ÿҳ��ʾ${page.everyPage}����¼
			<s:if test="#request.page.hasPrePage">
				<a href="showAllArticle.action?currentPage=1">��ҳ</a>
				<a href="showAllArticle.action?currentPage=${page.currentPage -1 }">��һҳ</a>
			</s:if>
			<s:else>
				��ҳ
				��һҳ
			</s:else>
			
			<s:if test="#request.page.hasNextPage">
				<a href="showAllArticle.action?currentPage=${page.currentPage + 1 }">��һҳ</a>
				<a href="showAllArticle.action?currentPage=${page.totalPage }">βҳ</a>			
			</s:if>
			<s:else>
				��һҳ
				βҳ
			</s:else>
		  </div>
        </div>
      </div>
      <div id="col_right">
        <div id="search_box">
          <form action="http://www.865171.cn/" method="post">
            <div>
              <input type="text" name="search" />
            </div>
            <div class="button_wrapper">
              <input type="submit" value="Search" class="button" />
            </div>
            <div class="clear"> </div>
          </form>
        </div>
        <div id="sidebar">
          <h2>ҳ�浼��</h2>
          <ul>
            <li><a href="showAllArticle.action">������ҳ</a></li>
            <li><a href="register.jsp">�²���ע��</a></li>
            <li><a href="login.jsp">���͵�¼</a></li>
          </ul>
        </div>
      </div>
      <div class="clear"> </div>
    </div>
    <div id="footer">
      <div class="clear"> </div>
      <hr />
      <p class="credit">������վϵͳ</p>
    </div>
  </div>
</div>
</body>
</html>
