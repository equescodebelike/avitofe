import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';

@freezed
class Test with _$Test {
  const factory Test({
    required int id,
    required String message
  }) = _Test;
}