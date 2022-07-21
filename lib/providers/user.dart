import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_farm/domain/user.dart';

final userProvider = StateNotifierProvider<UserProvider, User>((ref) {
  return UserProvider(ref);
});

class UserProvider extends StateNotifier<User> {
  UserProvider(this.ref): super(User.init());

  final Ref ref;
}
