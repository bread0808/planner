<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="author" content="SemiColonWeb">
<meta name="description"
	content="Create Speaker &amp; Bluetooth Devices Websites with Canvas Template. Get Canvas to build powerful websites easily with the Highly Customizable &amp; Best Selling Bootstrap Template, today.">

<!-- Font Imports -->
<link rel="stylesheet" href="https://use.typekit.net/gmv6nzn.css">

<!-- Core Style -->
<link rel="stylesheet" href="${path}/resources/css/style.css">

<!-- Font Icons -->
<link rel="stylesheet" href="${path}/resources/css/font-icons.css">

<!-- Plugins/Components CSS -->
<link rel="stylesheet" href="${path}/resources/css/swiper.css">

<!-- Niche Demos -->
<link rel="stylesheet" href="${path}/resources/css/speaker.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="${path}/resources/css/custom.css">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Air Datepicker -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.1.0/css/datepicker.min.css">

<!-- Document Title
	============================================= -->
<title>Demo Planner</title>

<style>
html, body {
	width: 100%;
	height: 100vh;
}

#calendar {
	width: 100%;
}

#calendar table {
	margin-bottom: 0;
}

#slider {
	height: calc(100vh - 70px);
	margin: 0 auto;
	margin-top: 0;
	justify-content: center;
	display: flex;
}

#sidebarMain {
	display: flex;
	flex-direction: column;
	position: relative;
	width: 300px;
}

#addScheduleBtn {
	position: relative;
}

/* #datepickerDiv {
		margin: 0 auto;
	} */
#datepicker {
	margin: 0 auto;
	padding-left: 0;
	padding-right: 0;
}

.sidebar {
	display: flex;
	flex-direction: column;
	width: 100%;
}

#exampleModal {
	background-color: rgba(0, 0, 0, 0.4);
}
</style>

</head>

<body class="stretched scroll-detect">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper">

		<!-- Modal -->
		<div class="modal d-none animated fadeInUpSmall faster"
			id="speakerModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div
				class="modal-dialog modal-dialog-centered ms-md-4 me-md-auto align-items-end"
				style="max-width: 48rem;">
				<div class="modal-content shadow border-0 overflow-hidden"
					style="border-radius: 20px;">
					<div class="card border-0">
						<div class="row justify-content-between g-0">
							<div class="col-sm-5"
								style="background: url('demos/speaker/images/modal.jpg') no-repeat center center/cover; min-height: 200px;"></div>
							<div class="col-sm-6">
								<div class="card-body p-5">
									<p class="mb-2 color small">Get 20% off* your first Order</p>
									<h3 class="card-title lh-sm mb-3">Bring your Music at your
										home</h3>
									<p class="fw-normal text-smaller op-06">Professionally
										evolve intermandated e-business rather than bricks-and-clicks
										markets.</p>
									<div class="subscribe-widget" data-loader="button">
										<div class="widget-subscribe-form-result"></div>
										<form id="widget-subscribe-form-modal"
											action="include/subscribe.php" method="post" class="mb-0">
											<div class="input-group">
												<input type="email" id="widget-subscribe-form-modal-email"
													name="widget-subscribe-form-modal-email"
													class="form-control required email"
													placeholder="Enter your Email Address">
												<button class="btn btn-dark h-bg-color border-0"
													type="submit">
													<i class="bi-arrow-right"></i>
												</button>
											</div>
										</form>
									</div>
									<button type="button"
										class="btn-close p-3 position-absolute top-0 end-0"
										data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Header
		============================================= -->
		<header id="header" class="header-size-sm" data-sticky-shrink="false">
			<div id="header-wrap" class="border-bottom-0">
				<div class="container">
					<div class="header-row justify-content-lg-between">

						<!-- Logo
						============================================= -->
						<div id="logo" class="me-lg-0">
							<div>
								<button name="sidebarFoldingBtn" id="sidebarFoldingBtn">접기</button>
							</div>
							<a href="index.html">canvas<span class="color">.</span></a>
						</div>
						<!-- #logo end -->

						<div class="header-misc">

							<!-- Top Cart
							============================================= -->
							<div id="top-cart" class="header-misc-icon me-3">
								<a href="#" id="top-cart-trigger"><i class="bi-basket3"></i></a>
								<div class="top-cart-content">
									<div class="top-cart-title">
										<h4 class="fw-normal">Shopping Cart</h4>
									</div>
									<div class="top-cart-items py-4">
										<p class="mb-0">Ohh! Your Basket is empty.</p>
									</div>
									<div class="top-cart-action">
										<a href="#"
											class="button button-small bg-color color bg-opacity-10 m-0">Go
											to Shop</a> <span class="top-checkout-price">$0.00</span>
									</div>
								</div>
							</div>
							<!-- #top-cart end -->

							<!-- Top Account
							============================================= -->
							<div class="header-misc-icon top-account">
								<a href="#" data-bs-toggle="dropdown" data-bs-offset="0,20"
									data-bs-auto-close="true" aria-haspopup="true"
									aria-expanded="false"><i class="bi-person-circle"></i></a>
								<div class="dropdown-menu dropdown-menu-end px-2 m-0">
									<a
										class="dropdown-item py-2 fw-medium h-bg-tranparent font-primary"
										href="#"><i class="bi-bag-check me-2"></i>Your Orders</a> <a
										class="dropdown-item py-2 fw-medium h-bg-tranparent font-primary"
										href="#"><i class="bi-person me-2"></i>Your Profile</a> <a
										class="dropdown-item py-2 fw-medium h-bg-tranparent font-primary"
										href="#"><i class="bi-box-arrow-right me-2"></i>Log Out</a>
								</div>
							</div>

						</div>

						<div class="primary-menu-trigger">
							<button class="cnvs-hamburger" type="button"
								title="Open Mobile Menu">
								<span class="cnvs-hamburger-box"><span
									class="cnvs-hamburger-inner"></span></span>
							</button>
						</div>

						<nav class="primary-menu">

							<ul class="menu-container">
								<li class="menu-item current"><a class="menu-link" href="#"><div>Home</div></a></li>
								<li class="menu-item"><a class="menu-link" href="#"><div>Shop</div></a>
									<ul class="sub-menu-container">
										<li class="menu-item"><a class="menu-link" href="#"><div>Canvas
													Pod</div></a></li>
										<li class="menu-item"><a class="menu-link" href="#"><div>Canvas
													Pod Mini</div></a></li>
										<li class="menu-item"><a class="menu-link" href="#"><div>Canvas
													EarPod</div></a></li>
									</ul></li>
								<li class="menu-item"><a class="menu-link" href="#"><div>Reviews</div></a></li>
								<li class="menu-item"><a class="menu-link" href="#"><div>Contact</div></a></li>
							</ul>

						</nav>
						<!-- #primary-menu end -->

						<form class="top-search-form" action="search.html" method="get">
							<input type="text" name="q" class="form-control" value=""
								placeholder="Type &amp; Hit Enter.." autocomplete="off">
						</form>

					</div>
				</div>
			</div>
			<div class="header-wrap-clone"></div>
		</header>
		<!-- #header end -->


		<!--Hero
		============================================= -->
		<section id="slider" class="slider-element">
			<div id="sidebarMain" class="sidebar">
				<div id="addSchedule" class="sidebar">
					<button id="addScheduleBtn" class="sidebar">일정생성</button>
				</div>
				<div id="datepickerDiv" class="sidebar">
					<div id="datepicker"></div>
				</div>
				<div id="scheduleSearchBox" class="sidebar">
					<input type="text" placeholder="일정 검색">
				</div>
				<div id="scheduleAcc" class="sidebar">
					<button type="button" class="collapsible">내 달력</button>
					<div class="calendarGroup">
						<div class="calendarItem">
							<label class="calendarCheckbox"><input
								class='calendarFilter' type="checkbox" value="정연" checked>달력1</label>
						</div>
						<div class="calendarItem">
							<label class="calendarCheckbox"><input
								class='calendarFilter' type="checkbox" value="정연" checked>달력2</label>
						</div>
						<div class="calendarItem">
							<label class="calendarCheckbox"><input
								class='calendarFilter' type="checkbox" value="정연" checked>달력3</label>
						</div>
					</div>
					<button type="button" class="collapsible">공유받은 달력</button>
					<div class="calendarGroup">
						<div class="calendarItem">
							<label class="calendarCheckbox"><input
								class='calendarFilter' type="checkbox" value="정연" checked>달력1</label>
						</div>
						<div class="calendarItem">
							<label class="calendarCheckbox"><input
								class='calendarFilter' type="checkbox" value="정연" checked>달력2</label>
						</div>
						<div class="calendarItem">
							<label class="calendarCheckbox"><input
								class='calendarFilter' type="checkbox" value="정연" checked>달력3</label>
						</div>
					</div>
				</div>
			</div>
			<div id='calendar'></div>
		</section>


		<!-- Content
		============================================= -->
		<section id="content"></section>
		<!-- #content end -->

	</div>
	<!-- #wrapper end -->

	<!-- Content
		============================================= -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modalBackground">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">일정 추가</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form>
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">제목</label> <input
									type="text" class="form-control" id="recipient-name">
							</div>
							<div class="mb-3">
								<input type="color" class="form-control" id="recipient-name">
							</div>

							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">일정 시작</label>
								<input type="datetime-local" id="startDate" class="form-control"
									placeholder="datetime-local input">
							</div>
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">일정 종료</label>
								<input type="datetime-local" id="endDate" class="form-control"
									placeholder="datetime-local input">
							</div>
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">카테고리</label>
								<select class="form-select" aria-label="Default select example">
									<option selected>카테고리</option>
									<option value="1">개인일정</option>
									<option value="2">공유일정</option>
								</select>
							</div>
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">장소</label> <input
									type="text" class="form-control" id="recipient-name">
							</div>
							<div class="mb-3">
								<label for="message-text" class="col-form-label">내용:</label>
								<textarea class="form-control" id="message-text"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">일정 생성</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" data-mobile="true">
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"
			fill="none">
			<circle cx="50" cy="50" r="40"></circle></svg>
	</div>

	<!-- JavaScripts
	============================================= -->

	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.1.0/js/datepicker.min.js"></script>
	<script src="${path}/resources/js/plugins.min.js"></script>
	<script src="${path}/resources/js/functions.bundle.js"></script>
	<script src='${path}/resources/js/index.global.js'></script>

	<script>
		
		// Accordian
		var coll = document.getElementsByClassName("collapsible");
		var sidebar = document.getElementsByClassName("sidebar");
		var addScheduleBtn = document.getElementById("addScheduleBtn");
		var i;

		for (var i = 0; i < coll.length; i++) {
			var initialContent = coll[i].nextElementSibling;
			initialContent.style.display = "block";
		}

		for (var i = 0; i < coll.length; i++) {
			coll[i].addEventListener("click", function () {
				this.classList.toggle("active");
				var content = this.nextElementSibling;
				if (content.style.display === "block") {
					content.style.display = "none";
				} else {
					content.style.display = "block";
				}
			});
		}

		// datepicker
		document.addEventListener('DOMContentLoaded', function () {
			$('#datepicker').datepicker({
				inline: true
			});
		});
    
		window.addEventListener( 'load', function() {
			var swiperThumb = new Swiper(".swiper-thumb", {
				spaceBetween: 10,
				slidesPerView: 4,
				allowTouchMove: true,
				freeMode: true,
				watchSlidesProgress: true,
			});

			var swiperContainer = new Swiper(".swiper", {
				spaceBetween: 10,
				allowTouchMove: true,
				navigation: {
					nextEl: ".swiper-button-next",
					prevEl: ".swiper-button-prev",
				},
				thumbs: {
					swiper: swiperThumb,
				},
			});
		});

		window.onload = function() {
			var container = document.getElementById("speakerModal");
			var modal = new bootstrap.Modal(container);
			modal.show();
			var sidebarStatus = true;
			sidebarFoldingBtn.onclick = function () {
				var sidebarMain = document.getElementById("sidebarMain");
				var addSchedule = document.getElementById("addSchedule");

				sidebarMain.style.width = sidebarStatus ? "0" : "300px";
				Array.from(sidebarMain.children).forEach(child => {
					if (child !== addSchedule) {
						child.style.display = sidebarStatus ? "none" : "block";
						child.style.width = sidebarStatus ? "0" : "100%";
					}
				});

				sidebarStatus = !sidebarStatus;
			};
		};
		
		
		document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
	var addScheduleBtn = document.getElementById('addScheduleBtn');
    	
		var exampleModal = document.getElementById('exampleModal');
	 
	 addScheduleBtn.addEventListener('click', function() {
			
			 var modal = new bootstrap.Modal(exampleModal);
			 modal.show();
		 });
	 

    var calendar = new FullCalendar.Calendar(calendarEl, {
		eventMouseEnter: function (info) {
			var popover = new bootstrap.Popover(info.el, {
				title: $('<div />', {
					text: info.event.title
				}).css({
					'color': info.event.backgroundColor != '' ? info.event.backgroundColor : '#3788D8',
					'font-weight': 'bold',
					'font-size': '20px'
				}),
			content: moment(info.event.start).format('HH:mm') + ' - ' + moment(info.event.end).format('HH:mm'),
			trigger: 'hover',
			delay: { show: 500, hide: 100 },
			placement: 'top',
			html: true,
			container: 'body'
			});
			setTimeout(function () {
			popover.dispose();
			}, 3000);
		},
		dateClick: function(info) {
        var container = document.getElementById("exampleModal");
        var modal = new bootstrap.Modal(container);
        modal.show();
      },
      select: function(info) {
        
      },
	  locale: 'ko',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      initialDate: '2023-01-12',
      navLinks: true, // can click day/week names to navigate views
    //   businessHours: true, // display business hours
      editable: true,
      selectable: true,
      events: [
        {
          title: 'Business Lunch',
          start: '2023-01-03T13:00:00',
          constraint: 'businessHours'
        },
        {
          title: 'Meeting',
          start: '2023-01-13T11:00:00',
          constraint: 'availableForMeeting', // defined below
          color: '#257e4a'
        },
        {
          title: 'Conference',
          start: '2023-01-18',
          end: '2023-01-20'
        },
        {
          title: 'Party',
          start: '2023-01-29T20:00:00'
        },

        // areas where "Meeting" must be dropped
        {
          groupId: 'availableForMeeting',
          start: '2023-01-11T10:00:00',
          end: '2023-01-11T16:00:00',
          display: 'background'
        },
        {
          groupId: 'availableForMeeting',
          start: '2023-01-13T10:00:00',
          end: '2023-01-13T16:00:00',
          display: 'background'
        },

        // red areas where no events can be dropped
        {
          start: '2023-01-24',
          end: '2023-01-28',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        },
        {
          start: '2023-01-06',
          end: '2023-01-08',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        }
      ]
    });

    calendar.render();
  });
	</script>
</body>
</html>
