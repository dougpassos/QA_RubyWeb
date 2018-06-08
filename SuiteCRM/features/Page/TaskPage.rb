class TaskPage < SitePrism::Page
	elements :save_button, '#SAVE' # Botao salvar da tarefa
	element :subject_field, "input[id='name']" # Assunto da tarefa
	element :status_select, :xpath, "//select[@id = 'status']" # Status tarefa
	element :priority_select, :xpath, "//select[@id = 'priority']" # Prioridade tarefa
	element :subject_task, "span[id='name']"
	element :status_task, "input[id='status']"
	element :priority_task, "input[id='priority']"
	elements :editar_links, 'a.edit-link'
	elements :selecionar_links, "input[class='listview-checkbox']"
	elements :bulk_action_menu, "a[class='parent-dropdown-handler']"
	elements :bulk_action_submenu, "a[class='parent-dropdown-action-handler']"

	def preencher_task(subject, opcao, priority)
		subject_field.set(subject)
		status_select.find(:xpath, "//option[text() = '#{opcao}']").click
		priority_select.find(:xpath, "//option[text() = '#{priority}']").click
	end

	
	def selecionar_task_checkbox
		view_task_button.click
		selecionar_links[0]
	end

	def deletar_task

		bulk_action_menu[0].click
		bulk_action_submenu[2].click
		sleep(3)
		page.driver.browser.switch_to.alert.accept

	end



end
