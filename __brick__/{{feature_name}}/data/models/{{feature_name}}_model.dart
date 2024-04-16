import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/{{feature_name}}.dart';
part '{{feature_name}}_model.g.dart';

@JsonSerializable(explicitToJson: true)
class {{feature_name.pascalCase()}}Model extends {{feature_name.pascalCase()}} {
  
  {{feature_name.pascalCase()}}Model(): super();

  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{feature_name.pascalCase()}}ModelFromJson(json);
  Map<String, dynamic> toJson() => _${{feature_name.pascalCase()}}ModelToJson(this);
  //magic method
  static Future<{{feature_name.pascalCase()}}Model> fromJsonModel(
          Map<String, dynamic> json) async =>
      {{feature_name.pascalCase()}}Model.fromJson(json);
}