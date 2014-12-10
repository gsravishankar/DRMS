            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">                
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="image" align="center">
                            <img src="${pageContext.servletContext.contextPath}/resources/imgs/avatar3.png" class="img-circle" alt="User Image" />
                        </div>
                        <div class="info" align="center">
                            <p>${pageContext.request.userPrincipal.name}</p>
                        </div>
                    </div>
                    
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a href="landing">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <i class="fa fa-warning"></i> <span>System Status</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <i class="fa fa-bar-chart-o"></i> <span>Time of Use</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <i class="fa fa-laptop"></i> <span>Direct Load Control</span>
                            </a>
                            
                        </li>
                        <li>
                            <a href="customer">
                                <i class="fa fa-group"></i> <span>Customer</span>
                            </a>
                        </li>
                        <li>
                            <a href="device">
                                <i class="fa fa-mobile"></i> <span>Device</span>
                            </a>
                        </li>
                        <li>
                            <a href="accounts">
                                <i class="glyphicon glyphicon-user"></i> <span>Account</span>
                            </a>
                        </li>                                                
                    </ul>
                </section>
            </aside>