import 'package:objectdb/objectdb.dart';

// ignore: implementation_imports
import 'package:objectdb/src/objectdb_storage_in_memory.dart';

class DatabaseService {
  // db instance
  static late ObjectDB _dbInstance;

  // private constuctor
  DatabaseService._create() {
    _dbInstance = ObjectDB(InMemoryStorage());
  }

  // public constructor
  static DatabaseService createInstance() => DatabaseService._create();

  // cleanup the db file
  static Future cleanUpDb() async => await _dbInstance.cleanup();

  // close db
  static Future closeDb() async => await _dbInstance.close();

  // insert data
  Future<ObjectId> insertData(Map data) async {
    final _objectId = await _dbInstance.insert(data);

    return _objectId;
  }

  // update data
  Future<int> updateData(String id, Map data) async {
    final _result = await _dbInstance.update({
      Op.gte: {'id': id}
    }, data);

    return _result;
  }

  // remove data
  Future<int> removeData(String id) async {
    final _result = await _dbInstance.remove({
      Op.gte: {'id': id}
    });

    return _result;
  }

  // search data
  Future<List<Map<dynamic, dynamic>>> findData() async {
    var _result = await _dbInstance.find();

    return _result;
  }
}
