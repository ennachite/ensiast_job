<%--
  Created by IntelliJ IDEA.
  User: Soumya KADDOURI
  Date: 1/27/2022
  Time: 8:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp"/>

<!-- Title -->
<title>${ sessionScope.admin.adminName }</title>
</head>
<%--SideBar--%>
<jsp:include page="${pageContext.request.contextPath}/view/admin/sidebareAdmin.jsp"/>
<section class="">
    <div class="">
        <div class="row justify-center pt-14">
            <div class=" lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Modify profile admin</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left py-6">
            <!-- ========== GRID START ============-->
            <div class=" sm:w-10/12 md:w-6/12">
                <div class="grid_offer text-center mx-3 pb-3">
                    <form method="post" action="/modify-admin-profile">
                        <c:if test="${ requestScope.error != null }">
                            <c:out value="${ requestScope.error }"/>
                        </c:if>
                        <!-- General elements -->
                        <div class="justify-left text-left pt-5">
                            <label class="block text-sm">
                                <span class="text-black">Name</span>
                                <input type="text" name="admin-name" value="${sessionScope.admin.adminName}"
                                       class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                       placeholder="Enter your name"/>
                            </label>
                            <label class="block mt-4 text-sm">
                                <span class="text-gray-700">Gender</span>
                                <select name="admin-gender" value="${sessionScope.admin.adminGender}"
                                        class="block w-full mt-1 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input h-8">
                                    <option>Choose one</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </label>
                            <label class="block text-sm my-4">
                                <span class="text-black">CIN</span>
                                <input name="admin-cin" type="text" value="${ sessionScope.admin.adminCIN}"
                                       class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                       placeholder="Enter your CIN"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">City</span>
                                <input name="city" type="text" value="${ sessionScope.member.city }"
                                       class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                       placeholder="Enter your CIN"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Birthdate</span>
                                <input name="admin-birthdate" type="date" value="${ sessionScope.admin.adminBirthdate}"
                                       class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                       placeholder="Country,City"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Phone number</span>
                                <input name="admin-phone" type="tel" value="${ sessionScope.admin.adminPhone}"
                                       class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                       placeholder="Your phone number"/>
                            </label>

                            <a class="grid justify-center p-4 mb-4 text-sm text-white hover:bg-ensias-red bg-red-700 rounded-lg shadow-md focus:outline-none mt-3">
                                <button type="submit" class="font-bold">Submit</button>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- ========== GRID END ============-->
    </div>
    </div>

</section>
</div>
</div>
<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp"/>