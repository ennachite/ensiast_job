<%--
  Created by IntelliJ IDEA.
  User: Soumya KADDOURI
  Date: 1/27/2022
  Time: 9:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title>Administrator Profile</title>
</head>
<%--SideBar--%>
<jsp:include page="${pageContext.request.contextPath}/view/admin/sidebareAdmin.jsp" />
<section class="">
    <div class="">
        <div class="row justify-center pt-5">
            <div class=" lg:w-1/2">
                <div class="section_title text-center pb-6 ">
                    <h4 class="main_title mt-10">Add administrator</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left pb-6">
            <!-- ========== GRID START ============-->
            <div class=" sm:w-10/12 md:w-6/12">
                <div class="grid_offer text-center mx-3 pb-3 ">
                    <c:if  test="${ requestScope.error != null }">
                        <c:out value="${ requestScope.error }" />
                    </c:if>
                    <form method="post" action="/add-admin">
                    <!-- General elements -->
                        <div class="justify-left text-left pt-4">
                            <label class="block text-gray-600 mb-6 text-sm">
                                <span class="text-black">Name</span>
                                <input name="admin-name" type="text" class="block w-full py-5 mt-1 h-8 text-sm pl-2 hover:border-ensias-red border-2 border-gray-400 rounded-md form-input" placeholder="Enter name admin" />
                            </label>
                            <label class="block text-gray-600 mb-6 text-sm">
                                <span class="text-black">Gender</span>
                                <select name="admin-gender" class="block w-full mt-1 py-3 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input">
                                    <option>Choose one</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </label>
                            <label class="block text-gray-600 my-6 text-sm">
                                <span class="text-black">CIN</span>
                                <input name="admin-cin" type="text" class="block w-full py-5 mt-1 h-8 text-sm pl-2 hover:border-ensias-red border-2 border-gray-400 rounded-md form-input" placeholder="Enter CIN admin " />
                            </label>
                            <label class="block text-gray-600 my-6 text-sm">
                                <span class="text-black">City</span>
                                <input name="city" type="text" class="block w-full py-5 mt-1 h-8 text-sm pl-2 hover:border-ensias-red border-2 border-gray-400 rounded-md form-input" placeholder="Enter CIN admin " />
                            </label>
                            <label class="block text-gray-600 my-6 text-sm">
                                <span class="text-black">Birthdate</span>
                                <input name="admin-birthdate" type="date" class="block w-full py-5 mt-1 h-8 text-sm pl-2 hover:border-ensias-red border-2 border-gray-400 rounded-md form-input"/>
                            </label>

                            <label class="block text-gray-600 my-6 text-sm">
                                <span class="text-black">Phone number</span>
                                <input name="admin-phone" type="tel" class="block w-full py-5 mt-1 h-8 text-sm pl-2 hover:border-ensias-red border-2 border-gray-400 rounded-md form-input" placeholder="Enter phone number" />
                            </label>

                            <label class="block text-gray-600 my-6 text-sm">
                                <span class="text-black">Email address</span>
                                <input name="email" type="email" class="block w-full mt-1 h-8 text-sm pl-2 py-5 hover:border-ensias-red border-2 border-gray-400 rounded-md form-input" placeholder="example@gmail.com" />
                            </label>

                            <div class=" mt-6 pb-5 lg:mb-2 mx-1">
                                <label class="text-gray-600 text-sm" for="password">Password</label>
                                <div class="relative w-full password_field">
                                    <div class="absolute inset-y-0 right-0 flex items-center px-2">
                                        <input class="hidden js-password-toggle" id="toggle" type="checkbox" />
                                        <label class=" hover:text-ensias-red rounded px-2 py-1 js-password-label" for="toggle">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21" ></path>
                                            </svg>
                                        </label>
                                    </div>
                                    <input name="password" class="appearance-none w-full text-sm mt-1 py-2 px-2 border-2 border-gray-400 rounded-lg text-gray-700 hover:border-ensias-red js-password" id="password" type="password" autocomplete="off" placeholder="Password" />
                                </div>

                            </div>

                            <a class="flex items-center justify-center p-4 mb-8 text-sm font-semibold text-white bg-ensias-red rounded-lg shadow-md hover:bg-red-800 mt-3">
                                <button type="submit">Submit</button>
                                <div class="flex items-center">
                                    <span></span>
                                </div>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
            <!-- ========== GRID END ============-->
        </div>
    </div>

</section>
</div>
</div>
<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />
