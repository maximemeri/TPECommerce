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
                
            	<div class="mws-panel grid_3">
                	<div class="mws-panel-header">
                    	<span><i class="icon-book"></i> Statistiques</span>
                    </div>
                    <div class="mws-panel-body no-padding">
                        <ul class="mws-summary clearfix">
                            <li>
                                <span class="key" style="min-width:250px;"><i class="icon-support"></i> Qte Moyenne/commande : </span>
                                <span class="val">
                                    <span class="text-nowrap"><c:out value="${qteMoyenneCommande}"/></span>
                                </span>
                            </li>
                            <li>
                                <span class="key" style="min-width:250px;"><i class="icon-shopping-cart"></i> Nombre de commande du mois :</span>
                                <span class="val">
                                    <span class="text-nowrap"><c:out value="${nbCmdMois}"/><i class="up icon-arrow-up"></i></span>
                                </span>
                            </li>
                            <li>
                                <span class="key" style="min-width:250px;"><i class="icon-install"></i> Meilleur produit :</span>
                                <span class="val">
                                    <span class="text-nowrap"><c:out value="${meilleurProduit}"/></span>
                                </span>
                            </li>
                        </ul>
                    </div>
                </div>
                
                <div class="mws-panel grid_8 mws-collapsible">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Top acheteurs du produit le plus vendu </span>
                    </div>
                    <div class="mws-panel-body no-padding">
                        <table class="mws-table mws-datatable">
                            <thead>
                                <tr>
                                    <th>Nom</th>
                                    <th>Prenom</th>
                                    <th>Email</th>
                                    <th>Nombre d'achat</th>
                                </tr>
                            </thead>
                            <tbody>
                                
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
    <script src="js/libs/jquery-1.8.3.min.js"></script>
    <script src="js/libs/jquery.mousewheel.min.js"></script>
    <script src="js/libs/jquery.placeholder.min.js"></script>
    
    <!-- jQuery-UI Dependent Scripts -->
    <script src="jui/js/jquery-ui-1.9.2.min.js"></script>
    <script src="jui/jquery-ui.custom.min.js"></script>
    <script src="jui/js/jquery.ui.touch-punch.js"></script>

    <!-- Plugin Scripts -->
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <!--[if lt IE 9]>
    <script src="../js/libs/excanvas.min.js"></script>
    <![endif]-->
    <script src="plugins/flot/jquery.flot.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.tooltip.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.pie.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.stack.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.resize.min.js"></script>
    <script src="plugins/colorpicker/colorpicker-min.js"></script>
    <script src="plugins/validate/jquery.validate-min.js"></script>

    <!-- Core Script -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/core/mws.js"></script>

    <script type="text/javascript">
	$(document).ready(function() {
        $(".mws-datatable").dataTable();
    });
    </script>
</body>
</html>