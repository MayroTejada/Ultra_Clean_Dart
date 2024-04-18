import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
//   final appName = context.vars['app_name'];
//   final progress = context.logger.progress('generating .g files in $appName');
// // Get a list of directories in the current directory
//   Directory flutterProjectDirectory = Directory.current;

//   // Iterate over the directories to find the one with the given project name
//   runSubProcess() async {
//     ProcessResult result = await Process.run(
//       'bash',
//       [
//         '-c',
//         'cd ${flutterProjectDirectory.path}',
//         '&& flutter pub get',
//       ],
//     );

//     // Check if the command was executed successfully
//     if (result.exitCode == 0) {
//       print('${result.stdout}');
//     } else {
//       print('flutter pub get failed. Error: ${result.stderr}');
//     }
//     ;
//   }

//   if (flutterProjectDirectory.path.contains(appName)) {
//     await runSubProcess();
//     print(flutterProjectDirectory);
//   } else {
//     context.logger.err('flutter project not found');
//   }

//   progress.complete();
}
