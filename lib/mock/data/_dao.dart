export 'sample_dao.dart';

abstract class Dao<T> {
  Future<T?> delete(String id);

  Future<T?> get(String id);

  Future<T> insert(T item);

  Future<List<T>> list();

  Future<T> update(T item, String id);

  Stream<List<T>> subscribe();
}