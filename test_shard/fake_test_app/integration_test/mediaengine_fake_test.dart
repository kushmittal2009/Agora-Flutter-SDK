import 'package:integration_test/integration_test.dart';

import 'generated/mediaengine_fake_test.generated.dart' as generated;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  generated.mediaEngineSmokeTestCases();
}
