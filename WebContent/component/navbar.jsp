<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><i class="fas fa-clinic-medical"></i> MENU</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <c:if test="${empty userObj }">
                    <div class="d-flex">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fas fa-sign-in-alt"></i> ADMINISTRATEUR</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTEUR</a></li>
                       
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="user_login.jsp">UTILISATEUR</a></li>
                    </div>
                </c:if>
                <c:if test="${not empty userObj }">
                    <div class="d-flex">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="user_appointment.jsp">CONSULTATIONS</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="view_appointment.jsp">VOIR SES CONSULTATIONS</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa-solid fa-circle-user"></i> ${userObj.fullName }
                            </a>

                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="change_password.jsp">Changer le mot de passe</a></li>
                                <li><a class="dropdown-item" href="userLogout">Deconnexion</a></li>
							</ul>
                        </li>
                    </div>
                </c:if>
            </ul>
        </div>
    </div>
</nav>