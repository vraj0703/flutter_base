import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_base/flutter_base.dart';
import 'package:flutter_base/flutter_base_platform_interface.dart';
import 'package:flutter_base/flutter_base_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBasePlatform
    with MockPlatformInterfaceMixin
    implements FlutterBasePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterBasePlatform initialPlatform = FlutterBasePlatform.instance;

  test('$MethodChannelFlutterBase is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBase>());
  });

  test('getPlatformVersion', () async {
    FlutterBase flutterBasePlugin = FlutterBase();
    MockFlutterBasePlatform fakePlatform = MockFlutterBasePlatform();
    FlutterBasePlatform.instance = fakePlatform;

    expect(await flutterBasePlugin.getPlatformVersion(), '42');
  });
}
