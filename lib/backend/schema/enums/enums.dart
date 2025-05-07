import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum UserTypes {
  guest,
  identified,
  app,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (UserTypes):
      return UserTypes.values.deserialize(value) as T?;
    default:
      return null;
  }
}
