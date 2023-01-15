var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
     // pokomenList.each do |monster|
     // end
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    })
  },
  findPokemonByName : function(name){
    // look into _.find
    var pokemonIWant = _.find(pokemon.pokemonList, function(monster){
      return monster.name == name;
    });
    return pokemonIWant;
  },

  findStrongestPokemon : function(){
    // look into _.max
    // i.e. which monster has the strongest attack?
    var strongest = _.max(pokemon.pokemonList, function(monster){
      return parseInt(monster.stats.attack);
    });
    return strongest;
  },

  findPokemonByType : function(type){
    // _.filter / _.contains
    return _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type);
    });
  },

  findAllTypes : function(){
    // _.map / _.flatten / _.uniq
    var types = _.map(pokemon.pokemonList, function(monster){
      return monster.type;
    });
    return _.uniq(_.flatten(types));
  },

  totalStats : function(name){
    // finds total stats for a given pokemon
    // _.reduce
    var foundPokemon = pokemon.findPokemonByName(name);
    return _.reduce(foundPokemon.stats, function(memo, stat) {
      return memo + parseInt(stat);
    }, 0);
  }
}
