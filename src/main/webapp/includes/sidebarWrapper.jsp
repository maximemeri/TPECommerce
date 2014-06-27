<%@page pageEncoding="UTF-8" contentType="text/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Sidebar Wrapper -->
        <div id="mws-sidebar">
        
            <!-- Hidden Nav Collapse Button -->
            <div id="mws-nav-collapse">
                <span></span>
                <span></span>
                <span></span>
            </div>
            
            <!-- Main Navigation -->
            <div id="mws-navigation">
                <ul>
                    <li><a href="<c:url value="/dashboard"/>"><i class="icon-home"></i> Dashboard</a></li>
                    <li><a href="<c:url value="/fournisseur?action=index" />"><i class="icon-graph"></i> Fournisseur</a></li>
                </ul>
            </div>         
        </div>