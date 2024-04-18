import '../services/{{feature_name}}_service.dart';

abstract class {{feature_name.pascalCase()}}RemoteDataSource {
  Future<void> get{{feature_name.pascalCase()}}();
}

class {{feature_name.pascalCase()}}RemoteDataSourceImpl extends {{feature_name.pascalCase()}}RemoteDataSource {
  final {{feature_name.pascalCase()}}Service service;

  {{feature_name.pascalCase()}}RemoteDataSourceImpl({required this.service});
  @override
  Future<void> get{{feature_name.pascalCase()}}() {
    return service.get{{feature_name.pascalCase()}}();
  }
}
