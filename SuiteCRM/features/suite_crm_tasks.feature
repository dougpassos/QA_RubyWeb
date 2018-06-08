#language: pt
#utf-8

Funcionalidade: Tasks
	Eu como usuario do Site SuiteCRM
	Quero acessar a area de Tasks
	Para administrar minhas tasks

	Contexto: Usuario acessa o site SuiteCRM
		Dado que estou na home
		E acesso a area de tasks
	@criar	
	Cenario: Cadastrar uma nova task
		Quando preencho os dados da task
		Então visualizo que os dados da nova tarefa foram salvo com sucesso

	@editar	
	Cenario: Editar uma task
		Quando seleciono uma task para edição
		E edito uma nova task
		Então visualizo que os dados da nova tarefa foram salvo com sucesso

	@deleta 
	Cenario: Deletar uma task
		Quando seleciono uma task para exclusão
		E excluo esta taks
		Então visualizo que a task não se encontra na lista de tasks