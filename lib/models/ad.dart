class Ad {
  late int id;
  late String name;
  late String date;
  late String startHoure;
  late String info;
  late String houre ;
  late String address;
  late String company;
  late String path;
  late String image;

  static const String tableName = 'ads';

  Ad();

  ///Read row data from database table
  Ad.fromMap(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    name = rowMap['name'];
    date = rowMap['date'];
    startHoure = rowMap['start_hours'];
    info = rowMap['description'];
    houre = rowMap['duration'];
    address = rowMap['place'];
    company = rowMap['executor'];
    image = rowMap['image'];
    path = rowMap['link'];
  }

  ///Prepare map to be saved in database
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['name'] = name;
    map['date'] = date;
    map['start_hours'] = startHoure;
    map['description'] = info;
    map['duration'] = houre;
    map['place'] = address;
    map['executor'] = company;
    map['image'] = image;
    map['link'] = path;

    return map;
  }
}