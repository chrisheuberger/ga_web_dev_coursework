var Schema = mongoose.Schema;

var MonkeySchema = new Schema({
  name : String
});

// an interface for dealing with our models, allows us to find records, create records, etc.
module.exports = db.model('Monkey', MonkeySchema);
