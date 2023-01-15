$(function() {
  var proto = [
    'Nessa Nguyen',
    'Jeff Winkler',
    'John Murphy',
    'Jeff Drakos',
    'Rebecca Strong',
    'Gardner Lonsberry' ,
    'Jonathan Gean',
    'Nathaniel Tuvera',
    'Tim Hannes',
    'Aziz Hasanov',
    'Chris Heuberger',
    'Dmitry Shamis' ,
    'Corey Leveen',
    'Paul Hiam',
    'Steven Doran',
    'Ben Karl',
    'Kristen Tonga',
    'Wake Lankard',
    'Carlos Pichardo' ,
    'Paul Gasberra',
    'Andrea Trapp'
  ]

  var protoModels = []

  for (var i = 0; i < proto.length; i++) {
    var protoModel = new ProtoModel({name: proto[i]})
    protoModels.push(protoModel);
  }

  var protoCollection = new ProtoCollection(protoModels);

  var protoListView = new ProtoListView({
    collection: protoCollection,
    el: $('#protos')
  });

  protoListView.render();
});
