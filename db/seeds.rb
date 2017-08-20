User.destroy_all
Account.destroy_all
Todolist.destroy_all
Todoitem.destroy_all

User.create! [

{login: "johnsnow", password: "kingofthenorth"},
{login: "nedstark", password:"neddard1234"},
{login: "branstark", password:"threeeyedraven"},
{login: "aryastark", password:"nooneismyname"},
{login: "kingjoff12", password:"iamtheking"}, 
{login: "Matt", password:"abc123"}, 
{login: "Tim", password:"abc123"}

]


u1 = User.find_by login:"johnsnow"
u1.create_account gender:"male",age:24,first_name:"John",last_name:"Snow"
L1 = Todolist.create list_name:"How to bake a cake", list_due_date:"2017-08-20"
L2 = Todolist.create list_name:"Build a castle", list_due_date:"2017-09-02"
L3 = Todolist.create list_name:"Grow crops for winter", list_due_date:"2017-10-21"
I1 = Todoitem.create due_date:"2017-08-01", task_title:"Buy ingredients",description:"Buy cake mix"
t1 = Tag.create tag_name: "Kitchen"
t2 = Tag.create tag_name: "Other"
t3 = Tag.create tag_name: "both"
I1.tags<<t1
I1.tags<<t2
I2 = Todoitem.create due_date:"2017-08-03", task_title:"Bake in Oven",description:"Use an oven"
I2.tags<<t1
I3 = Todoitem.create due_date:"2017-08-02", task_title:"Mix them up",description:"Use a bowl"
I3.tags<<t2
I4 = Todoitem.create due_date:"2017-08-31", task_title:"Open castle",description:"Have a grand opening"
I4.tags<<t2
I5 = Todoitem.create due_date:"2017-08-13", task_title:"Work",description:"Perform construction work"
I5.tags<<t2
I5.tags<<t3
I6 = Todoitem.create due_date:"2017-10-02", task_title:"Harvest",description:"Harvest the grain"
I6.tags<<t1
I7 = Todoitem.create due_date:"2017-09-06", task_title:"Cultivate",description:"Plant the seeds"
I7.tags<<t1
L1.todoitems<<I1
L1.todoitems<<I2
L1.todoitems<<I3
L2.todoitems<<I4
L2.todoitems<<I5
L3.todoitems<<I6
L3.todoitems<<I7
u1.todoitems<<I1
u1.todoitems<<I2
u1.todoitems<<I3
u1.todoitems<<I4
u1.todoitems<<I5
u1.todoitems<<I6
u1.todoitems<<I7
u1.todolists<<L1
u1.todolists<<L2
u1.todolists<<L3
u1.save
u2 = User.find_by login:"nedstark"
u2.create_account gender:"male",age:60,first_name:"Eddard",last_name:"Stark"
L4 = Todolist.create list_name:"Vacation Plans to Belize", list_due_date:"2017-09-01"
u2.todolists<<L4
u2.save

u3 = User.find_by login:"branstark"
u3.create_account gender:"male",age:22,first_name:"Brandon",last_name:"Stark"
L5 = Todolist.create list_name:"Train my hamster", list_due_date:"2018-11-20"
u3.todolists<<L5
u3.save

u4 = User.find_by login:"aryastark"
u4.create_account gender:"female",age:20,first_name:"Arya",last_name:"Stark"
L6 = Todolist.create list_name:"Learn Spanish", list_due_date:"2018-12-02"
u4.todolists<<L6
u4.save

u5 = User.find_by login:"kingjoff12"
u5.create_account gender:"male",age:27,first_name:"Joffrey",last_name:"Baratheon"
L7 = Todolist.create list_name:"Write Ruby Programs", list_due_date:"2019-05-01"
u5.todolists<<L7
u5.save

u6 = User.find_by login:"Matt"
u6.create_account gender:"male",age:22,first_name:"Matthew",last_name:"Ryan"
L8 = Todolist.create list_name:"abc", list_due_date:"2017-09-20"
L9 = Todolist.create list_name:"July", list_due_date:"2017-11-02"
L10 = Todolist.create list_name:"Boo", list_due_date:"2017-11-12"
L11 = Todolist.create list_name:"test", list_due_date:"2017-10-02"
L12 = Todolist.create list_name:"abc123", list_due_date:"2019-11-02"
L13 = Todolist.create list_name:"Become Superman", list_due_date:"2037-11-02"
L14 = Todolist.create list_name:"general", list_due_date:"2018-11-02"
L15 = Todolist.create list_name:"test2", list_due_date:"2017-04-24"


u6.todolists<<L8
u6.todolists<<L9
u6.todolists<<L10
u6.todolists<<L11
u6.todolists<<L12
u6.todolists<<L13
u6.todolists<<L14
u6.todolists<<L15

u6.save



