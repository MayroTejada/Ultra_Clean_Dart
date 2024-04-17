import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/{{feature_name}}_case.dart';
import '{{feature_name}}_events.dart';
import '{{feature_name}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Events, {{feature_name.pascalCase()}}State> {
  final {{feature_name.pascalCase()}}Case usecase;

  {{feature_name.pascalCase()}}Bloc(this.usecase) : super(const {{feature_name.pascalCase()}}State().initial{{feature_name.pascalCase()}}State()) {
    on<Get{{feature_name.pascalCase()}}Event>(_on{{feature_name.pascalCase()}}Event);
  }

  FutureOr<void> _on{{feature_name.pascalCase()}}Event(
      Get{{feature_name.pascalCase()}}Event event, Emitter<{{feature_name.pascalCase()}}State> emit) async {
    emit(state.loading{{feature_name.pascalCase()}}State());

    final result =
        await usecase.call({{feature_name.pascalCase()}}CaseParameters());

    result.fold(
      (failure) => emit(state.failed{{feature_name.pascalCase()}}State(failure)),
      (success) {
        emit(state.successfull{{feature_name.pascalCase()}}State({{feature_name.camelCase()}}: null));
      },
    );
  }
}
