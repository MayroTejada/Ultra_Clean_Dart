import 'package:equatable/equatable.dart';

import '../repositories/{{feature_name}}_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:{{app_name}}/core/failures/failure.dart';
import 'package:{{app_name}}/core/usecases/usecase.dart';

class {{feature_name.pascalCase()}}Case implements UseCase<void,{{feature_name.pascalCase()}}CaseParameters> {
  final {{feature_name.pascalCase()}}Repository repository;

 {{feature_name.pascalCase()}}Case({required this.repository});

  @override
  Future<Either<Failure, void>> call({{feature_name.pascalCase()}}CaseParameters parameters) async {
    return repository.get{{feature_name.pascalCase()}}();
  }
}

class {{feature_name.pascalCase()}}CaseParameters extends Equatable {

  const {{feature_name.pascalCase()}}CaseParameters();

  @override
  List<Object?> get props => [];
}
