import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/error/error.dart';

class AvoidNullCheckOperatorRule extends AnalysisRule {
  AvoidNullCheckOperatorRule()
      : super(
          name: 'avoid_null_check_operator',
          description: 'Warns when the null check operator (!) is used.',
        );

  static const LintCode code = LintCode(
    'avoid_null_check_operator',
    'Avoid using the null check operator (!).',
  );

  @override
  LintCode get diagnosticCode => code;

  @override
  void registerNodeProcessors(
      RuleVisitorRegistry registry, RuleContext context) {
    final visitor = _Visitor(this);
    registry.addPostfixExpression(this, visitor);
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this.rule);

  final AvoidNullCheckOperatorRule rule;

  @override
  void visitPostfixExpression(PostfixExpression node) {
    if (node.operator.type == TokenType.BANG) {
      rule.reportAtNode(node);
    }
  }
}
