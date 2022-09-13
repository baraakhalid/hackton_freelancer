import 'package:hackton_freelancer/database/db_operations.dart';
import 'package:hackton_freelancer/models/ad.dart';

class AdsDbController extends DbOperations<Ad> {
  @override
  Future<int> create(Ad model) async{
    return await database.insert(Ad.tableName, model.toMap());

  }

  @override
  Future<bool> delete(int id)async {
    int countOfDeletedRow = await database.rawDelete('DELETE FROM ads where: id = ?' , [id]);
    return countOfDeletedRow ==1;
  }

  @override
  Future<List<Ad>> read() async{
    List<Map<String, dynamic>> rowsMap = await database.query(Ad.tableName);
    return rowsMap.map((rowMap) => Ad.fromMap(rowMap)).toList();
  }

  @override
  Future<Ad?> show(int id) async{
    List<Map<String, dynamic>> rowsMap = await database
        .query(Ad.tableName, where: 'id = ?', whereArgs: [id]);
    return rowsMap.isNotEmpty ? Ad.fromMap(rowsMap.first) : null;
  }

  @override
  Future<bool> update(Ad model)async {
    int countOfUpdatedRows = await database.update(
      Ad.tableName,
      model.toMap(),
      where: 'id = ? ',
      whereArgs: [model.id],
    );
    return countOfUpdatedRows == 1;
  }
  @override
  Future<bool> clear() async {
    int countOfDeletedRows = await database.delete(
      Ad.tableName,

    );
    return countOfDeletedRows > 0;
  }
}

