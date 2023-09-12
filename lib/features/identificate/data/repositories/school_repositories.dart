import 'package:dartz/dartz.dart';
import 'package:proschool/features/identificate/data/datasources/school_datasource.dart';
import 'package:proschool/features/identificate/data/models/response/school_token_response_model.dart';

class SchoolRepositories {
  final _schoolDatasource = SchoolDatasource();

  Future<Either<String, SchoolTokenResponseModel>> identificateSchool(String schoolToken) async {
    return _schoolDatasource.identificateSchool(schoolToken);
  }
}
