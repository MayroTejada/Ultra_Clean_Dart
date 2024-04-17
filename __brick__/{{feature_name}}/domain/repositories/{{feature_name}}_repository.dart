import 'package:dartz/dartz.dart';
import 'package:{{app_name}}/core/failures/failure.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<Either<Failure,void>> get{{feature_name.pascalCase()}}();
}