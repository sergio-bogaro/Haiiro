extends Node2D

func _on_DefeatArea2d_body_entered(body):
	SoundPlayer.hitSound()
	body.queue_free()



