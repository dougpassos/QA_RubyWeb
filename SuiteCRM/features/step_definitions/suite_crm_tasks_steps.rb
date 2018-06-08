Dado(/^que estou na home$/) do
  @login_page.load
  @login_page.login_ok("will", "will")  
end

Dado(/^acesso a area de tasks$/) do
  @home_page.create_task_area  
end

Quando(/^preencho os dados da task$/) do
  @task_page = Task_page.new
  @assunto = 'compras da semana'
  @task_page.preencher_task(@assunto, 'In Progress', 'Low')
  @task_page.save_button[1].click #Botao save no final da pagina
  #binding.pry
end

Então(/^visualizo que os dados da nova tarefa foram salvo com sucesso$/) do
  expect(@assunto).to eq(@task_page.subject_task.text)
end

Quando(/^seleciono uma task$ para edição/) do
  @task_page = Task_page.new
  @task_page.selecionar_task
end

Quando(/^edito uma nova task$/) do
  @assunto = 'compras da semana'
  @task_page.preencher_task(@assunto, 'In Progress', 'Low')
  @task_page.save_button[1].click
end

Quando(/^seleciono uma task para exclusão$/) do
  @task_page = Task_page.new
  @task_page.selecionar_task_checkbox.click
 
  
end

Quando(/^excluo esta taks$/) do
   @task_page.deletar_task

end

Então(/^visualizo que a task não se encontra na lista de tasks$/) do
 # pending # Write code here that turns the phrase above into concrete actions
end