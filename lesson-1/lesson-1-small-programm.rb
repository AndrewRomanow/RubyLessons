#1. Нужно обрабовать выражения типа 1 + 2 + 3 + 4
#2. V При вводе ключевого слова 'once' в запросе нужно выполнить вычисление один раз
# Доп. задание
#3. В случае некорректного ввода пользователя вывести сообщение с описанием поддерживаемых операций. Отрабовать команду 
# "help". 

class String
    alias / :split
end

working = true
while working
	puts "Введите выражение для вычисления: "
	value = gets.chomp
	if value == "exit"
		puts "Пока!"
		break
	end
	if value == "once"
		working = false
		puts "Программа выполнит вычисления только один раз."
	end

	data = value.split(//)
	data -= [' ', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'a', 's' ,'d', 'f', 'g', 'h', 'j', 'k', 'l', 'z', 'x', 'c', 'v', 'b', 'n', 'm'] 
	if data [0] == ['-'] or ['+'] or ['/'] or ['*']
		data [0] = '0'
	end

	operands = data	# => массивы
	operators = data

	operands = operands.join	# => строка
	operands = operands.split /[\D]/
	operators -= ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
	p data
	puts "Операнды #{operands}"
	puts "Операторы #{operators}"

	tmpResult = 0
	indOp = 0
	puts operators [1]

	#if operators [indOp] <= 2 #operators.length #нужно сравнить по индексу, а не по значению
	#	puts "условие работает"
	#end

	#case operators [indOp] <= operators.lenth
	#when '+'
	#	tmpResult = operands[indOp] + operands[indOp + 1]
	#	indOp += 1
	#else puts "Другое действие"
	#end
	#puts "Результат #{tmpResult}"



	#if splited_values.lenth <= 2
	#	pust "Введите больше данных."
	#end

	#for elem in splited_values
	#	begin
	#		tmpElem = Integer(elem)
	#		result << tmpElem
	#	rescue Exception => e
	#		operation = elem
	#	end
	#end

	#case operation
	#	when "+"
	#		puts "Результат выполнения операции равен #{result[0] + result[1]}"
	#	when "-"
	#		puts "Результат выполнения операции равен #{result[0] - result[1]}"
	#	when "/"
	#		puts "Результат выполнения операции равен #{result[0] / result[1]}"
	#	when "*"
	#		puts "Результат выполнения операции равен #{result[0] * result[1]}"
	#	else
	#		puts "Данный оператор не поддрерживается программой!"
	#end
end