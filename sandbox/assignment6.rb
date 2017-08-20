require_relative '../config/environment'

#Step 4 - Accessing TodoItems from the ToDoList

tfirst = Todolist.first
puts tfirst.todoitems.first.task_title

#Step 4 accesing TodoItems from User

Jon = User.find_by login:"johnsnow"
puts Jon.todoitems.first.task_title 


#Step 5
#attempting to add an Account with gender = elephant
u1 = User.create login:"stampy",pass:"imanelephant"
u2 = User.create login:"garfield",pass:"imaacat"


a1= Account.create gender:"elephant",age:29,first_name:"Stampy",last_name:"Elephant", user_id: u1.id
a1.save
puts a1.errors.details

a2= Account.create gender:"female", age:9, first_name:"Alias", last_name:"Unkown", user_id: u2.id
puts a2.errors.details

a3= Account.create gender:"N/a", age:49, first_name:"Alias", last_name:"Unkown", user_id: u1.id
#next puts statement will have no errors
puts a3.errors.details

#Step 6 - Todolist order

Todolist.all.each do |x|
	puts "#{x.list_due_date} #{x.list_name} "
end


#Step 6 - Todoitems order
puts
Todoitem.all.each do |x|
	puts "#{x.due_date} #{x.task_title}"
end


#Displaying the relationship between entities

#User and account 

jon = User.find_by login: "johnsnow"
puts 
puts "#{jon.account.first_name} #{jon.account.last_name} belongs to User #{jon.login}"

#Displaying the relationship between User and todolist

puts 

puts "#{jon.account.first_name} #{jon.account.last_name} has the following to do lists"
jon.todolists.each do |x|
	puts "#{x.list_due_date} #{x.list_name} "
end

#Displaying the relationship between todolist and todoitems
puts

Todolist.first.todoitems.each do |x|
	puts "#{x.task_title} is due on #{x.due_date}"
end

#Displaying the relationship between User and todoitems
puts
puts "#{jon.account.first_name} #{jon.account.last_name} has the following to do items"
jon.todoitems.each do |x|
		puts "#{x.task_title} is due on #{x.due_date}"
end

#Displaying the many-many relationship between Tags and Items
puts 

Todoitem.all.each do |x|
		puts "#{x.task_title} has tags"
		x.tags.each do |t|
			puts t.tag_name
		end
		puts
end


