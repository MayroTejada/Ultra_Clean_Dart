import 'package:mason/mason.dart';

void run(HookContext context) {
  // Read vars.
  // Use the `Logger` instance.

  context.logger.info(
    'lets bake this feature!! :D ',
  );
  List<dynamic> layers = context.vars['layers'];
  if (!layers.contains('all')) {
    if (!layers.contains('data')) {
      context.vars.addAll({'use_network': false});
    } else {
      context.vars.addAll({'use_network': true});
    }
    if (!layers.contains('domain')) {
      context.vars.addAll({'use_domain': false});
    } else {
      context.vars.addAll({'use_domain': true});
    }
  } else {
    context.vars.addAll({'use_network': true});
    context.vars.addAll({'use_domain': true});
  }

  context.logger.info(layers.toString());
}
