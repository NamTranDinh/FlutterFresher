class Ticker {
  const Ticker();

  // handle each seconds will decrease duration
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1).take(ticks);
  }
}
