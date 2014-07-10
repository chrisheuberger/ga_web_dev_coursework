var Schema = mongoose.Schema;

var MonkeySchema = new Schema({
  name : String
});

module.exports = db.model('Monkey', MonkeySchema);
