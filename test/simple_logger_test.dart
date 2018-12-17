import 'package:simple_logger/simple_logger.dart';
import 'package:test/test.dart';

void main() {
  group('Simple Logger tests', () {
    final target = SimpleLogger();
    test('test', () {
      expect(target.level, Level.INFO);
      expect(target.isLoggable(Level.INFO), true);
      expect(target.isLoggable(Level.FINE), false);
      expect(target.isLoggable(Level.SHOUT), true);
      expect(target.formatter, null);
      expect(target.levelSuffixes.isNotEmpty, true);
      expect(target.stacktraceEnabled, false);

      target.info('test');
      target.setLevel(Level.INFO, stacktraceEnabled: true);
      target.info('test');
    });
  });
}
