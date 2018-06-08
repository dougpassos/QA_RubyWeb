class Home_page < SitePrism::Page
	element :menu_create_link, "li[id='quickcreatetop']"
	element :create_task_link, "a[href='index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView']"

	def create_task_area
		menu_create_link.hover
		create_task_link.click		
	end
	

end
