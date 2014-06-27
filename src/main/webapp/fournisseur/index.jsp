<%@page pageEncoding="UTF-8" contentType="text/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/includes/doctype.jsp"/>

<body>

	<!-- Header -->
	<div id="mws-header" class="clearfix">
        <jsp:include page="/includes/userInformationAndFunctions.jsp"/>
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
                
                <!-- Panels Start -->

                
                <div class="mws-panel grid_8 mws-collapsible">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Fournisseurs</span>
                    </div>
                    <div class="mws-panel-toolbar">
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <a href="<c:url value="/fournisseur?action=ajout"/>" class="btn"><i class="icol-add"></i> Ajouter</a>
                            </div>
                        </div>
                    </div>
                    <div class="mws-panel-body no-padding">
                        <table class="mws-table mws-datatable">
                            <thead>
                                <tr>
                                    <th>Nom</th>
                                    <th>Email</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="unFournisseur" items="${fournisseurs}">
									<tr><td><c:out value="${unFournisseur.nom}"/></td><td><c:out value="${unFournisseur.email}" /></td></tr>
								</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <!-- Panels End -->
            </div>
            <!-- Inner Container End -->
                       
           <jsp:include page="/includes/footer.jsp"/>
            
        </div>
        <!-- Main Container End -->
        
    </div>

    <!-- JavaScript Plugins -->
    <script src="/tpecommerce/js/libs/jquery-1.8.3.min.js"></script>
    <script src="/tpecommerce/js/libs/jquery.mousewheel.min.js"></script>
    <script src="/tpecommerce/js/libs/jquery.placeholder.min.js"></script>
    
    <!-- jQuery-UI Dependent Scripts -->
    <script src="/tpecommerce/jui/js/jquery-ui-1.9.2.min.js"></script>
    <script src="/tpecommerce/jui/jquery-ui.custom.min.js"></script>
    <script src="/tpecommerce/jui/js/jquery.ui.touch-punch.js"></script>

    <!-- Plugin Scripts -->
    <script src="/tpecommerce/plugins/datatables/jquery.dataTables.min.js"></script>
    <!--[if lt IE 9]>
    <script src="/tpecommerce/js/libs/excanvas.min.js"></script>
    <![endif]-->
    <script src="/tpecommerce/plugins/flot/jquery.flot.min.js"></script>
    <script src="/tpecommerce/plugins/flot/plugins/jquery.flot.tooltip.min.js"></script>
    <script src="/tpecommerce/plugins/flot/plugins/jquery.flot.pie.min.js"></script>
    <script src="/tpecommerce/plugins/flot/plugins/jquery.flot.stack.min.js"></script>
    <script src="/tpecommerce/plugins/flot/plugins/jquery.flot.resize.min.js"></script>
    <script src="/tpecommerce/plugins/colorpicker/colorpicker-min.js"></script>
    <script src="/tpecommerce/plugins/validate/jquery.validate-min.js"></script>

    <!-- Core Script -->
    <script src="/tpecommerce/bootstrap/js/bootstrap.min.js"></script>
    <script src="/tpecommerce/js/core/mws.js"></script>

    <script type="text/javascript">

    $(document).ready(function() {
    	$(".mws-datatable").dataTable();
    });
	</script>
</body>
</html>