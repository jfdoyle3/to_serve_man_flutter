

class Ingredient{

  int amount;
  String measurement;
  String name;
  String type;

  Ingredient({
    required this.name,
    this.type='',
    this.amount = 0,
    this.measurement = ''
  });


}