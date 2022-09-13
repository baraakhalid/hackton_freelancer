import 'package:hackton_freelancer/database/db_operations.dart';
import 'package:hackton_freelancer/models/blog.dart';

class BlogDbController extends DbOperations<Blog> {
  @override
  Future<int> create(Blog model) async{
    return await database.insert(Blog.tableName, model.toMap());

  }

  @override
  Future<bool> delete(int id)async {
    int countOfDeletedRow = await database.rawDelete('DELETE FROM blogs where: id = ?' , [id]);
    return countOfDeletedRow ==1;
  }

  @override
  Future<List<Blog>> read() async{
    List<Map<String, dynamic>> rowsMap = await database.query(Blog.tableName);
    return rowsMap.map((rowMap) => Blog.fromMap(rowMap)).toList();
  }

  @override
  Future<Blog?> show(int id) async{
    List<Map<String, dynamic>> rowsMap = await database
        .query(Blog.tableName, where: 'id = ?', whereArgs: [id]);
    return rowsMap.isNotEmpty ? Blog.fromMap(rowsMap.first) : null;
  }

  @override
  Future<bool> update(Blog model)async {
    int countOfUpdatedRows = await database.update(
      Blog.tableName,
      model.toMap(),
      where: 'id = ? ',
      whereArgs: [model.id],
    );
    return countOfUpdatedRows == 1;
  }
  @override
  Future<bool> clear() async {
    int countOfDeletedRows = await database.delete(
      Blog.tableName,

    );
    return countOfDeletedRows > 0;
  }
  }
  
