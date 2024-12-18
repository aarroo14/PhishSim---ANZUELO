# res://Scripts/global.gd
extends Node

var ads = 0

var settings_file_path = "res://Scripts/Data/setting.json"

var user_tasks = {
	0: {
		"Name": "Manage my Social Page for a day",
		"Description": "Im gonna "
	}
}

var users = {
	"0" : 
	{
	"%user%status" : "Real",
	"%user%profile" : "", ##start in 1
	"%user%banner" : "", ##start in 1
	"%user%" : "user",
	"%@username%" : "@user",
	"%user%intro" : "What is happening?",
	"%user%info" : "INFO",
	"%user%check" : "True", ## icons
	"%user%commentnumber" : "2", ##max 15, 0 - 15.
	"%user%blocks" : 
		{
		"0" : 
			{
			"comment" : "In the waning days of World War II, the village of Oradour-sur-Glane in France bore witness to an unspeakable atrocity. On June 10, 1944, Nazi soldiers surrounded the town, rounding up its residents under the guise of identity checks. Men were led to barns, women and children to the church. Without warning, gunfire erupted in the barns, and the church was set ablaze with grenades and fuel, leaving nearly the entire population—642 people—dead in a single day. The ruins of Oradour remain untouched to this day, a chilling testament to human cruelty.",
			"reply" : "100",
			"repost" : "400",
			"like" : "1000"
			},
		"1" :
			{
			"comment" : "...1",
			"reply" : "...1",
			"repost" : "...1",
			"like" : "...1"
			}
		}
	}
}

# Dictionary containing power-up data
var power_ups = {
	0: {
		"Name": "Firewall Shield",
		"Description": "Blocks one phishing attack automatically."
	},
	1: {
		"Name": "Phish Finder",
		"Description": "Highlights phishing links for 10 seconds."
	},
	2: {
		"Name": "Email Analyzer",
		"Description": "Shows detailed sender information to detect suspicious emails."
	},
	3: {
		"Name": "Time Freeze",
		"Description": "Pauses all incoming emails for 5 seconds to analyze threats."
	},
	4: {
		"Name": "Trusted Contacts",
		"Description": "Marks emails from verified senders as safe automatically."
	},
	5: {
		"Name": "Decryption Key",
		"Description": "Decodes hidden text in suspicious links or attachments."
	},
	6: {
		"Name": "Anti-Malware Drone",
		"Description": "Scans and neutralizes malicious attachments instantly."
	},
	7: {
		"Name": "Security Quiz Boost",
		"Description": "Provides hints for identifying phishing characteristics in emails."
	},
	8: {
		"Name": "Link Validator",
		"Description": "Displays the true URL behind shortened links or disguised text."
	},
	9: {
		"Name": "Double Verification",
		"Description": "Prompts a second opinion for risky actions, reducing errors."
	}
}


# Load the selected language from settings.json
func load_language_from_settings() -> String:
	var file = FileAccess.open(settings_file_path, FileAccess.READ)
	if file:
		var json_string = file.get_as_text()
		file.close()
		
		var json = JSON.parse_string(json_string)
		if typeof(json) == TYPE_DICTIONARY and json.has("user"):
			var user_data = json["user"]
			if user_data.has("gameplay") and user_data["gameplay"].has("language"):
				return user_data["gameplay"]["language"]
			else:
				print("Error: Could not find 'language' in settings.")
		else:
			print("Error: Could not find 'user' in settings.")
	return "English"
	
# Load the selected language from settings.json
func load_resolution_from_settings() -> String:
	var file = FileAccess.open(settings_file_path, FileAccess.READ)
	if file:
		var json_string = file.get_as_text()
		file.close()
		
		var json = JSON.parse_string(json_string)
		if typeof(json) == TYPE_DICTIONARY and json.has("user"):
			var user_data = json["user"]
			if user_data.has("display") and user_data["display"].has("resolution"):
				return user_data["display"]["resolution"]
			else:
				print("Error: Could not find 'resolutions' in settings.")
		else:
			print("Error: Could not find 'user' in settings.")
	return "1280x720"
	
	# Load the selected language from settings.json
func load_resolution_scales_from_settings() -> String:
	var file = FileAccess.open(settings_file_path, FileAccess.READ)
	if file:
		var json_string = file.get_as_text()
		file.close()
		
		var json = JSON.parse_string(json_string)
		if typeof(json) == TYPE_DICTIONARY and json.has("user"):
			var user_data = json["user"]
			if user_data.has("display") and user_data["display"].has("resolutionscal"):
				return user_data["display"]["resolutionscal"]
			else:
				print("Error: Could not find 'resolutionscal' in settings.")
		else:
			print("Error: Could not find 'user' in settings.")
	return "1280x720"
