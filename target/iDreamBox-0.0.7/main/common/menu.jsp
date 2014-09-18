<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 左侧菜单栏 -->
<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
	<div class="list-group">
		<a href="#" onclick="disk();" id="menu-disk" class="list-group-item active"><span class="img-ico aside-disk" ></span>全部文件</a> 
		<a href="#" onclick="mpic();" id="menu-mpic" class="list-group-item"><span class="img-ico aside-mpic" ></span>图片</a>
		<a href="#" onclick="mdoc();" id="menu-mdoc" class="list-group-item"><span class="img-ico aside-mdoc" ></span>文档</a> 
		<a href="#" onclick="mvideo();" id="menu-mvideo" class="list-group-item"><span class="img-ico aside-mvideo" ></span>视频</a>
		<a href="#" onclick="mbt();" id="menu-mbt" class="list-group-item"><span class="img-ico aside-mbt" ></span>种子</a>
		<a href="#" onclick="mmusic();" id="menu-mmusic" class="list-group-item"><span class="img-ico aside-mmusic" ></span>音乐</a>
		<a href="#" onclick="moth();" id="menu-moth" class="list-group-item"><span class="img-ico aside-moth" ></span>其他</a> 
		<a href="#" onclick="recycle();" id="menu-recycle" class="list-group-item"><span class="img-ico aside-recycle" ></span>回收站</a> 
	</div>
</div>
<!--/左侧导航栏-->