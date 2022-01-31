<%--
  Created by IntelliJ IDEA.
  User: Soumya KADDOURI
  Date: 1/27/2022
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp"/>

<!-- Title -->
<link href="https://unpkg.com/tailwindcss@1.2.0/dist/tailwind.min.css" rel="stylesheet">
<title>Administrator Profile</title>
</head>
<%--SideBar--%>
<jsp:include page="${pageContext.request.contextPath}/view/admin/sidebareAdmin.jsp"/>
<!--====== PROFILE PART START ======-->

<div
        class="bg-white my-18 pb-6 w-full justify-center items-center overflow-hidden md:max-w-3xl rounded-lg shadow-sm mx-auto">
    <div class="relative h-40">
        <img class="absolute h-full w-full object-cover"
             src="${pageContext.request.contextPath}/assets/img/bg-admin.jpg" alt="bg admin image"/>
        <div class="absolute rounded-full pl-2 pt-1 top-0">
            <label
                    class=" flex flex-col items-center p-2 rounded-full text-theme-color duration-150 border-1 border-ensias-red hover:bg-red-900 hover:text-white">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-5 inline-block" fill="none"
                     viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M15 13a3 3 0 11-6 0 3 3 0 016 0z"></path>
                </svg>
                <form method="post" action="/upload-pp" enctype="multipart/form-data">
                    <input name="profile-picture" type='file' class="hidden" accept="image/*"/>
                    <button type="submit">change</button>
                </form>
            </label>
        </div>
    </div>
    <div class="relative shadow mx-auto h-24 w-24 -my-12 border-white rounded-full overflow-hidden border-4">
        <c:choose>
            <c:when test="${ sessionScope.member.picture != null }">
                <img src="http://localhost/${ sessionScope.member.picture }" alt="Pdp"
                     class="object-cover w-full h-full"/>
            </c:when>
            <c:otherwise>
                <img src="assets/img/person.jpg" alt="Pdp" class="object-cover w-full h-full"/>
            </c:otherwise>
        </c:choose>
    </div>
    <div class="mt-16">
        <h1 class="text-lg text-center font-semibold">
            Administrator
        </h1>
    </div>
    <div class="bg-white mt-4 mx-2 p-1 shadow-sm rounded-sm border-t ">
        <div
                class="flex items-center justify-between mt-2 space-x-2 font-semibold text-zinc-900 text-2xl">
            <div class="pl-3">
            </div>
            <div class="flex items-center ">
                <a href="<c:url value="/modify-password" />"
                   class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white"
                   aria-label="Edit">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                         viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                    </svg>
                </a>
                <a href="<c:url value="/modify-admin-profile" />"
                   class=" p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white"
                   aria-label="Edit">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                         viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                    </svg>
                </a>
            </div>
        </div>
        <div class="text-zinc-700">
            <div class="grid md:grid-cols-2 text-lg">
                <div class="grid grid-cols-2 px-4 py-2 font-semibold">Name</div>
                <div class="grid grid-cols-2 px-4 py-2 "> ${ sessionScope.admin.adminName}</div>
                <div class="grid grid-cols-2 px-4 py-2 font-semibold">Gender</div>
                <div class="grid grid-cols-2 px-4 py-2 ">${ sessionScope.admin.adminGender}</div>
                <div class="grid grid-cols-2 px-4 py-2 font-semibold">CIN</div>
                <div class="grid grid-cols-2 px-4 py-2 ">${ sessionScope.admin.adminCIN}</div>
                <div class="grid grid-cols-2 px-4 py-2 font-semibold">City</div>
                <div class="grid grid-cols-2 px-4 py-2 ">${ sessionScope.member.city}</div>
                <div class="grid grid-cols-2 px-4 py-2 font-semibold">Birthdate</div>
                <div class="grid grid-cols-2 px-4 py-2 ">${ sessionScope.admin.adminBirthdate}</div>
                <div class="grid grid-cols-2 px-4 py-2 font-semibold">Phone number</div>
                <div class="grid grid-cols-2 px-4 py-2 ">${ sessionScope.admin.adminPhone}</div>
                <div class="grid grid-cols-2 px-4 py-2 font-semibold">Email address</div>
                <div class="grid grid-cols-2 px-4 py-2 "><a
                        href="mailto:${ sessionScope.member.email}">${ sessionScope.member.email}</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!--====== PROFILE PART ENDS ======-->
</div>
</div>
<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp"/>