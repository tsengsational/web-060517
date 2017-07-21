
function clickGreeting(){
  $('p').on('click', function(){
    if(this.innerHTML === " Hello"){
      this.innerHTML = " Hola"
    } else if (this.innerHTML === " Hola"){
      this.innerHTML = " Hello"
    };
  });
};

$(document).ready(function(){

  clickGreeting();

});
