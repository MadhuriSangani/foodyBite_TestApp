import 'package:auto_route/auto_route.dart';
import 'package:foodybite_testapp/screens/add_rating_screen.dart';
import 'package:foodybite_testapp/screens/category_detail_screen.dart';
import 'package:foodybite_testapp/screens/category_screen.dart';
import 'package:foodybite_testapp/screens/filter_screen.dart';
import 'package:foodybite_testapp/screens/followers_screen.dart';
import 'package:foodybite_testapp/screens/followings_screen.dart';
import 'package:foodybite_testapp/screens/menu_photos_screen.dart';
import 'package:foodybite_testapp/screens/new_review_screen.dart';
import 'package:foodybite_testapp/screens/other_user_profile_screen.dart';
import 'package:foodybite_testapp/screens/preview_menu_photos.dart';
import 'package:foodybite_testapp/screens/restaurant_detail_screen.dart';
import 'package:foodybite_testapp/screens/search_resulrs.dart';
import 'package:foodybite_testapp/screens/settings_screen.dart';

import '../screens/bookmark_Screen.dart';
import '../screens/edit_profile_screen.dart';
import '../screens/forgot_password_screen.dart';
import '../screens/find_friends_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/my_profile_screen.dart';
import '../screens/review_rating_screen.dart';
import '../screens/root_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/trending_resturants_screen.dart';
import '../screens/welcome_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: LoginScreen, initial: true),
    MaterialRoute(page: ForgotPasswordScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: WelcomeScreen),
    MaterialRoute(page: RootScreen),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: TrendingRestaurantsScreen),
    MaterialRoute(page: BookMarkScreen),
    MaterialRoute(page: NotificationScreen),
    MaterialRoute(page: MyProfileScreen),
    MaterialRoute(page: FindFriendsScreen),
    MaterialRoute(page: ReviewRatingScreen),
    MaterialRoute(page: CategoryScreen),
    MaterialRoute(page: CategoryDetailScreen),
    MaterialRoute(page: RestaurantDetailScreen),
    MaterialRoute(page: FilterScreen),
    MaterialRoute(page: MenuPhotosScreen),
    MaterialRoute(page: AddRatingScreen),
    MaterialRoute(page: NewReviewScreen),
    MaterialRoute(page: SearchResultsScreen),
    MaterialRoute(page: PreviewMenuPhotosScreen),
    MaterialRoute(page: SettingsScreen),
    MaterialRoute(page: EditProfileScreen),
    MaterialRoute(page: FollowersScreen),
    MaterialRoute(page: FollowingsScreen),
    MaterialRoute(page: OtherUserProfileScreen),
  ],
)
// extend the generated private router
class $AppRouter {}
