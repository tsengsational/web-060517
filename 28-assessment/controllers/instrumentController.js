class InstrumentController {
  static init(){
    this.setInstrumentListener()
  }

  static setInstrumentListener(){
    $('button#submit-instrument').on('click', function(){
      let instrument = $('input.instrument').val()
      let category = $('input.category').val()
      let newInstrument = new Instrument(instrument, category)
      render(Instrument.instrumentsHTML(), 'div.instruments-go-here')
    });
  }
};
