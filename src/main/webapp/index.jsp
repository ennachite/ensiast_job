<jsp:include page="header.jsp" />
    <!-- Title -->
    <title>ENSIAST JOB: Log In or Sign Up</title>
</head>
<body>

<jsp:include page="preloader.jsp" />

<!--====== HEADER PART START ======-->
<section class="header_area">
    <div class="navbar-area bg-white">
        <div class="container relative">
            <div class="row items-center">
                <div class="w-full">
                    <nav class="flex items-center justify-between pt-2 navbar navbar-expand-lg">
                        <a href="${pageContext.request.contextPath}/" class="navbar-brand mr-5">
                            <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo">
                        </a>
                        <button class="block navbar-toggler focus:outline-none lg:hidden" type="button" data-toggle="collapse" data-target="#navbarOne" aria-controls="navbarOne" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                        </button>

                        <div class="absolute left-0 z-20 hidden w-full px-5 py-1 duration-300 bg-white lg:w-auto collapse navbar-collapse lg:block top-full mt-full lg:static lg:bg-transparent shadow lg:shadow-none" id="navbarOne">
                            <ul id="nav" class="items-center content-start mr-auto lg:justify-end navbar-nav lg:flex">
                                <li class="nav-item ml-5 lg:ml-11">
                                    <a class="page-scroll active" href="#home">Home</a>
                                </li>
                                <li class="nav-item ml-5 lg:ml-11">
                                    <a class="page-scroll" href="#about">About</a>
                                </li>
                                <li class="nav-item ml-5 lg:ml-11">
                                    <a class="page-scroll" href="#services">Services</a>
                                </li>
                                <li class="nav-item ml-5 lg:ml-11">
                                    <a class="page-scroll" href="#team">Team</a>
                                </li>
                                <li class="nav-item ml-5 lg:ml-11">
                                    <a class="page-scroll" href="#contact">Contact</a>
                                </li>
                                <li class="nav-item ml-5 lg:ml-11">
                                    <a href="/login">Login</a>
                                </li>
                                <li class="nav-item ml-5 lg:ml-11">
                                    <a>
                                        <button type="button" class="signup-btn main-modal" href="#">Signup</button>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- navbar collapse -->
                    </nav>
                    <!-- navbar -->
                </div>
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- header navbar -->

    <div id="home" class="header_hero bg-gray relative z-10 overflow-hidden lg:flex items-center">
        <div class="hero_shape shape_1">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-1.svg" alt="shape">
        </div>
        <div class="hero_shape shape_2">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-2.svg" alt="shape">
        </div>
        <div class="hero_shape shape_3">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-3.svg" alt="shape">
        </div>
        <div class="hero_shape shape_4">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-4.svg" alt="shape">
        </div>
        <div class="hero_shape shape_6">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-1.svg" alt="shape">
        </div>
        <div class="hero_shape shape_7">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-4.svg" alt="shape">
        </div>
        <div class="hero_shape shape_8">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-3.svg" alt="shape">
        </div>
        <div class="hero_shape shape_9">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-2.svg" alt="shape">
        </div>
        <div class="hero_shape shape_10">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-4.svg" alt="shape">
        </div>
        <div class="hero_shape shape_11">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-1.svg" alt="shape">
        </div>
        <div class="hero_shape shape_12">
            <img src="${pageContext.request.contextPath}/assets/img/shape/shape-2.svg" alt="shape">
        </div>

        <div class="container">
            <div class="row">
                <div class="w-full lg:w-1/2">
                    <div class="header_hero_content pt-150 lg:pt-0">
                        <h2 class="hero_title text-2xl sm:text-4xl md:text-5xl lg:text-4xl xl:text-5xl font-extrabold">Welcome to your professional community with <span class="text-theme-color">ENSIAS JOB</span></h2>
                        <h4 class="mt-8 lg:mr-8">Post your job or internship for hundreds of ENSIASTS</h4>
                        <div class="hero-btn mt-10">
                            <a class="main-btn main-modal" href="#">Signup</a>
                        </div>
                    </div>
                    <!-- header hero content -->
                </div>
            </div>
            <!-- row -->
        </div>
        <!-- container -->
        <div class="header_shape hidden lg:block"></div>

        <div class="header_image flex items-center">
            <div class="image 2xl:pl-25">
                <img src="${pageContext.request.contextPath}/assets/img/header-image.svg" alt="Header Image">
            </div>
        </div>
        <!-- header image -->

        <!-- =================== Start Modal Type user ====================-->
        <div class="bg-black bg-opacity-80 absolute inset-0 hidden justify-center items-center overlay">
            <div class="bg-gray-200 max-w-lg pt-2 pb-5 px-3 rounded shadow-xl text-gray-800">
                <div class="flex justify-between items-center">
                    <h4 class="text-lg font-bold">Are you a?</h4>
                    <svg class="h-6 w-6 cursor-pointer p-1 hover:bg-gray-300 rounded-full close-modal" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                    </svg>
                </div>
                <div class="mt-3 flex justify-between space-x-3">
                    <a href="${pageContext.request.contextPath}/signup-student">
                        <button class="flex items-center justify-between px-10 py-4 font-medium leading-5 text-white transition-colors duration-150 bg-red-800 border border-transparent rounded-lg hover:bg-ensias-red">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 mr-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path d="M12 14l9-5-9-5-9 5 9 5z"></path>
                                <path d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z"></path>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 14l9-5-9-5-9 5 9 5zm0 0l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14zm-4 6v-7.5l4-2.222"></path>
                            </svg>
                            Student
                        </button>
                    </a>
                    <a href="#?">
                        <button class="flex items-center justify-between px-10 py-4 font-medium leading-5 text-white transition-colors duration-150 bg-red-800 border border-transparent rounded-lg hover:bg-ensias-red">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 mr-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 14v3m4-3v3m4-3v3M3 21h18M3 10h18M3 7l9-4 9 4M4 10h16v11H4V10z"></path>
                            </svg>
                            Company
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <!-- =================== End Modal Type user ====================-->

    </div>
    <!-- header hero -->
</section>
<!--====== HEADER PART ENDS ======-->

<!--====== ABOUT PART START ======-->
<section class="services_area pt-120" id="about">
    <div class="container">
        <div class="row justify-center">
            <div class="w-full lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h5 class="sub_title ">About</h5>
                    <h4 class="main_title">ENSIAS</h4>
                    <p class="text-black text-xl">Welcome to ENSIAST JOB, the Morocco's largest professional network with more than +4000 members in territories worldwide.</p>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center">
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-4/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-write"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5">
                        <h3 class="services_title text-black font-semibold text-xl md:text-3xl">History & Reputation</h3>
                        <p class="mt-4">Excellence in computer science training and research since its creation in 1992. <br> National and international recognition as a leader in the field of ICT in Morocco in the face of the challenges of globalization and technological change.</p>
                    </div>
                </div>
                <!-- single services -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-4/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-users"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5">
                        <h3 class="services_title text-black font-semibold text-xl md:text-3xl">Partners & Alumnis</h3>
                        <p class="mt-4">Seal of Quality recognized both by its domestic and foreign institutional partners as well as by recruiting organizations. <br> The integration of the alumnis is 100% in a very short period of no more than 5 months after graduation.</p>
                    </div>
                </div>
                <!-- single services -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-4/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-cup"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5">
                        <h3 class="services_title text-black font-semibold text-xl md:text-3xl">Leadership</h3>
                        <p class="mt-4">Adequacy of training to the needs of Moroccan companies and to government guidelines and the needs of international cooperation for trade and mobility. <br> Practical skills in various IT projects and experiences through various work placements.</p>
                    </div>
                </div>
                <!-- single services -->
            </div>
        </div>
        <!-- row -->
    </div>
    <!-- container -->
</section>
<!--====== ABOUT PART ENDS ======-->

<!--====== SPECIALTIES PART STARTS ======-->
<section id="services" class="services_area pt-120 pb-120">
    <div class="container">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Specialties</h4>
                    <h5 class="sub_title mt-4">Innovation through its teaching methods and its evolving and diversified training curriculum in 9 specialties</h5>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center">
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z" />
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(GL)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z" />
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(IDSIT)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(BI&A)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(SSI)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(SSE)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(2SCL)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(2IA)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(IDF)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
            <div class="w-full sm:w-10/12 md:w-6/12 lg:3/12">
                <div class="single_services text-center mt-8 mx-3">
                    <div class="services_icon">
                        <i class="lni lni-layout"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="94" height="92" viewBox="0 0 94 92">
                            <path class="services_shape" id="Polygon_12" data-name="Polygon 12" d="M42.212,2.315a11,11,0,0,1,9.576,0l28.138,13.6a11,11,0,0,1,5.938,7.465L92.83,54.018A11,11,0,0,1,90.717,63.3L71.22,87.842A11,11,0,0,1,62.607,92H31.393a11,11,0,0,1-8.613-4.158L3.283,63.3A11,11,0,0,1,1.17,54.018L8.136,23.383a11,11,0,0,1,5.938-7.465Z"></path>
                        </svg>
                    </div>
                    <div class="services_content mt-5 xl:mt-10">
                        <h3 class="services_title text-black font-semibold text-xl md:text-2xl lg:text-xl xl:text-3xl">(GD)</h3>
                        <p class="mt-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam velit hic distinctio perferendis cupiditate labore.</p>
                    </div>
                </div>
                <!-- single service -->
            </div>
        </div>
    </div>
</section>
<!--====== SPECIALTIES PART ENDS ======-->

<!--====== TEAM PART STARTS ======-->
<section id="team" class="team_area bg-gray pt-120 pb-120">
    <div class="container">
        <div class="row justify-center">
            <div class="w-full lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h5 class="sub_title">Team</h5>
                    <h4 class="main_title">Meet Our Team Members</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="team_wrapper relative">
            <div class="row team_active">
                <div class="w-full lg:w-6/12">
                    <div class="single_team_item mx-auto">
                        <div class="single_team mx-3">
                            <div class="team_image relative">
                                <img src="assets/img/team-1.jpg" alt="team" class="w-full">
                                <ul class="social absolute top-4 right-8">
                                    <li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
                                    <li><a href="#"><i class="lni lni-twitter-filled"></i></a></li>
                                    <li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
                                </ul>
                            </div>
                            <div class="team_content py-5 px-8 relative">
                                <h4 class="team_name text-xl md:text-2xl"><a href="#" class="text-black group-hover:text-white">Soumya Kaddouri</a></h4>
                                <p class="mt-2 transition-all duration-300 group-hover:text-white">Founder & CEO</p>
                            </div>
                        </div> <!-- single team -->
                    </div>
                </div>
                <div class="w-full lg:w-6/12">
                    <div class="single_team_item mx-auto">
                        <div class="single_team mx-3">
                            <div class="team_image relative">
                                <img src="assets/img/team-2.jpg" alt="team" class="w-full">
                                <ul class="social absolute top-4 right-8">
                                    <li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
                                    <li><a href="#"><i class="lni lni-twitter-filled"></i></a></li>
                                    <li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
                                </ul>
                            </div>
                            <div class="team_content py-5 px-8 relative">
                                <h4 class="team_name text-xl md:text-2xl"><a href="#" class="text-black group-hover:text-white">Oussama Ennchite</a></h4>
                                <p class="mt-2 transition-all duration-300 group-hover:text-white">Software Engineer & CTO</p>
                            </div>
                        </div> <!-- single team -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--====== TEAM PART ENDS ======-->

<!--====== CONTACT PART START ======-->
<section id="contact" class="contact_area relative pt-18 pb-120">
    <div class="contact_image flex items-center justify-end">
        <div class="image lg:pr-13">
            <img src="assets/img/contact.svg" alt="about">
        </div>
    </div>
    <!-- contact image -->

    <div class="container">
        <div class="row justify-end">
            <div class="w-full lg:w-1/2">
                <div class="contact_wrapper mt-11">
                    <div class="section_title pb-4">
                        <h5 class="sub_title">Contact</h5>
                        <h5 class="main_title">Get In Touch</h5>
                        <p>Don't Hesitate to contact with us for any kind of information</p>
                    </div>
                    <!-- section title -->
                    <div class="contact_form">
                        <form action="" id="contact-form" method="POST">
                            <div class="row">
                                <div class="w-full md:w-1/2">
                                    <div class="mx-3">
                                        <div class="single_form mt-8">
                                            <input name="name" id="name" type="text" placeholder="Name" class="w-full rounded-md py-4 px-4 border border-solid border-body-color">
                                        </div>
                                        <!-- single form -->
                                    </div>
                                </div>
                                <div class="w-full md:w-1/2">
                                    <div class="mx-3">
                                        <div class="single_form mt-8">
                                            <input name="email" id="email" type="email" placeholder="Email" class="w-full rounded-md py-4 px-4 border border-solid border-body-color">
                                        </div>
                                        <!-- single form -->
                                    </div>
                                </div>
                                <div class="w-full">
                                    <div class="mx-3">
                                        <div class="single_form mt-8">
                                            <textarea name="message" id="message" placeholder="Message" rows="5" class="w-full rounded-md py-4 px-6 border border-solid border-body-color resize-none"></textarea>
                                        </div>
                                        <!-- single form -->
                                    </div>
                                </div>
                                <p class="form-message mx-3"></p>
                                <div class="w-full">
                                    <div class="mx-3">
                                        <div class="single_form mt-8">
                                            <button type="submit" class="main-btn contact-btn">Submit</button>
                                        </div>
                                        <!-- single form -->
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--====== CONTACT PART ENDS ======-->

<jsp:include page="footer.jsp" />
