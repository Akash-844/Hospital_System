<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.Dbconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/css.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.form-label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-control {
	width: 100%;
	box-sizing: border-box;
	padding: 8px;
}
</style>
</head>
<body>

	<c:if test="${empty doctObj}">
		<c:redirect url="../Doctor_login.jsp"></c:redirect>
	</c:if>
	<%@include file="navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 ">
				<div class="card paint-card">
					<p class="text-center fs-3">Change Password</p>
					<c:if test="${not empty succMsg }">
						<p class="text-center text-success fs-3">${succMsg}</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-5">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="../userChangePassword" method="post">
							<div class="mb-3">
								<label>Enter New Password</label> <input type="text"
									name="newPassword" class="form-control" required>
							</div>

							<div class="mb-3">
								<label>Enter Old Password</label> <input type="text"
									name="oldPassword" class="form-control" required>
							</div>
							<input type="hidden" value="${doctObj.id }" name="uid">
							<button class="btn btn-success col-md-12">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-5 offset-md-2">
				<div class="card paint-card">
					<p class="text-center fs-3">Edit Profile</p>
					<c:if test="${not empty succMsgd}">
						<p class="text-center text-success fs-3">${succMsgd}</p>
						<c:remove var="succMsgd" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsgd}">
						<p class="text-center text-danger fs-5">${errorMsgd}</p>
						<c:remove var="errorMsgd" scope="session" />
					</c:if>
					<div class="card-body"></div>
					<form action="../doctorUpdateProfile" method="post">
						<div class="mb-3">
							<label class="form-label" for="fullname">Full Name</label> <input
								type="text" id="fullname" name="fullname" class="form-control"
								required value="${doctObj.fullName}">
						</div>
						<div class="mb-3">
							<label class="form-label" for="dob">DOB</label> <input
								type="date" id="dob" name="dob" class="form-control" required
								value="${doctObj.dob }">
						</div>
						<div class="mb-3">
							<label class="form-label" for="qualification">Qualification</label>
							<input type="text" id="qualification" name="qualification"
								class="form-control" required value="${doctor.qualification}">
						</div>
						<div class="mb-3">
							<label class="form-label" for="spec">Specialist</label> <select
								id="spec" name="spec" class="form-control" required>
								<option value="" disabled selected>${docObj.specialist }</option>
								<%
								SpecialistDao dao = new SpecialistDao(Dbconnect.getConn());
								List<Specialist> list = dao.getAllSpecialist();
								for (Specialist s : list) {
								%>
								<option value="<%=s.getSpecialistName()%>">
									<%=s.getSpecialistName()%>
								</option>
								<%
								}
								%>
							</select>
						</div>
						<div class="mb-3">
							<label class="form-label" for="email">Email</label> <input
								type="email" id="email" name="email" class="form-control"
								required value="${doctObj.email }">
						</div>
						<div class="mb-3">
							<label class="form-label" for="mobno">Mob No</label> <input
								type="text" id="mobno" name="mobno" class="form-control"
								required value="${doctObj.mobNo }">
						</div>
						<input type="hidden" name="id" value="${doctObj.id }">
						
						<button type="submit" class="btn btn-primary">Update</button>
					</form>
				</div>
			</div>

		</div>
	</div>

</body>
</html>