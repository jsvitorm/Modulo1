extends Node2D


var valor = 0
var numero = 0 #variavel com acento
var lista = [] #variavel sem VAR
var nome = "" #criar a variável, antes não existia
var nome_editado = ""
var impar = []

	

func _on_Button_pressed():
		#Coletando dados inseridos pelo usuário
	numero = int($Button/LineEdit2.text) #Faltou $ para se referir a um Nó
	nome = String($Button/LineEdit.text) #especificar que é string 


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #variavel com letra maiuscula
		lista.append(numero)
	$Button2/Label.text = String(lista)



func _on_Button3_pressed():
			#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0
	while len(lista) > cont: #precisa de uma condição para parar o while
		if int(lista[cont]) %2 == 0: #especificar o tipo de dado, no caso, INT
			print("numero par")
		elif int(lista[cont]) %2 != 0: #do jeito que estava, qualquer resultado dps do primeiro iria acrescentar baldo no nome
			print("numero impar")
			$Button3/Label2.text = $Button3/Label2.text + nome + "baldo" + String(lista[cont]) + "\n"
		cont+=1 # acrescentei o numero ao lado para mostrar qual numero impar gerado foi o responsável por adicionar baldo ao nome

