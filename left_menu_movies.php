<div id="menu-left">

	<a href="movies_list.php">
	  	<div <?php if($left_selected == "LIST")
	  	{ echo 'class="menu-left-current-page"'; } ?>>
	  	<img src="./images/releases.png">
	  	<p><br/>LIST<br/></div></p>
	  </a>

	<a href="movies_create.php">
	  	<div <?php if($left_selected == "CREATE")
	  	{ echo 'class="menu-left-current-page"'; } ?>>
		<p><br/>CREATE<br/></div></p>
	</a>

	<a href="movies_update.php">
		<div <?php if($left_selected == "UPDATE")
		{ echo 'class="menu-left-current-page"'; } ?>>
		<p><br/>UPDATE<br/></div></p>
	</a>

	<a href="movies_delete.php">
		<div <?php if($left_selected == "DELETE")
		{ echo 'class="menu-left-current-page"'; } ?>>
		<p><br/>DELETE<br/></div></p>
	</a>

	<a href="movies_report.php">
		<div <?php if($left_selected == "REPORT")
		{ echo 'class="menu-left-current-page"'; } ?>>
	  	<p><br/>REPORT<br/></div></p>
	</a>

	<a href="movies_extended.php">
	  	<div <?php if($left_selected == "EXTENDED")
	  	{ echo 'class="menu-left-current-page"'; } ?>>
		<p><br/>EXTENDED<br/></div></p>
	</a>

	<a href="movies_multimedia.php">
		<div <?php if($left_selected == "MULTIMEDIA")
		{ echo 'class="menu-left-current-page"'; } ?>>
	  	<p><br/>MULTIMEDIA<br/></div></p>
	</a>	

	<div>
	<p><br/>RELATIOSHIPS<br/></p>
	</div>

	<a href="movies_songs_relation.php">
		<div <?php if($left_selected == "SONGS")
		{ echo 'class="menu-left-current-page"'; } ?>>
	  	<p><br/>MOVIES-SONGS<br/></div></p>
	</a>

	<a href="movies_people_relation.php">
		<div <?php if($left_selected == "PEOPLE")
		{ echo 'class="menu-left-current-page"'; } ?>>
	  	<p><br/>MOVIES-PEOPLE<br/></div></p>
	</a>

	<a href="movies_extended_relation.php">
		<div <?php if($left_selected == "EXTENDED_RELATION")
		{ echo 'class="menu-left-current-page"'; } ?>>
		<p><br/>MOVIES-EXTENDED<br/></div></p>
	</a>

	<a href="movies_multimedia_relation.php">
		<div <?php if($left_selected == "MULTIMEDIA_RELATION")
		{ echo 'class="menu-left-current-page"'; } ?>>
	  	<p><br/>MOVIES-MULTIMEDIA<br/></div></p>
</div>
