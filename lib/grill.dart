
library grill;

import 'dart:async';

import 'src/prompt.dart';
import 'src/question.dart';
export 'src/question.dart';

Prompt get prompt => _prompt;
Prompt _prompt = new Prompt();

/// Ask the user a [question].
///
/// [question] can be a [String] or [Question].
Future ask(question) => prompt.ask(question);

/// Ask the user a [question] synchronously.
///
/// [question] can be a [String] or [Question].
askSync(question) => prompt.askSync(question);

/// Confirm a [question] with the user.
Future<bool> confirm(String question, {bool defaultValue}) =>
    prompt.ask(new Question.confirm(question, defaultValue: defaultValue));

/// Confirm a [question] with the user synchronously.
bool confirmSync(String question, {bool defaultValue}) =>
    prompt.askSync(new Question.confirm(question, defaultValue: defaultValue));

/// Close the prompt.
///
/// Call this when you no longer need to [ask] any more questions.  You do
/// not need to call this method if you only use [askSync].
Future close() => prompt.close();