
// When we type in a teachers name, and hometown, and then click submit we want to:
// ...



let store = {teachers: []}

function createTeacher(){
  let idCounter = 0

 return class Teacher {
    constructor(name, hometown){
      this.name = name
      this.hometown = hometown
      this.id = ++idCounter
      store.teachers.push(this)
    }
  }
}

let teacher = createTeacher()

$(document).ready(function(){
  $('form').on('submit', function(event){
    let name = $('#name').val();
    let hometown = $('#hometown').val();
    let newTeacher = new teacher(name, hometown)

   $('ul').append(`<li>name: ${newTeacher.name} hometown: ${newTeacher.hometown}</li>`)

   event.preventDefault();
  })
})
