import 'package:analysis_server_plugin/plugin.dart';
import 'package:analysis_server_plugin/registry.dart';
import 'package:avoid_null_check_operator/src/avoid_null_check_operator_rule.dart';

final plugin = _AvoidNullCheckOperatorPlugin();

class _AvoidNullCheckOperatorPlugin extends Plugin {
  @override
  String get name => 'avoid_null_check_operator';

  @override
  void register(PluginRegistry registry) {
    registry.registerWarningRule(AvoidNullCheckOperatorRule());
  }
}
