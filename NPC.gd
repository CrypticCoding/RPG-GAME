if global_position.distance_to(whatToFollow.global_position) < follow_distance:
		# Dealing With Y Axis Is Super Hard!!!!!!!!!!!
		if (floor(global_position.y) < floor(whatToFollow.global_position.y)):
			
			if (global_position.y < whatToFollow.global_position.y):
				
				motion = Vector2.DOWN * speed
				movement = "Walk_down"
				animPlayer.play(movement, -speedMultiplier)
			
			elif(global_position.y > whatToFollow.global_position.y):
				motion = Vector2.UP * speed
				movement = "Walk_up"
				animPlayer.play(movement, -speedMultiplier)
		
		elif (floor(global_position.y) > floor(whatToFollow.global_position.y)):
			
			if (global_position.y < whatToFollow.global_position.y):
				
				motion = Vector2.DOWN * speed
				movement = "Walk_down"
				animPlayer.play(movement, -speedMultiplier)
			
			elif(global_position.y > whatToFollow.global_position.y):
				motion = Vector2.UP * speed
				movement = "Walk_up"
				animPlayer.play(movement, -speedMultiplier)
			
		
	
		elif (global_position.x < whatToFollow.global_position.x):
			motion = Vector2.RIGHT * speed
			# Play Left Animation
			movement = "Walk_right"
			animPlayer.play(movement, -speedMultiplier)
			
		elif (global_position.x > whatToFollow.global_position.x):
			motion = Vector2.LEFT * speed
			movement = "Walk_left"
			animPlayer.play(movement, -speedMultiplier)
		
		
		
	
	else:
		motion = Vector2.ZERO
		if !moving:
			animPlayer.stop()
			match movement:
				"Walk_left":
					animPlayer.stop()
					animPlayer.play("Idle_left")
				"Walk_right":
					animPlayer.stop()
					animPlayer.play("Idle_right")
				"Walk_up":
					animPlayer.stop()
					animPlayer.play("Idle_up")
				"Walk_down":
					animPlayer.stop()
					animPlayer.play("Idle_down")
		
