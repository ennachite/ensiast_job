<%--
  Created by IntelliJ IDEA.
  User: Soumya KADDOURI
  Date: 1/27/2022
  Time: 10:24 PM
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
<main class=" px-1">
    <!--====== JOB POSTS PART STARTS ======-->
    <div class="row justify-center">
        <div class="w-fully lg:w-1/2">
            <div class="section_title text-center pt-5">
                <h4 class="main_title">Not approved Companies accounts</h4>
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
                        <tr
                                class="text-xs font-semibold tracking-wide text-red-700 uppercase border-b  bg-gray-50 text-center ">
                            <th class="px-4 py-3t">Name</th>
                            <th class="px-4 py-3">CEO</th>
                            <th class="px-4 py-3">TIN</th>
                            <th class="px-4 py-3">Size</th>
                            <th class="px-4 py-3">Phone number</th>
                            <th class="px-4 py-3">Email address</th>
                            <th class="px-4 py-3">Number of employees</th>
                            <th class="px-4 py-3">Founded</th>
                            <th class="px-4 py-3">Description</th>
                            <th class="px-4 py-3">Approve/Reject</th>
                        </tr>
                        </thead>
                        <tbody class="bg-white divide-y ">
                        <!-- =============== Start Line ===============-->
                        <tr class="text-gray-700">
                            <td class="px-4 py-3">
                                <div class="flex items-center text-sm">
                                    <!-- Avatar with inset shadow -->
                                    <div
                                            class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                        <img class="object-cover w-full h-full rounded-full"
                                             src="assets/img/microsoft-logo.jpg"
                                             alt="" loading="lazy" />
                                        <div class="absolute inset-0 rounded-full shadow-inner"
                                             aria-hidden="true"></div>
                                    </div>
                                    <p class="font-semibold">Microsoft</p>
                                </div>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <p>Satya Nadella</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <p>6666-5555-4444</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <p>Large</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <p>+212 669696969</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <a href="mailto:Microsoft@example.com">microsoft@example.com</a>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <p>1045</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <p>1975</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <a href="#" class="main-modal modal-field">Click to see more</a>

                                <!--===========Start Modal==============-->
                                <div
                                        class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay">
                                    <div
                                            class="bg-gray-200  w-11/12 lg:w-full max-w-xl z-20 py-2 px-3 rounded-xl shadow-xl text-gray-800">
                                        <div class="flex justify-between items-center">
                                            <h4 class="text-lg font-bold text-red-900 pl-1">
                                                About the company</h4>
                                            <svg class="h-6 w-6 cursor-pointer p-1 hover:bg-gray-300 rounded-full text-red-900 close-modal"
                                                 fill="currentColor" viewBox="0 0 20 20">
                                                <path fill-rule="evenodd"
                                                      d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                                      clip-rule="evenodd"></path>
                                            </svg>
                                        </div>
                                        <div class="mt-2 text-sm text-left">
                                            <p>Lorem ipsum dolor sit amet consectetur
                                                adipisicing elit. Distinctio voluptatem eius
                                                magnam dolore rerum praesentium voluptate
                                                dolores possimus neque eum dignissimos, quis
                                                itaque est molestias qui minus hic accusantium
                                                voluptates? Lorem ipsum dolor sit amet
                                                consectetur adipisicing elit. Dolore eveniet
                                                dignissimos optio ipsam asperiores eaque
                                                magni nobis magnam consequatur, expedita,
                                                voluptas aut, cumque repellat? Quam amet
                                                necessitatibus molestias doloremque cupiditate!
                                                Lorem ipsum, dolor sit amet consectetur
                                                adipisicing elit. Tempore, reiciendis aliquid,
                                                ducimus ad totam odio itaque facilis,
                                                fugiat cum reprehenderit repellat quas ipsa
                                                error. Eligendi distinctio reprehenderit
                                                quae praesentium assumenda. Lorem ipsum dolor
                                                sit, amet consectetur adipisicing elit.
                                                Fugit modi vel corporis tempora nostrum vero.
                                                Cum ullam doloribus laborum voluptates,
                                                minima, recusandae saepe molestias tempore alias
                                                inventore quod fugit deserunt!
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!--===========End Modal==============-->

                            </td>
                            <td class="px-4 py-3">
                                <div class="flex justify-center space-x-4 text-sm">
                                    <button
                                            class="flex justify-center px-2 py-2 text-sm font-medium leading-5 text-green-500 rounded-lg hover:border-green-700 hover:border-2 "
                                            aria-label="Edit">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                                             stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                  d="M5 13l4 4L19 7" ></path>
                                        </svg>
                                    </button>

                                    <button
                                            class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-red-500 rounded-lg hover:border-red-700 hover:border-2 main-modal"
                                            aria-label="Delete">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                                             stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                  d="M6 18L18 6M6 6l12 12" ></path>
                                        </svg>
                                    </button>

                                    <!--===========Start Modal==============-->
                                    <div class="bg-black bg-opacity-70 absolute inset-0 hidden justify-center items-center overlay">
                                        <div class="bg-gray-200 max-w-sm max-h-lg py-2 px-3 rounded-xl shadow-xl text-gray-800">
                                            <div class="justify-center items-center">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                     class="w-11 h-11 flex items-center text-red-500 mx-auto" fill="none"
                                                     viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                          d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" ></path>
                                                </svg>
                                                <h4 class="text-lg font-bold">Are you sure?</h4>
                                            </div>
                                            <div class="mt-2 text-sm">
                                                <p>
                                                    Do you really want to reject this invitation of creating an account? This process
                                                    cannot be undone
                                                </p>
                                            </div>
                                            <div class="mt-3 flex justify-center space-x-3">
                                                <button
                                                        class="px-3 py-1 rounded hover:bg-ensias-red hover:text-white border-2 border-gray-300 close-modal">
                                                    Cancel
                                                </button>
                                                <button class="px-3 py-1 bg-red-800 text-gray-200 hover:bg-ensias-red rounded">
                                                    Decline
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <!--===========End Modal==============-->


                                </div>
                            </td>
                        </tr>
                        <!-- =============== End Line ===============-->
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
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />
