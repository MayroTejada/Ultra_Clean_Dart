import 'package:{{app_name}}/core/failures/failure.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/{{feature_name}}.dart';

enum {{feature_name.pascalCase()}}StateEnum { none, intial, loading, success, failed }

class {{feature_name.pascalCase()}}State extends Equatable {
  final {{feature_name.pascalCase()}}? {{feature_name.camelCase()}};
  final Failure? failure;
  final {{feature_name.pascalCase()}}StateEnum? stateEnum;
  const {{feature_name.pascalCase()}}State({this.{{feature_name.camelCase()}}, this.stateEnum, this.failure});

  {{feature_name.pascalCase()}}State initial{{feature_name.pascalCase()}}State() {
    return  copyWith(
        {{feature_name.camelCase()}}: null, stateEnum: {{feature_name.pascalCase()}}StateEnum.intial);
  }

  {{feature_name.pascalCase()}}State loading{{feature_name.pascalCase()}}State() {
    return  copyWith(stateEnum: {{feature_name.pascalCase()}}StateEnum.loading);
  }

  {{feature_name.pascalCase()}}State successfull{{feature_name.pascalCase()}}State({{{feature_name.pascalCase()}}? {{feature_name.camelCase()}}}) {
    return copyWith(stateEnum: {{feature_name.pascalCase()}}StateEnum.success, {{feature_name.camelCase()}}: {{feature_name.camelCase()}});
  }

  {{feature_name.pascalCase()}}State failed{{feature_name.pascalCase()}}State(Failure failure) {
    return copyWith(stateEnum: {{feature_name.pascalCase()}}StateEnum.failed, failure: failure);
  }
  {{feature_name.pascalCase()}}State copyWith({ {{feature_name.pascalCase()}}StateEnum? stateEnum, Failure? failure, {{feature_name.pascalCase()}}? {{feature_name.camelCase()}} }){
    return {{feature_name.pascalCase()}}State(stateEnum: stateEnum ?? this.stateEnum, failure: failure ?? this.failure,{{feature_name.camelCase()}}: {{feature_name.camelCase()}} ?? this.{{feature_name.camelCase()}});
  }
  @override
  List<Object?> get props => [failure,{{feature_name.camelCase()}},stateEnum];
}
