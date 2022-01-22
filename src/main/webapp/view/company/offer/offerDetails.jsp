<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title> ${ sessionScope.company.companyName }'s Home</title>
</head>
<body>
<%--Preloader--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp" />

<%--Navbar--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/navbar.jsp" />

<!--====== JOB POSTS PART STARTS ======-->
<section class="pt-120 pb-120">
    <div class="">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Job Offer Details</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left w-12/12">
            <!-- ========== GRID START ============-->
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
                <div class="grid_offer text-center mt-8 mx-3">
                    <h2 class="my-6 text-2xl font-semibold text-gray-700">
                        Platform Engineer
                    </h2>
                    <!-- General elements -->
                    <div class="justify-left text-left">
                        <p class="pb-2 flex border-r-4 border-white">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                            </svg>
                            DISH - Denver, CO
                        </p>
                        <p class="pb-2 flex border-r-4 border-white">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                            </svg>
                            Full time job
                        </p>
                        <p>
                            At DISH Wireless, we re imagine connectivity through new
                            platforms, new business models and new ways of thinking.,<br />

                            Today, we are building America’s first cloud-native 5G network
                            to transform the way we live, work and play with unlimited
                            potential. Our teams operate at the intersection of wireless,
                            data analytics, AI and the cloud to create something
                            state-of-the-art, radically original, and truly unlike what
                            anyone else can. <br />

                            Navigating an ambiguous future, our mission is clear. We adapt
                            to, and drive, change for all. <br />
                            <strong>High Level Responsibilities :</strong><br />
                            As a Jr. Platform Engineer, you will support in the capture,
                            documentation and implementation of customer requirements. You
                            will be in a role with partners and other stakeholders to:
                            <br />
                            Install, upgrade and configure applications and potentially
                            other third-party software components required by these
                            applications Implement customized workflows in our Mediation
                            COTS (customer-off-the-shelf) application <br />
                            Create, document and support execution of test plans and cases
                            <br />
                            Assist in the integration between the Revenue Management
                            platforms and the network, BSS (Business Support Systems) and
                            OSS (Operational Support Systems) for the complete life-cycle
                            of charging, rating and billing <br />
                            Be responsible for the technical deliverables assigned to you
                            from estimating, designing, configuring and unit testing these
                            and ensuring these are of a high standard of quality <br />
                        </p>
                        <a class="flex items-center justify-center p-4 mb-8 text-sm font-semibold text-white bg-ensias-red rounded-lg shadow-md focus:outline-none mt-3" href="companyProfile.html" >
                            <button type="submit">Back to home</button>
                            <div class="flex items-center">
                                <span></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- ========== GRID END ============-->
        </div>
    </div>
</section>
<!--====== JOB POSTS PART END ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />