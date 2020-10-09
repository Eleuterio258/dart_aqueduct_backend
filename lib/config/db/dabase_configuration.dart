import '../../dart_backend.dart';

class DabaseConfiguration extends Configuration {
  DabaseConfiguration(String path) : super.fromFile(File(path));
  DatabaseConfiguration database;
}
