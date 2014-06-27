<%@page pageEncoding="UTF-8" contentType="text/html" isErrorPage="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/includes/doctype.jsp"/>

<body>
	<!-- Header -->
	<div id="mws-header" class="clearfix">
        <jsp:include page="includes/userInformationAndFunctions.jsp"/>
    </div>
    
    <!-- Start Main Wrapper -->
    <div id="mws-wrapper">
    
    	<!-- Necessary markup, do not remove -->
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>
        
        <jsp:include page="/includes/sidebarWrapper.jsp"/>
        
        <!-- Main Container Start -->
        <div id="mws-container" class="clearfix">
        
        	<!-- Inner Container Start -->
            <div class="container">
            	<div id="mws-error-page">
                    <h1>Erreur <span>404</span></h1>
                    <h5>Oupss... c'est embarrassant, soit vous essayez d'accéder à une page inconnu, soit le serveur est devenu fou.</h5>
                    <p><a href="dashboard.html">cliquez ici</a> pour revenir à l'acceuil</p>
                </div>
            </div>
            <!-- Inner Container End -->
            <jsp:include page="/includes/footer.jsp"/>
            
        </div>
        <!-- Main Container End -->
        
    </div>

    <!-- JavaScript Plugins -->
    <script src="js/libs/jquery-1.8.3.min.js"></script>
    <script src="js/libs/jquery.mousewheel.min.js"></script>
    <script src="js/libs/jquery.placeholder.min.js"></script>

    <!-- jQuery-UI Dependent Scripts -->
    <script src="jui/js/jquery-ui-1.9.2.min.js"></script>
    <script src="jui/jquery-ui.custom.min.js"></script>
    <script src="jui/js/jquery.ui.touch-punch.js"></script>

    <!-- Core Script -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/core/mws.js"></script>

</body>
</html>