import 'package:benchmarking/benchmarking.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_benchmark.freezed.dart';

void main(List<String> arguments) {
  var dummy = 0;

  syncBenchmark('naive', () {
    var sum = '';
    for (var i = 0; i < 10000000; ++i) {
      final apple = NaiveApple(id: i, name: 'hello');
      sum = apple.name;
    }
    dummy ^= sum.length;
  }).report();
  syncBenchmark('freezed', () {
    var sum = '';
    for (var i = 0; i < 10000000; ++i) {
      final apple = FreezedApple(id: i, name: 'hello');
      sum = apple.name;
    }
    dummy ^= sum.length;
  }).report();

  syncBenchmark('naive', () {
    var sum = 0;
    for (var i = 0; i < 10000000; ++i) {
      final apple = NaiveApple(id: i, name: 'hello');
      sum += apple.id;
    }
    dummy ^= sum;
  }).report();
  syncBenchmark('freezed', () {
    var sum = 0;
    for (var i = 0; i < 10000000; ++i) {
      final apple = FreezedApple(id: i, name: 'hello');
      sum += apple.id;
    }
    dummy ^= sum;
  }).report();

  print(dummy);
}

@immutable
class NaiveApple {
  final int id;
  final String name;

  const NaiveApple({
    required this.id,
    required this.name,
  });

  NaiveApple copyWith({
    int? id,
    String? name,
  }) =>
      NaiveApple(
        id: id ?? this.id,
        name: name ?? this.name,
      );
}

@freezed
class FreezedApple with _$FreezedApple {
  const factory FreezedApple({
    required int id,
    required String name,
  }) = _FreezedApple;
}
