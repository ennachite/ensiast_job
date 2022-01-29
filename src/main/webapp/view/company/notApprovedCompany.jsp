<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon Icon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon">
    <!-- Tailwind CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/tailwindcss.css">
    <title>ENSIAST JOB</title>
</head>
<body class="h-screen bg-red-50 overflow-hidden flex items-center justify-center">
<!-- This is an example component -->
<div class="h-screen w-screen bg-gray-100 flex items-center">
    <div class="container flex flex-col md:flex-row items-center justify-center px-5 text-gray-700">
        <div class="max-w-md">
            <div class="text-5xl font-dark font-bold">${sessionScope.company.companyName}</div>
            <p class="text-2xl md:text-3xl font-light leading-normal">Please wait for an Administrator to Approve you
                joining <span class="font-bold text-ensias-red">ENSIAST Job</span></p>
            <p class="mb-8">Be <span class="font-bold text-ensias-red">Patient</span></p>
            <a href="<c:url value="/logout" />">
                <button class="px-4 inline py-2 text-sm font-medium leading-5 shadow text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none focus:shadow-outline-blue bg-red-600 active:bg-red-600 hover:bg-red-700">
                    Logout
                </button>
            </a>
        </div>
        <div class="max-w-lg">
            <img src="assets/img/EJ_logo.png" width="200px" alt="">
        </div>

    </div>
</div>
</body>
</html>
