import 'package:elementary/elementary.dart';
import 'package:test_project/data/repository/test_repository/test_repository.dart';
import 'package:test_project/domain/test/test.dart';

class TestPageModel extends ElementaryModel {
  final TestRepository _testRepository;

  TestPageModel(ErrorHandler errorHandler, this._testRepository) : super(errorHandler: errorHandler);

  Future<List<Test>> loadTestList() async{
    try{
      final res = _testRepository.getAll();
      return res;
    }on Exception catch (e){
      handleError(e);
      rethrow;
    }
  }
}
