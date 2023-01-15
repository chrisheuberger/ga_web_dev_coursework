var Schema = mongoose.Schema;

var MonkeySchema = new Schema({
  name    :  String
});
// db.model('Monkey', MonkeySchema) is what is
// returned when i require this file, 'monkey.js'
// It is an interface for dealing with our models.
// It allows us to find records, create records,
// and so on and so forth.
module.exports = db.model('Monkey', MonkeySchema);