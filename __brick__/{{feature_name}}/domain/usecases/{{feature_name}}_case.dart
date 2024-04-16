import 'package:equatable/equatable.dart';

import '../repositories/{{feature_name}}_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:{{app_name}}/core/failures/failure.dart';
import 'package:{{app_name}}/core/usecases/usecase.dart';

class Get{{feature_name.pascalCase()}} implements UseCase<void, Get{{feature_name.pascalCase()}}Parameters> {
  final {{feature_name.pascalCase()}}Repository repository;

  Get{{feature_name.pascalCase()}}({required this.repository});

  @override
  Future<Either<Failure, void>> call(Get{{feature_name.pascalCase()}}Parameters parameters) async {
    return repository.get{{feature_name.pascalCase()}}();
  }
}

class Get{{feature_name.pascalCase()}}Parameters extends Equatable {

  const Get{{feature_name.pascalCase()}}Parameters();

  @override
  List<Object?> get props => [];
}
