<%--
  Created by IntelliJ IDEA.
  User: Soumya KADDOURI
  Date: 1/27/2022
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title> Admin Home</title>
</head>

<%--SideBar--%>
<jsp:include page="${pageContext.request.contextPath}/view/admin/sidebareAdmin.jsp" />

        <main class="h-full overflow-y-auto">
            <div class="container px-6 mx-auto grid">

                <!-- Cards -->
                <div class="grid gap-6 mb-8 pt-11 md:grid-cols-2 xl:grid-cols-2 content-center">
                    <!-- Card -->
                    <div class="flex items-center row-span-2 p-4 bg-white rounded-lg shadow-xs companyProfile-grid">
                        <div class="p-3 mr-4 text-orange-500 bg-orange-100 rounded-full ">
                            <svg class="w-15 h-15 " fill="currentColor" viewBox="0 0 20 20">
                                <path
                                        d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z">
                                </path>
                            </svg>
                        </div>
                        <div>
                            <p class="mb-2 text-3xl text-gray-600 ">
                                Total Members
                            </p>
                            <p class="text-xl font-semibold text-gray-700 ">
                                ${requestScope.totalMembers}
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid ">
                        <div class="p-3 mr-4 text-green-500 bg-green-100 rounded-full ">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                                 stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                      d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" ></path>
                            </svg>
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                Companies
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                ${requestScope.totalCompanies}
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid ">
                        <div class="p-3 mr-4 text-green-500 bg-green-100 rounded-full ">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                                 stroke="currentColor">
                                <path d="M12 14l9-5-9-5-9 5 9 5z" ></path>
                                <path
                                        d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z" ></path>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                      d="M12 14l9-5-9-5-9 5 9 5zm0 0l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14zm-4 6v-7.5l4-2.222" ></path>
                            </svg>
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                Students
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                ${requestScope.totalStudents}
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center row-span-2 p-4 bg-white rounded-lg shadow-xs companyProfile-grid">
                        <div class="p-3 mr-4 text-blue-600 bg-blue-100 rounded-full ">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-15 w-15" fill="none"
                                 viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                      d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" ></path>
                            </svg>
                        </div>
                        <div>
                            <p class="mb-2 text-3xl text-gray-600 ">
                                Total Offers
                            </p>
                            <p class="text-xl font-semibold text-gray-700 ">
                                ${requestScope.totalOffers}
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid ">
                        <div class="p-3 mr-4 text-blue-500 bg-blue-100 rounded-full ">
                            <img src="https://img.icons8.com/ios/50/000000/find-matching-job.png" class="h-6 w-6"
                                 alt="job offer" />
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                Job Offers
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                ${requestScope.totalJobOffers}
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid">
                        <div class="p-3 mr-4 text-teal-500 bg-teal-100 rounded-full ">
                            <img src="https://img.icons8.com/ios/50/000000/internship.png" class="h-6 w-6"
                                 alt="Internship offer" />
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                Internship Offers
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                ${requestScope.totalInternships}
                            </p>
                        </div>
                    </div>

                    <!-- Card -->
                    <div class="flex items-center p-4 row-span-2 bg-white rounded-lg shadow-xs companyProfile-grid">
                        <div class="px-4 py-4 mb-1 tracking-wide">
                            <h2 class="mt-1 font-semibold text-gray-800">106 Users reviews</h2>
                            <div class="px-8 pb-3 -mx-8 border-b">
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>5 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-7/12 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">51%</span>
                                    </div>
                                </div>
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>4 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-1/5 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">17%</span>
                                    </div>
                                </div>
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>3 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-3/12 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">19%</span>
                                    </div>
                                </div>
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>2 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-1/5 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">8%</span>
                                    </div>
                                </div>
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>1 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-2/12 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">5%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid ">
                        <div class="p-3 mr-4 text-red-500 bg-red-100 rounded-full ">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                                 stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                      d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6" ></path>
                            </svg>
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                New Users
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                376
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid">
                        <div class="p-3 mr-4 text-red-500 bg-red-100 rounded-full ">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                                 stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                      d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6" ></path>
                            </svg>
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                New Offers
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                35
                            </p>
                        </div>
                    </div>


                </div>
            </div>

        </main>
    </div>
</div>
<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />

