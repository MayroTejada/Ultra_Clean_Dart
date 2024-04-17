import 'package:{{app_name}}/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repositories/{{feature_name}}_repository.dart';
import '../datasources/{{feature_name}}_remote_datasource.dart';
class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository{
   final {{feature_name.pascalCase()}}RemoteDataSource datasource;
   {{feature_name.pascalCase()}}RepositoryImpl(this.datasource);
   @override
  Future<Either<Failure, void>> get{{feature_name.pascalCase()}}() async {
      try{
        var res = await datasource.get{{feature_name.pascalCase()}}();
        return Right(res);
      }on Exception catch(error){
        return Left(Failure());
      }
  }
}