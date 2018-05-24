<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<link rel="icon"
	href="${pageContext.request.contextPath}/images/icons/faviconnew.ico">
<link href="${pageContext.request.contextPath}/dist/semantic.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/mainnew.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/newicon.css"
	rel="stylesheet" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/icons/faviconnew.ico" />
<link href="${pageContext.request.contextPath}/plugins/pacejs/pace.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/plugins/datedropper/datedropper.min.css"
	rel="stylesheet" />


</head>
<body>
	<form id="mainForm">
		<div id="contextWrap">
			<div
				class="ui sidebar vertical left menu overlay  borderless visible sidemenu inverted  grey"
				style="-webkit-transition-duration: 0.1s; transition-duration: 0.1s;"
				data-color="grey">
				<a class="item logo" href="index-2.html"> <img
					src="${pageContext.request.contextPath}/images/logo.png"
					alt="stagblogo" /><img
					src="${pageContext.request.contextPath}/images/thumblogo.png"
					alt="stagblogo" class="displaynone" />
				</a>
				<div class="ui dropdown item displaynone scrolling">
					<span>Layouts</span> <i class="ion-ios-world icon"></i>
					<div class="menu">
						<div class="header">Layouts</div>
						<div class="ui divider"></div>
						<a class="item" href="sidebar.html"> Sidebar </a> <a class="item"
							href="menu.html"> Nav </a> <a class="item" href="box.html">
							Box </a> <a class="item" href="cards.html"> Cards </a> <a
							class="item" href="color.html"> Colors </a> <a class="item"
							href="comment.html"> Comment </a> <a class="item"
							href="embed.html"> Embed </a> <a class="item" href="faq.html">
							Faq </a> <a class="item" href="feed.html"> Feed </a> <a class="item"
							href="gallery.html"> Gallery </a> <a class="item"
							href="grid.html"> Grid </a> <a class="item" href="header.html">
							Header </a> <a class="item" href="timeline.html"> Timeline </a> <a
							class="item" href="message.html"> Message </a> <a class="item"
							href="price.html"> Price </a>
					</div>
				</div>
				<div class="ui dropdown item displaynone scrolling">
					<span>UI-Kit</span> <i class="ion-briefcase icon"></i>
					<div class="menu">
						<div class="header">UI-Kit</div>
						<div class="ui divider"></div>
						<a class="item" href="breadcrumb.html"> Breadcrumb </a> <a
							class="item" href="button.html"> Button </a> <a class="item"
							href="divider.html"> Divider </a> <a class="item"
							href="flag.html"> Flag </a> <a class="item" href="icon.html">
							Icon </a> <a class="item" href="image.html"> Image </a> <a
							class="item" href="label.html"> Label </a> <a class="item"
							href="list.html"> List </a>
					</div>
				</div>
				<div class="ui dropdown item displaynone scrolling">
					<span>Script</span> <i class="ion-mouse icon"></i>
					<div class="menu">
						<div class="header">UI-Kit</div>
						<div class="ui divider"></div>
						<a class="item" href="accordion.html"> Accordion </a> <a
							class="item" href="dropdown.html"> Dropdown </a> <a class="item"
							href="modal.html"> Modal </a> <a class="item"
							href="notification.html"> Notification </a> <a class="item"
							href="alert.html"> Alert </a> <a class="item"
							href="progress.html"> Progress </a> <a class="item"
							href="range-v1.html"> Range Semantic </a> <a class="item"
							href="range-v2.html"> Range Material </a> <a class="item"
							href="rating.html"> Rating </a> <a class="item" href="tab.html">
							Tab </a> <a class="item" href="tooltip.html"> Tooltip </a> <a
							class="item" href="transition.html"> Transition </a>
					</div>
				</div>
				<div class="ui dropdown item displaynone scrolling">
					<span>Pages</span> <i class="ion-bowtie icon"></i>

					<div class="menu">
						<div class="header">Pages</div>
						<div class="ui divider"></div>
						<a class="item" href="profile.html"> Profile </a> <a class="item"
							href="settings.html"> Settings </a> <a class="item"
							href="blank.html"> Blank </a> <a class="item" href="login.html">
							Sign In </a> <a class="item" href="login.html"> Sign Up </a> <a
							class="item" href="forgotpassword.html"> Forgot Password </a> <a
							class="item" href="lockme.html"> Lock Me Screen </a> <a
							class="item" href="404.html"> Error 404 </a> <a class="item"
							href="comingsoon.html"> Coming Soon </a>
					</div>
				</div>
				<div class="ui dropdown item displaynone scrolling">
					<span>Form</span> <i class="ion-paintbrush  icon"></i>

					<div class="menu">
						<div class="header">Form</div>
						<div class="ui divider"></div>
						<a class="item" href="formelements.html"> Form Element </a> <a
							class="item" href="input.html"> Input </a> <a class="item"
							href="formvalidation.html"> Form Validation </a> <a class="item"
							href="editor.html"> Html Editor </a>
					</div>
				</div>
				<div class="ui dropdown item displaynone scrolling">
					<span>Table</span> <i class="ion-flame icon"></i>

					<div class="menu">
						<div class="header">Table</div>
						<div class="ui divider"></div>
						<a class="item" href="table.html"> Static Table </a> <a
							class="item" href="datatable.html"> Datatable </a> <a
							class="item" href="editable.html"> Editable </a>
					</div>
				</div>
				<div class="ui dropdown item displaynone scrolling">
					<span>Charts</span> <i class="ion-arrow-graph-up-right icon"></i>

					<div class="menu">
						<div class="header">Charts</div>
						<div class="ui divider"></div>
						<a class="item" href="chart.html"> Charts 1 </a> <a class="item"
							href="chart-2.html"> Charts 2 </a>

					</div>
				</div>
				<div class="ui divider"></div>
			</div>
			<div class="ui right sidebar">
				<div class="ui pointing secondary two item tabular menu">
					<a class="item active" data-tab="first"><i
						class="red icon ion-chatbox-working icon"></i></a> <a class="item"
						data-tab="fourth"><i class="blue icon ion-gear-a"></i></a>
				</div>
				<div class="ui tab active" data-tab="first">
					<div class="ui small feed">
						<h4 class="ui header">Followers Activity</h4>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Abraham.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="date">3 days ago</div>
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/carol.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
									<div class="date">3 days ago</div>
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Daryl.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="date">3 days ago</div>
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/deana.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
									<div class="date">3 days ago</div>
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/enid.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="date">3 days ago</div>
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Glenn.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
									<div class="date">3 days ago</div>
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Hershell.png"
									alt="label-image">
							</div>
							<div class="content">
								<div class="date">3 days ago</div>
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Hershell.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
									<div class="date">3 days ago</div>
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Meggie.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="date">3 days ago</div>
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Michonne.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
									<div class="date">3 days ago</div>
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Rick.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="date">3 days ago</div>
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
								</div>
							</div>
						</div>
						<div class="event">
							<div class="label">
								<img
									src="${pageContext.request.contextPath}/images/avatar/people/Tara.png"
									alt="label-image" />
							</div>
							<div class="content">
								<div class="summary">
									You added <a>Jenny Hess</a> to your <a>coworker</a> group.
									<div class="date">3 days ago</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="ui tab" data-tab="fourth">
					<div class="ui form fluid">
						<div class="grouped fields">
							<label>Connection Limited</label>
							<div class="field">
								<div class="ui slider checkbox">
									<input type="radio" name="throughput" checked="checked">
									<label>20 mbps max</label>
								</div>
							</div>
							<div class="field">
								<div class="ui slider checkbox">
									<input type="radio" name="throughput"> <label>10mbps
										max</label>
								</div>
							</div>
							<div class="field">
								<div class="ui slider checkbox">
									<input type="radio" name="throughput"> <label>5mbps
										max</label>
								</div>
							</div>
							<div class="field">
								<div class="ui slider checkbox checked">
									<input type="radio" name="throughput"> <label>Unmetered</label>
								</div>
							</div>
						</div>
					</div>
					<div class="ui divider"></div>
					<div class="ui form fluid">
						<div class="grouped fields">
							<label>Notifications</label>
							<div class="field">
								<div class="ui toggle checkbox">
									<input type="checkbox" checked name="public"> <label
										class="coloring red">Enabled</label>
								</div>
							</div>
							<div class="field">
								<div class="ui toggle checkbox">
									<input type="checkbox" name="public"> <label
										class="coloring green">Updates</label>
								</div>
							</div>
							<div class="field">
								<div class="ui toggle checkbox">
									<input type="checkbox" name="public"> <label>Comments</label>
								</div>
							</div>
							<div class="field">
								<div class="ui toggle checkbox">
									<input type="checkbox" name="public"> <label>Chat</label>
								</div>
							</div>
						</div>
					</div>
					<div class="ui divider"></div>

					<h4 class="ui header">Navbar Color</h4>
					<div class="ui basic segment">

						<ul class="colorlist">
							<li><a class="ui segment yellow inverted"
								data-addClass="inverted yellow"> </a></li>
							<li><a class="ui segment red inverted"
								data-addClass="inverted red"> </a></li>
							<li><a class="ui segment blue inverted"
								data-addClass="inverted blue"> </a></li>
							<li><a class="ui segment black inverted"
								data-addClass="inverted black"> </a></li>
							<li><a class="ui segment orange inverted"
								data-addClass="inverted orange"> </a></li>
							<li><a class="ui segment pink inverted"
								data-addClass="inverted pink"> </a></li>
							<li><a class="ui segment green inverted"
								data-addClass="inverted green"> </a></li>
							<li><a class="ui segment purple inverted"
								data-addClass="inverted purple"> </a></li>
							<li><a class="ui segment violet inverted"
								data-addClass="inverted violet"> </a></li>
							<li><a class="ui segment brown inverted"
								data-addClass="inverted brown"> </a></li>
							<li><a class="ui segment teal inverted"
								data-addClass="inverted teal"> </a></li>
							<li><a class="ui segment greenli inverted"
								data-addClass="inverted greenli"> </a></li>
							<li><a class="ui segment grey inverted"
								data-addClass="inverted grey"> </a></li>
							<li><a class="ui segment redli inverted"
								data-addClass="inverted redli"> </a></li>
							<li><a class="ui segment yellowli inverted"
								data-addClass="inverted yellowli"> </a></li>
							<li><a class="ui segment blueli inverted"
								data-addClass="inverted blueli"> </a></li>
							<li><a class="ui segment darkpurpleli inverted"
								data-addClass="inverted darkpurpleli"> </a></li>
							<li><a class="ui segment darkorangeli inverted"
								data-addClass="inverted darkorangeli"> </a></li>
							<li><a class="ui segment greenli2 inverted"
								data-addClass="inverted greenli2"> </a></li>
							<li><a class="ui segment pinkli inverted"
								data-addClass="inverted pinkli"> </a></li>
							<li><a class="ui segment lightyellowli inverted"
								data-addClass="inverted lightyellowli"> </a></li>
							<li><a class="ui segment darkli inverted"
								data-addClass="inverted darkli"> </a></li>
							<li><a class="ui segment lightbrownli inverted"
								data-addClass="inverted lightbrownli"> </a></li>
						</ul>
					</div>
					<h4 class="ui header">Sidebar Color</h4>
					<div class="ui basic segment">

						<ul class="sidecolor">
							<li><a class="ui segment yellow inverted"
								data-addClass="inverted yellow"> </a></li>
							<li><a class="ui segment red inverted"
								data-addClass="inverted red"> </a></li>
							<li><a class="ui segment blue inverted"
								data-addClass="inverted blue"> </a></li>
							<li><a class="ui segment black inverted"
								data-addClass="inverted black"> </a></li>
							<li><a class="ui segment orange inverted"
								data-addClass="inverted orange"> </a></li>
							<li><a class="ui segment pink inverted"
								data-addClass="inverted pink"> </a></li>
							<li><a class="ui segment green inverted"
								data-addClass="inverted green"> </a></li>
							<li><a class="ui segment purple inverted"
								data-addClass="inverted purple"> </a></li>
							<li><a class="ui segment violet inverted"
								data-addClass="inverted violet"> </a></li>
							<li><a class="ui segment brown inverted"
								data-addClass="inverted brown"> </a></li>
							<li><a class="ui segment teal inverted"
								data-addClass="inverted teal"> </a></li>
							<li><a class="ui segment greenli inverted"
								data-addClass="inverted greenli"> </a></li>
							<li><a class="ui segment grey inverted"
								data-addClass="inverted grey"> </a></li>
							<li><a class="ui segment redli inverted"
								data-addClass="inverted redli"> </a></li>
							<li><a class="ui segment yellowli inverted"
								data-addClass="inverted yellowli"> </a></li>
							<li><a class="ui segment blueli inverted"
								data-addClass="inverted blueli"> </a></li>
							<li><a class="ui segment darkpurpleli inverted"
								data-addClass="inverted darkpurpleli"> </a></li>
							<li><a class="ui segment darkorangeli inverted"
								data-addClass="inverted darkorangeli"> </a></li>
							<li><a class="ui segment greenli2 inverted"
								data-addClass="inverted greenli2"> </a></li>
							<li><a class="ui segment pinkli inverted"
								data-addClass="inverted pinkli"> </a></li>
							<li><a class="ui segment lightyellowli inverted"
								data-addClass="inverted lightyellowli"> </a></li>
							<li><a class="ui segment darkli inverted"
								data-addClass="inverted darkli"> </a></li>
							<li><a class="ui segment lightbrownli inverted"
								data-addClass="inverted lightbrownli"> </a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="pusher">
				<div class="navslide navwrap">
					<div class="ui menu icon borderless grid"
						data-color="inverted white">
						<a class="item labeled openbtn"> <i
							class="ion-navicon-round big icon"></i>
						</a> <a class="item labeled expandit"
							onclick="toggleFullScreen(document.body)"> <i
							class="ion-arrow-expand big icon"></i>
						</a>
						<div class="item ui colhidden">
							<div class="ui icon input">
								<input type="text" placeholder="Search..."> <i
									class="search icon"></i>
							</div>
						</div>
						<div class="right menu colhidden">

							<div class="ui dropdown item labeled icon">
								<i class="bell icon"></i>
								<div class="ui red label mini circular">6</div>
								<div class="menu">
									<div class="header">People You Might Know</div>
									<div class="item">
										<img class="ui avatar image"
											src="${pageContext.request.contextPath}/images/avatar/people/enid.png"
											alt="label-image" /> Janice Robinson
									</div>
									<div class="item">
										<img class="ui avatar image"
											src="${pageContext.request.contextPath}/images/avatar/people/Hershell.png"
											alt="label-image" /> Cynthia May
									</div>
									<div class="item">
										<img class="ui avatar image"
											src="${pageContext.request.contextPath}/images/avatar/people/Rick.png"
											alt="label-image" /> Hugh Carter
									</div>
									<div class="header">Your Friends' Friends</div>
									<div class="item">
										<img class="ui avatar image"
											src="${pageContext.request.contextPath}/images/avatar/people/Meggie.png"
											alt="label-image" /> Pauline Cain
									</div>
									<div class="item">
										<img class="ui avatar image"
											src="${pageContext.request.contextPath}/images/avatar/people/Glenn.png"
											alt="label-image" /> Marco Beck
									</div>
									<div class="item">
										<img class="ui avatar image"
											src="${pageContext.request.contextPath}/images/avatar/people/Daryl.png"
											alt="label-image" /> Sue Quinn
									</div>
								</div>
							</div>
							<div class="ui dropdown item">
								Language <i class="dropdown icon"></i>
								<div class="menu">
									<a class="item"><i class="united kingdom flag"></i>English</a>
									<a class="item"><i class="turkey flag"></i>Turkish</a> <a
										class="item"><i class="spain flag"></i>Spanish</a>
								</div>
							</div>
							<div class="ui dropdown item">
								<img class="ui mini circular image"
									src="${pageContext.request.contextPath}/images/avatar/people/enid.png"
									alt="label-image" />
								<div class="menu">
									<a class="item" href="mail.html">Inbox</a> <a class="item"
										href="profile.html">Profile</a> <a class="item"
										href="settings.html">Settings</a>
									<div class="ui divider"></div>
									<a class="item">Need Help?</a> <a class="item"
										href="login.html">Sign Out</a>
								</div>
							</div>
							<a class="item labeled rightsidebar computer only"> <i
								class="ion-wrench large icon"></i>
							</a>

						</div>
					</div>
				</div>
				<div class="mainWrap navslide profilepage">
					<div class="ui equal width left aligned padded grid stackable">
						<!--Site Content-->
						<!--Site Content-->

						<div
							class="sixteen wide tablet sixteen wide computer column profileheader row no-padding"
							style="height: 180px">
							<div class="column  left floated">
								<div class="ui items">
									<div class="item">
										<a class="ui small circular image"> <img
											src="${pageContext.request.contextPath}${userData.photo}"
											alt="label-image" /> <i class="circle mini red icon avt"
											data-content="Offline" data-variation="inverted redli"></i>
										</a>
										<div class="middle aligned content hiddenui">
											<div class="header">${userData.firstName}&nbsp;&nbsp;${userData.lastName}</div>
											<div class="meta">
												${userData.designation}.<br>${userData.city.cityName}.
												<br>${userData.city.state.stateName}. <br>${userData.city.state.country.countryName}.
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="column hiddenui">
								<div class="description right aligned">
									<button class="ui circular facebook icon button">
										<i class="facebook icon"></i>
									</button>
									<button class="ui circular twitter icon button">
										<i class="twitter icon"></i>
									</button>
									<button class="ui circular linkedin icon button">
										<i class="linkedin icon"></i>
									</button>
									<button class="ui circular google plus icon button">
										<i class="google plus icon"></i>
									</button>
									<button class="ui circular instagram icon button">
										<i class="instagram icon"></i>
									</button>
									<div class="ui divider"></div>
									<button class="ui inverted black button follow">Follow</button>
								</div>
							</div>
						</div>
						<div class="row">
							<jsp:include page="complaintData.jsp">
								<jsp:param name="complaintData" value="${complaintData}"></jsp:param>
								<jsp:param name="dataAvailabel" value="${dataAvailabel}"></jsp:param>
								<jsp:param name="complaintTypes" value="${complaintTypes}"></jsp:param>
								<jsp:param name="categoryList" value="${categoryList}"></jsp:param>
								<jsp:param name="statusList" value="${statusList}"></jsp:param>
								<jsp:param name="user" value="${user}"></jsp:param>
							</jsp:include>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/dist/semantic.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/AjaxFunctions.js"></script>
	<script src="${pageContext.request.contextPath}/js/validations.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/cookie/js.cookie.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/nicescrool/jquery.nicescroll.min.js"></script>

	<script data-pace-options='{ "ajax": false }'
		src="${pageContext.request.contextPath}/plugins/pacejs/pace.js"></script>

	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/js/welcome/welcome.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datedropper/datedropper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datedropper/datedropper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/complaintData/complaintData.js"></script>

	<script>
		//some tooltip function
		$(".avt").popup({
			position : "top center"
		});
		//some tooltip function
	</script>
</body>
</html>