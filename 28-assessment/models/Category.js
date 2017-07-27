function createCategory(){
  let id = 0

  return class {
    constructor(name){
      this.id = ++id
      this.name = name
      store['categories'].push(this)
    }

    static findOrCreateCategory(categoryName){
      if(store['categories'].find(function(category){
        return category.name === categoryName
      }) == null ){
        return new this(categoryName)
      } else {
        return store['categories'].find(function(category){
          return category.name === categoryName
        })
      };
    };

    instruments(){
      store['instruments'].filter((instrument) => {
        return instrument.category_id === this.id
      })
    }
  };
}

let Category = createCategory()
