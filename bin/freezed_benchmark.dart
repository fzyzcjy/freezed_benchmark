import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_benchmark.freezed.dart';

void main(List<String> arguments) {
  TODO;
}

@immutable
class NaiveApple {
  final int id;
  final String name;

  const NaiveApple({
    required this.id,
    required this.name,
  });
}

@freezed
class FreezedApple with _$FreezedApple {
  const factory FreezedApple({
    required int id,
    required String name,
  }) = _FreezedApple;
}
