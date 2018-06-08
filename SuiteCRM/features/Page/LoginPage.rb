class LoginPage < SitePrism::Page
	set_url 'https://demo.suiteondemand.com'

	element :usuario_field, "input[id='user_name']"
	element :senha_field, "input[id='user_password']"
	element :login_button, "input[id='bigbutton']"

	def login_ok(user, password)
		usuario_field.set(user)
		senha_field.set(password)
		login_button.click
	end

end
