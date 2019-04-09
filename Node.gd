extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Button_Get_pressed():
	print("GET HTTP")
	var query = "username=myusername&email=myemail@gmail.com"
	var headers = ["User-Agent:Firefox/1.0"]
	$HttpGet.request("http://k0il.site/test.php?"+query,headers,false);
	pass # replace with function body


func _on_HttpGet_request_completed(result, response_code, headers, body):
	if result ==  HTTPRequest.RESULT_SUCCESS:
		if response_code==200:
			print(body.get_string_from_utf8())
		else:
			print("Http Error")
	pass # replace with function body


func _on_Button_Post_pressed():
	print("post")
	var query = "username=myusername&email=myemail@gmail.com"
	var headers = ["Content-Type: application/x-www-form-urlencoded","Content-Length: " + str(query.length())]
	$HttpPost.request("http://k0il.site/testpost.php?",headers,false,HTTPClient.METHOD_POST,query);
	pass # replace with function body


func _on_HttpPost_request_completed(result, response_code, headers, body):
	if result ==  HTTPRequest.RESULT_SUCCESS:
		if response_code==200:
			print(body.get_string_from_utf8())
		else:
			print("Http Error")
	pass # replace with function body
