<div id="menu-left">

	<a href="songs_list.php">
	  	<div <?php if($left_selected == "LIST")
	  	{ echo 'class="menu-left-current-page"'; } ?>>
	  	<img src="./images/releases.png">
	  	<p><br/>LIST<br/></div></p>
	  </a>

	<a href="songs_create.php">
	  <div <?php if($left_selected == "CREATE")
	  { echo 'class="menu-left-current-page"'; } ?>>
	  <p><br/>CREATE<br/></div></p>
	</a>

	<a href="songs_update.php">
		<div <?php if($left_selected == "UPDATE")
		{ echo 'class="menu-left-current-page"'; } ?>>
		<p><br/>UPDATE<br/></div></p>
	</a>

	<a href="songs_delete.php">
		<div <?php if($left_selected == "DELETE")
		{ echo 'class="menu-left-current-page"'; } ?>>
		<p><br/>DELETE<br/></div></p>
	</a>

	<a href="songs_report.php">
		<div <?php if($left_selected == "REPORT")
		{ echo 'class="menu-left-current-page"'; } ?>>
		<p><br/>REPORT<br/></div></p>
	</a>

</div>
