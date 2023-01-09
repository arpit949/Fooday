<aside id="leftsidebar" class="sidebar">
	<!-- Menu -->

	<div class="menu">
		<ul class="list">
			<li>
				<div class="sidebar-profile clearfix">
					<div class="profile-img">
						<img
							src="<%=request.getContextPath()%>/adminResources/image/user8.jpg"
							alt="profile">
					</div>
					<div class="profile-info">
						<%
							String userName = (String) session.getAttribute("userName");
						%>
						<h3>
							<%
								out.print(userName);
							%>
						</h3>
						<p>Welcome Restaurant</p>
					</div>
				</div>
			</li>

			<li class="active"><a href="index.html"> <i
					class="menu-icon fas fa-home"></i> <span>Home</span>
			</a></li>

			<li><a href="viewProduct" class="toggle"> <i
					class="menu-icon fas fa-concierge-bell"></i> <span>Mange
						Product</span>
			</a></li>
			
			<li><a href="viewRestaurantOrder.html" class="toggle"> <i
					class="menu-icon fas fa-laugh"></i> <span>Manage Order</span>
			</a></li>
			
			<li><a href="viewComplain.html" class="toggle"> <i
					class="menu-icon fas fa-thumbs-up"></i> <span>Manage Complain</span>
			</a></li>
			
			<li><a href="viewfeedback.html" class="toggle"> <i
					class="menu-icon fas fa-laugh"></i> <span>Manage Feedback</span>
			</a></li>
			
			<li><a href="/logout"> <i
					class="menu-icon fas fa-power-off"></i> <span>LogOut</span>
			</a></li>
		</ul>
	</div>

	<!-- #Menu -->
</aside>
