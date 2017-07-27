function createInstrument(){
  let id = 0

  return class {
    constructor(name, category){
      this.id = ++id
      this.name = name;
      let cat = Category.findOrCreateCategory(category)
      this.category_id = cat.id
      store['instruments'].push(this)
    }

    category(){
      return store['categories'].find((category) => {
        return category.id === this.category_id
      })
    }

    template(){
      return `<div class="instrument-${this.id}"><h3>Instrument: ${this.name}</h3><p>Category: ${this.category().name}</p></div>`
    }

    static instrumentsHTML(){
      return store["instruments"].map(function(instrument){
        return instrument.template()
      }).join('')

    };

  };
};

let Instrument = createInstrument()
