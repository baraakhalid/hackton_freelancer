class Profile {
  late int id;
  late String facebook;
  late String linkedin;
  late String twitter;
  late String upwork;
  late String freelance;
  late String mostaql;
  late String kamcat;
  late String name;
  late String info;
  late String path;
  late String image;
  late int freelancerId;

  static const String tableName = 'profiles';

  Profile();

  ///Read row data from database table
  Profile.fromMap(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    facebook = rowMap['facebook_link'];
    linkedin = rowMap['linkedin_link'];
    twitter = rowMap['teeter_link'];
    upwork = rowMap['upwork_link'];
    freelance = rowMap['freelanc_link'];
    mostaql = rowMap['mostaql_link'];
    kamcat = rowMap['khamsat_link'];
    name = rowMap['name'];
    info = rowMap['info'];
    image = rowMap['image'];
    path = rowMap['work_link'];
    freelancerId = rowMap['freelancer_id'];
  }

  ///Prepare map to be saved in database
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['name'] = name;
    map['facebook_link'] = facebook;
    map['linkedin_link'] = linkedin;
    map['info'] = info;
    map['teeter_link'] = twitter;
    map['upwork_link'] = upwork;
    map['freelanc_link'] = freelance;
    map['khamsat_link'] = kamcat;
    map['mostaql_link'] = mostaql;
    map['freelancer_id'] = freelancerId;
    map['image'] = image;
    map['work_link'] = path;

    return map;
  }
}