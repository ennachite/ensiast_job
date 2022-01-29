<%--
  Created by IntelliJ IDEA.
  User: Soumya KADDOURI
  Date: 1/27/2022
  Time: 7:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp"/>

<!-- Title -->
<title> All students</title>
</head>
<%--SideBar--%>
<jsp:include page="${pageContext.request.contextPath}/view/admin/sidebareAdmin.jsp"/>
<main class=" px-1">
    <!--====== JOB POSTS PART STARTS ======-->
    <div class="row justify-center">
        <div class="w-fully lg:w-1/2">
            <div class="section_title text-center pt-5">
                <h4 class="main_title">Students list</h4>
            </div>
            <!-- section title -->
        </div>
    </div>
    <!-- row -->
    <!-- ========== GRID START ============-->
    <div class="w-full pb-6 ">
        <div class="grid_offer text-center mt-8 mx-3 ">
            <div class="w-full overflow-hidden rounded-lg shadow-xs">
                <div class="w-full overflow-x-auto">
                    <table class="w-full whitespace-no-wrap">
                        <thead>
                        <tr class="text-xs font-semibold tracking-wide text-red-700 uppercase border-b  bg-gray-50 text-center ">
                            <th class="px-4 py-3t">Name</th>
                            <th class="px-4 py-3">Gender</th>
                            <th class="px-4 py-3">City</th>
                            <th class="px-4 py-3">Birthdate</th>
                            <th class="px-4 py-3">Phone number</th>
                            <th class="px-4 py-3">Email address</th>
                            <th class="px-4 py-3">CNE</th>
                            <th class="px-4 py-3">Speciality</th>
                            <th class="px-4 py-3">Delete</th>
                        </tr>
                        </thead>
                        <tbody class="bg-white divide-y ">
                        <c:forEach items="${requestScope.students}" var="student">
                            <!-- =============== Start Line ===============-->
                            <tr class="text-gray-700">
                                <td class="px-4 py-3">
                                    <div class="flex items-center text-sm">
                                        <!-- Avatar with inset shadow -->
                                        <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                            <c:choose>
                                                <c:when test="${ student.picture != null }">
                                                    <img src="http://localhost/${ student.picture }" alt="Pdp"
                                                         class="object-cover w-full h-full rounded-full"
                                                         loading="lazy"/>
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="assets/img/person.jpg" alt="Pdp"
                                                         class="object-cover w-full h-full rounded-full">
                                                </c:otherwise>
                                            </c:choose>
                                            <div class="absolute inset-0 rounded-full shadow-inner"
                                                 aria-hidden="true"></div>
                                        </div>
                                        <p class="font-semibold">${student.firstName} ${student.lastName}</p>
                                    </div>
                                </td>
                                <td class="px-4 py-3 text-sm">
                                    <p>${student.gender}</p>
                                </td>
                                <td class="px-4 py-3 text-sm">
                                    <p>${student.cityStudent}</p>
                                </td>
                                <td class="px-4 py-3 text-sm">
                                    <p>${student.birthdate}</p>
                                </td>
                                <td class="px-4 py-3 text-sm">
                                    <p>${student.phone}</p>
                                </td>
                                <td class="px-4 py-3 text-sm">
                                    <a href="${student.emailStudent}">${student.emailStudent}</a>
                                </td>
                                <td class="px-4 py-3 text-sm">
                                    <p>${student.CNE}</p>
                                </td>
                                <td class="px-4 py-3 text-sm">
                                    <p>${student.specialty}</p>
                                </td>

                                <td class="px-4 py-3">
                                    <button
                                            class="px-2 py-2 text-sm font-medium leading-5 text-red-900 rounded-lg hover:border-red-700 hover:border-2 main-modal"
                                            aria-label="Delete">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none"
                                             viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                  d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                        </svg>
                                    </button>

                                    <!--===========Start Modal==============-->
                                    <div
                                            class="bg-black bg-opacity-70 absolute inset-0 hidden justify-center items-center overlay modal-field">
                                        <div
                                                class="bg-gray-200 max-w-sm max-h-lg py-2 px-3 rounded-xl shadow-xl text-gray-800">
                                            <div class="justify-center items-center">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                     class="w-4 h-4 -m-1 flex items-center text-red-500 mx-auto"
                                                     fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-width="2"
                                                          d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                </svg>
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                     class="w-11 h-11 flex items-center text-red-500 mx-auto"
                                                     viewBox="0 0 20 20" fill="currentColor">
                                                    <path fill-rule="evenodd"
                                                          d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z"
                                                          clip-rule="evenodd"></path>
                                                </svg>
                                                <h4 class="text-lg font-bold">Are you sure?</h4>
                                            </div>
                                            <div class="mt-2 text-sm">
                                                <p>
                                                    Do you really want to delete this
                                                    account? This process
                                                    cannot be undone
                                                </p>
                                            </div>
                                            <div class="mt-3 flex justify-center space-x-3">
                                                <button class="px-3 py-1 rounded hover:bg-ensias-red hover:text-white border-2 border-gray-300 close-modal">
                                                    Cancel
                                                </button>
                                                <a href="<c:url value="/delete-student?studentId=${ student.studentId }" />">
                                                    <button class="px-3 py-1 bg-red-800 text-gray-200 hover:bg-ensias-red rounded">
                                                        Delete
                                                    </button>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--===========End Modal==============-->

                                </td>
                            </tr>
                            <!-- =============== End Line ===============-->
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
        <!-- ========== GRID END ============-->
    </div>
</main>
</div>
</div>
<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp"/>
