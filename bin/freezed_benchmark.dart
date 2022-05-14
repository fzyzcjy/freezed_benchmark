import 'dart:math';

import 'package:benchmarking/benchmarking.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_benchmark.freezed.dart';

void main(List<String> arguments) {
  var dummy = 0;

  syncBenchmark('naive copyWith', () {
    var a = NaiveApple(id: 0, name: 'hello');
    for (var i = 0; i < 10000000; ++i) {
      a = a.copyWith(id: a.id + i, name: a.name);
    }
    dummy ^= a.id;
  }).report();
  syncBenchmark('freezed copyWith', () {
    var a = FreezedApple(id: 0, name: 'hello');
    for (var i = 0; i < 10000000; ++i) {
      a = a.copyWith(id: a.id + i, name: a.name);
    }
    dummy ^= a.id;
  }).report();
  syncBenchmark('freezed modified copyWith', () {
    var a = FreezedApple(id: 0, name: 'hello');
    for (var i = 0; i < 10000000; ++i) {
      a = a.modifiedCopyWith(id: a.id + i, name: a.name);
    }
    dummy ^= a.id;
  }).report();

  // {
  //   final naiveApple = createNaiveApple();
  //   syncBenchmark('naive access', () {
  //     var sum = 0;
  //     for (var i = 0; i < 10000000; ++i) {
  //       sum += naiveApple.id;
  //     }
  //     dummy ^= sum;
  //   }).report();
  //   final freezedApple = createFreezedApple();
  //   syncBenchmark('freezed access', () {
  //     var sum = 0;
  //     for (var i = 0; i < 10000000; ++i) {
  //       sum += freezedApple.id;
  //     }
  //     dummy ^= sum;
  //   }).report();
  // }

  {
    final naiveApple = NaiveApple(id: Random().nextInt(1000), name: 'hello');
    syncBenchmark('naive access', () {
      var sum = 0;
      for (var i = 0; i < 10000000; ++i) {
        sum += naiveApple.id;
      }
      dummy ^= sum;
    }).report();
    final freezedApple = FreezedApple(id: Random().nextInt(1000), name: 'hello');
    syncBenchmark('freezed access', () {
      var sum = 0;
      for (var i = 0; i < 10000000; ++i) {
        sum += freezedApple.id;
      }
      dummy ^= sum;
    }).report();
  }

  print(dummy);
}

NaiveApple createNaiveApple() {
  if (Random().nextInt(1000) > 99999) return NaiveAppleFakeImpl();
  return NaiveApple(id: Random().nextInt(1000), name: 'hello');
}

FreezedApple createFreezedApple() {
  if (Random().nextInt(1000) > 99999) return FreezedAppleFakeImpl();
  return FreezedApple(id: Random().nextInt(1000), name: 'hello');
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

class NaiveAppleFakeImpl implements NaiveApple {
  @override
  NaiveApple copyWith({int? id, String? name}) {
    throw UnimplementedError();
  }

  @override
  int get id => throw UnimplementedError();

  @override
  String get name => throw UnimplementedError();
}

@freezed
class FreezedApple with _$FreezedApple {
  const factory FreezedApple({
    required int id,
    required String name,
  }) = _FreezedApple;
}

extension ExtFreezedApple on FreezedApple {
  FreezedApple Function({int? id, String? name}) get modifiedCopyWith {
    return ({
      Object? id = freezed,
      Object? name = freezed,
    }) =>
        FreezedApple(
          id: id == freezed ? this.id : id as int,
          name: name == freezed ? this.name : name as String,
        );
  }
}

class FreezedAppleFakeImpl implements FreezedApple {
  @override
  $FreezedAppleCopyWith<FreezedApple> get copyWith => throw UnimplementedError();

  @override
  int get id => throw UnimplementedError();

  @override
  String get name => throw UnimplementedError();
}
