import '../services/{{feature_name}}_service.dart';

abstract class {{feature_name.pascalCase()}}LocalDataSource {
  Future<void> get{{feature_name.pascalCase()}}();
}

class {{feature_name.pascalCase()}}LocalDataSourceImpl extends {{feature_name.pascalCase()}}LocalDataSource {
  final {{feature_name.pascalCase()}}Service service;

  {{feature_name.pascalCase()}}LocalDataSourceImpl({required this.service});
  @override
  Future<void> get{{feature_name.pascalCase()}}() {
    return service.get{{feature_name.pascalCase()}}();
  }
}
