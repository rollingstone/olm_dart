// Auto-generated file.

@JS('Olm')
library js;

import 'src/js_promise.dart';
import 'package:js/js.dart';
import 'dart:async';

@JS("init")
external Promise<void> _init();

Future<void> init() {
  final completer = new Completer<void>();
  Promise<void> myPromise = _init();
  myPromise.then(allowInterop(completer.complete),
      allowInterop(completer.completeError));
  return completer.future;
}

@JS()
external List<int> get_library_version();

@JS()
class EncryptResult {
  int type;
  String body;
}

@JS()
class DecryptResult {
  int message_index;
  String plaintext;
}

@JS()
class Account {
  external Account();
  external void free();
  external void create();
  external String identity_keys();
  external String one_time_keys();
  external String pickle(String key);
  external void unpickle(String key, String data);
  external void generate_one_time_keys(int count);
  external void remove_one_time_keys(Session session);
  external void mark_keys_as_published();
  external int max_number_of_one_time_keys();
  external String sign(String message);
}

@JS()
class Session {
  external Session();
  external void free();
  external String pickle(String key);
  external void unpickle(String key, String data);
  external void create_outbound(Account account, String identity_key, String one_time_key);
  external void create_inbound(Account account, String message);
  external void create_inbound_from(Account account, String identity_key, String one_time_key);
  external String session_id();
  external int has_received_message();
  external int encrypt_message_type();
  external int matches_inbound(String message);
  external int matches_inbound_from(String identity_key, String message);
  external EncryptResult encrypt(String plaintext);
  external String decrypt(int message_type, String message);
}

@JS()
class Utility {
  external Utility();
  external void free();
  external String sha256(String input);
  external void ed25519_verify(String key, String message, String signature);
}

@JS()
class InboundGroupSession {
  external InboundGroupSession();
  external void free();
  external String pickle(String key);
  external void unpickle(String key, String data);
  external void create(String session_key);
  external void import_session(String session_key);
  external DecryptResult decrypt(String message);
  external String session_id();
  external int first_known_index();
  external String export_session(int message_index);
}

@JS()
class OutboundGroupSession {
  external OutboundGroupSession();
  external void free();
  external String pickle(String key);
  external void unpickle(String key, String data);
  external void create();
  external String encrypt(String plaintext);
  external String session_id();
  external int message_index();
  external String session_key();
}
