// musical instrument
  // belongs to a category
// categories
  // has many musical instruments
  // xylophone.category

  // percussion.instruments()
    // snare drum, bass drum, steel drum

  // make a form that creates a musical instruments
    // 1. creates a musical instrument
    // 2. associates instrument with the category
    // from the form we should be able to associate multiple instruments
    //  with the same category

  // 1. get a class working
  // 2. get associations working
  // new Instrument ('bass drum')
  // store.instruments[0] =>

  const store = {instruments: [], categories: []}

  function render(html, selector){
    $(selector).empty();
    $(selector).append(html);
  }

$(document).ready(function(){

 InstrumentController.init()

});
