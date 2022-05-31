// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/material.dart' as _i28;

import '../screens/add_rating_screen.dart' as _i18;
import '../screens/bookmark_Screen.dart' as _i8;
import '../screens/category_detail_screen.dart' as _i14;
import '../screens/category_screen.dart' as _i13;
import '../screens/edit_profile_screen.dart' as _i23;
import '../screens/filter_screen.dart' as _i16;
import '../screens/find_friends_screen.dart' as _i11;
import '../screens/followers_screen.dart' as _i24;
import '../screens/followings_screen.dart' as _i25;
import '../screens/forgot_password_screen.dart' as _i2;
import '../screens/home_screen.dart' as _i6;
import '../screens/login_screen.dart' as _i1;
import '../screens/menu_photos_screen.dart' as _i17;
import '../screens/my_profile_screen.dart' as _i10;
import '../screens/new_review_screen.dart' as _i19;
import '../screens/notification_screen.dart' as _i9;
import '../screens/other_user_profile_screen.dart' as _i26;
import '../screens/preview_menu_photos.dart' as _i21;
import '../screens/restaurant_detail_screen.dart' as _i15;
import '../screens/review_rating_screen.dart' as _i12;
import '../screens/root_screen.dart' as _i5;
import '../screens/search_resulrs.dart' as _i20;
import '../screens/settings_screen.dart' as _i22;
import '../screens/sign_up_screen.dart' as _i3;
import '../screens/trending_resturants_screen.dart' as _i7;
import '../screens/welcome_screen.dart' as _i4;
import '../widgets/restaurant_detail.dart' as _i29;

class AppRouter extends _i27.RootStackRouter {
  AppRouter([_i28.GlobalKey<_i28.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.LoginScreen(key: args.key));
    },
    ForgotPasswordScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordScreenRouteArgs>(
          orElse: () => const ForgotPasswordScreenRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.ForgotPasswordScreen(key: args.key));
    },
    SignUpScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpScreenRouteArgs>(
          orElse: () => const SignUpScreenRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SignUpScreen(key: args.key));
    },
    WelcomeScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.WelcomeScreen());
    },
    RootScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RootScreen());
    },
    HomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeScreenRouteArgs>(
          orElse: () => const HomeScreenRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.HomeScreen(key: args.key));
    },
    TrendingRestaurantsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TrendingRestaurantsScreenRouteArgs>(
          orElse: () => const TrendingRestaurantsScreenRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.TrendingRestaurantsScreen(key: args.key));
    },
    BookMarkScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.BookMarkScreen());
    },
    NotificationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationScreenRouteArgs>(
          orElse: () => const NotificationScreenRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.NotificationScreen(key: args.key));
    },
    MyProfileScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.MyProfileScreen());
    },
    FindFriendsScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.FindFriendsScreen());
    },
    ReviewRatingScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ReviewRatingScreen());
    },
    CategoryScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.CategoryScreen());
    },
    CategoryDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailScreenRouteArgs>();
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.CategoryDetailScreen(
              categoryName: args.categoryName,
              numberOfCategories: args.numberOfCategories,
              selectedCategory: args.selectedCategory,
              imagePath: args.imagePath,
              gradient: args.gradient));
    },
    RestaurantDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantDetailScreenRouteArgs>();
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i15.RestaurantDetailScreen(args.restaurantDetails,
              key: args.key));
    },
    FilterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FilterScreenRouteArgs>(
          orElse: () => const FilterScreenRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.FilterScreen(key: args.key));
    },
    MenuPhotosScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.MenuPhotosScreen());
    },
    AddRatingScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.AddRatingScreen());
    },
    NewReviewScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.NewReviewScreen());
    },
    SearchResultsScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.SearchResultsScreen());
    },
    PreviewMenuPhotosScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PreviewMenuPhotosScreenRouteArgs>(
          orElse: () => const PreviewMenuPhotosScreenRouteArgs());
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i21.PreviewMenuPhotosScreen(key: args.key));
    },
    SettingsScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.SettingsScreen());
    },
    EditProfileScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.EditProfileScreen());
    },
    FollowersScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.FollowersScreen());
    },
    FollowingsScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.FollowingsScreen());
    },
    OtherUserProfileScreenRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.OtherUserProfileScreen());
    }
  };

  @override
  List<_i27.RouteConfig> get routes => [
        _i27.RouteConfig(LoginScreenRoute.name, path: '/'),
        _i27.RouteConfig(ForgotPasswordScreenRoute.name,
            path: '/forgot-password-screen'),
        _i27.RouteConfig(SignUpScreenRoute.name, path: '/sign-up-screen'),
        _i27.RouteConfig(WelcomeScreenRoute.name, path: '/welcome-screen'),
        _i27.RouteConfig(RootScreenRoute.name, path: '/root-screen'),
        _i27.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i27.RouteConfig(TrendingRestaurantsScreenRoute.name,
            path: '/trending-restaurants-screen'),
        _i27.RouteConfig(BookMarkScreenRoute.name, path: '/book-mark-screen'),
        _i27.RouteConfig(NotificationScreenRoute.name,
            path: '/notification-screen'),
        _i27.RouteConfig(MyProfileScreenRoute.name, path: '/my-profile-screen'),
        _i27.RouteConfig(FindFriendsScreenRoute.name,
            path: '/find-friends-screen'),
        _i27.RouteConfig(ReviewRatingScreenRoute.name,
            path: '/review-rating-screen'),
        _i27.RouteConfig(CategoryScreenRoute.name, path: '/category-screen'),
        _i27.RouteConfig(CategoryDetailScreenRoute.name,
            path: '/category-detail-screen'),
        _i27.RouteConfig(RestaurantDetailScreenRoute.name,
            path: '/restaurant-detail-screen'),
        _i27.RouteConfig(FilterScreenRoute.name, path: '/filter-screen'),
        _i27.RouteConfig(MenuPhotosScreenRoute.name,
            path: '/menu-photos-screen'),
        _i27.RouteConfig(AddRatingScreenRoute.name, path: '/add-rating-screen'),
        _i27.RouteConfig(NewReviewScreenRoute.name, path: '/new-review-screen'),
        _i27.RouteConfig(SearchResultsScreenRoute.name,
            path: '/search-results-screen'),
        _i27.RouteConfig(PreviewMenuPhotosScreenRoute.name,
            path: '/preview-menu-photos-screen'),
        _i27.RouteConfig(SettingsScreenRoute.name, path: '/settings-screen'),
        _i27.RouteConfig(EditProfileScreenRoute.name,
            path: '/edit-profile-screen'),
        _i27.RouteConfig(FollowersScreenRoute.name, path: '/followers-screen'),
        _i27.RouteConfig(FollowingsScreenRoute.name,
            path: '/followings-screen'),
        _i27.RouteConfig(OtherUserProfileScreenRoute.name,
            path: '/other-user-profile-screen')
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i27.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i28.Key? key})
      : super(LoginScreenRoute.name,
            path: '/', args: LoginScreenRouteArgs(key: key));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordScreenRoute
    extends _i27.PageRouteInfo<ForgotPasswordScreenRouteArgs> {
  ForgotPasswordScreenRoute({_i28.Key? key})
      : super(ForgotPasswordScreenRoute.name,
            path: '/forgot-password-screen',
            args: ForgotPasswordScreenRouteArgs(key: key));

  static const String name = 'ForgotPasswordScreenRoute';
}

class ForgotPasswordScreenRouteArgs {
  const ForgotPasswordScreenRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpScreenRoute extends _i27.PageRouteInfo<SignUpScreenRouteArgs> {
  SignUpScreenRoute({_i28.Key? key})
      : super(SignUpScreenRoute.name,
            path: '/sign-up-screen', args: SignUpScreenRouteArgs(key: key));

  static const String name = 'SignUpScreenRoute';
}

class SignUpScreenRouteArgs {
  const SignUpScreenRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'SignUpScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.WelcomeScreen]
class WelcomeScreenRoute extends _i27.PageRouteInfo<void> {
  const WelcomeScreenRoute()
      : super(WelcomeScreenRoute.name, path: '/welcome-screen');

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i5.RootScreen]
class RootScreenRoute extends _i27.PageRouteInfo<void> {
  const RootScreenRoute() : super(RootScreenRoute.name, path: '/root-screen');

  static const String name = 'RootScreenRoute';
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreenRoute extends _i27.PageRouteInfo<HomeScreenRouteArgs> {
  HomeScreenRoute({_i28.Key? key})
      : super(HomeScreenRoute.name,
            path: '/home-screen', args: HomeScreenRouteArgs(key: key));

  static const String name = 'HomeScreenRoute';
}

class HomeScreenRouteArgs {
  const HomeScreenRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'HomeScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.TrendingRestaurantsScreen]
class TrendingRestaurantsScreenRoute
    extends _i27.PageRouteInfo<TrendingRestaurantsScreenRouteArgs> {
  TrendingRestaurantsScreenRoute({_i28.Key? key})
      : super(TrendingRestaurantsScreenRoute.name,
            path: '/trending-restaurants-screen',
            args: TrendingRestaurantsScreenRouteArgs(key: key));

  static const String name = 'TrendingRestaurantsScreenRoute';
}

class TrendingRestaurantsScreenRouteArgs {
  const TrendingRestaurantsScreenRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'TrendingRestaurantsScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.BookMarkScreen]
class BookMarkScreenRoute extends _i27.PageRouteInfo<void> {
  const BookMarkScreenRoute()
      : super(BookMarkScreenRoute.name, path: '/book-mark-screen');

  static const String name = 'BookMarkScreenRoute';
}

/// generated route for
/// [_i9.NotificationScreen]
class NotificationScreenRoute
    extends _i27.PageRouteInfo<NotificationScreenRouteArgs> {
  NotificationScreenRoute({_i28.Key? key})
      : super(NotificationScreenRoute.name,
            path: '/notification-screen',
            args: NotificationScreenRouteArgs(key: key));

  static const String name = 'NotificationScreenRoute';
}

class NotificationScreenRouteArgs {
  const NotificationScreenRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'NotificationScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.MyProfileScreen]
class MyProfileScreenRoute extends _i27.PageRouteInfo<void> {
  const MyProfileScreenRoute()
      : super(MyProfileScreenRoute.name, path: '/my-profile-screen');

  static const String name = 'MyProfileScreenRoute';
}

/// generated route for
/// [_i11.FindFriendsScreen]
class FindFriendsScreenRoute extends _i27.PageRouteInfo<void> {
  const FindFriendsScreenRoute()
      : super(FindFriendsScreenRoute.name, path: '/find-friends-screen');

  static const String name = 'FindFriendsScreenRoute';
}

/// generated route for
/// [_i12.ReviewRatingScreen]
class ReviewRatingScreenRoute extends _i27.PageRouteInfo<void> {
  const ReviewRatingScreenRoute()
      : super(ReviewRatingScreenRoute.name, path: '/review-rating-screen');

  static const String name = 'ReviewRatingScreenRoute';
}

/// generated route for
/// [_i13.CategoryScreen]
class CategoryScreenRoute extends _i27.PageRouteInfo<void> {
  const CategoryScreenRoute()
      : super(CategoryScreenRoute.name, path: '/category-screen');

  static const String name = 'CategoryScreenRoute';
}

/// generated route for
/// [_i14.CategoryDetailScreen]
class CategoryDetailScreenRoute
    extends _i27.PageRouteInfo<CategoryDetailScreenRouteArgs> {
  CategoryDetailScreenRoute(
      {required String categoryName,
      required int numberOfCategories,
      required int selectedCategory,
      required String imagePath,
      required _i28.Gradient gradient})
      : super(CategoryDetailScreenRoute.name,
            path: '/category-detail-screen',
            args: CategoryDetailScreenRouteArgs(
                categoryName: categoryName,
                numberOfCategories: numberOfCategories,
                selectedCategory: selectedCategory,
                imagePath: imagePath,
                gradient: gradient));

  static const String name = 'CategoryDetailScreenRoute';
}

class CategoryDetailScreenRouteArgs {
  const CategoryDetailScreenRouteArgs(
      {required this.categoryName,
      required this.numberOfCategories,
      required this.selectedCategory,
      required this.imagePath,
      required this.gradient});

  final String categoryName;

  final int numberOfCategories;

  final int selectedCategory;

  final String imagePath;

  final _i28.Gradient gradient;

  @override
  String toString() {
    return 'CategoryDetailScreenRouteArgs{categoryName: $categoryName, numberOfCategories: $numberOfCategories, selectedCategory: $selectedCategory, imagePath: $imagePath, gradient: $gradient}';
  }
}

/// generated route for
/// [_i15.RestaurantDetailScreen]
class RestaurantDetailScreenRoute
    extends _i27.PageRouteInfo<RestaurantDetailScreenRouteArgs> {
  RestaurantDetailScreenRoute(
      {required _i29.RestaurantDetails restaurantDetails, _i28.Key? key})
      : super(RestaurantDetailScreenRoute.name,
            path: '/restaurant-detail-screen',
            args: RestaurantDetailScreenRouteArgs(
                restaurantDetails: restaurantDetails, key: key));

  static const String name = 'RestaurantDetailScreenRoute';
}

class RestaurantDetailScreenRouteArgs {
  const RestaurantDetailScreenRouteArgs(
      {required this.restaurantDetails, this.key});

  final _i29.RestaurantDetails restaurantDetails;

  final _i28.Key? key;

  @override
  String toString() {
    return 'RestaurantDetailScreenRouteArgs{restaurantDetails: $restaurantDetails, key: $key}';
  }
}

/// generated route for
/// [_i16.FilterScreen]
class FilterScreenRoute extends _i27.PageRouteInfo<FilterScreenRouteArgs> {
  FilterScreenRoute({_i28.Key? key})
      : super(FilterScreenRoute.name,
            path: '/filter-screen', args: FilterScreenRouteArgs(key: key));

  static const String name = 'FilterScreenRoute';
}

class FilterScreenRouteArgs {
  const FilterScreenRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'FilterScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.MenuPhotosScreen]
class MenuPhotosScreenRoute extends _i27.PageRouteInfo<void> {
  const MenuPhotosScreenRoute()
      : super(MenuPhotosScreenRoute.name, path: '/menu-photos-screen');

  static const String name = 'MenuPhotosScreenRoute';
}

/// generated route for
/// [_i18.AddRatingScreen]
class AddRatingScreenRoute extends _i27.PageRouteInfo<void> {
  const AddRatingScreenRoute()
      : super(AddRatingScreenRoute.name, path: '/add-rating-screen');

  static const String name = 'AddRatingScreenRoute';
}

/// generated route for
/// [_i19.NewReviewScreen]
class NewReviewScreenRoute extends _i27.PageRouteInfo<void> {
  const NewReviewScreenRoute()
      : super(NewReviewScreenRoute.name, path: '/new-review-screen');

  static const String name = 'NewReviewScreenRoute';
}

/// generated route for
/// [_i20.SearchResultsScreen]
class SearchResultsScreenRoute extends _i27.PageRouteInfo<void> {
  const SearchResultsScreenRoute()
      : super(SearchResultsScreenRoute.name, path: '/search-results-screen');

  static const String name = 'SearchResultsScreenRoute';
}

/// generated route for
/// [_i21.PreviewMenuPhotosScreen]
class PreviewMenuPhotosScreenRoute
    extends _i27.PageRouteInfo<PreviewMenuPhotosScreenRouteArgs> {
  PreviewMenuPhotosScreenRoute({_i28.Key? key})
      : super(PreviewMenuPhotosScreenRoute.name,
            path: '/preview-menu-photos-screen',
            args: PreviewMenuPhotosScreenRouteArgs(key: key));

  static const String name = 'PreviewMenuPhotosScreenRoute';
}

class PreviewMenuPhotosScreenRouteArgs {
  const PreviewMenuPhotosScreenRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'PreviewMenuPhotosScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i22.SettingsScreen]
class SettingsScreenRoute extends _i27.PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(SettingsScreenRoute.name, path: '/settings-screen');

  static const String name = 'SettingsScreenRoute';
}

/// generated route for
/// [_i23.EditProfileScreen]
class EditProfileScreenRoute extends _i27.PageRouteInfo<void> {
  const EditProfileScreenRoute()
      : super(EditProfileScreenRoute.name, path: '/edit-profile-screen');

  static const String name = 'EditProfileScreenRoute';
}

/// generated route for
/// [_i24.FollowersScreen]
class FollowersScreenRoute extends _i27.PageRouteInfo<void> {
  const FollowersScreenRoute()
      : super(FollowersScreenRoute.name, path: '/followers-screen');

  static const String name = 'FollowersScreenRoute';
}

/// generated route for
/// [_i25.FollowingsScreen]
class FollowingsScreenRoute extends _i27.PageRouteInfo<void> {
  const FollowingsScreenRoute()
      : super(FollowingsScreenRoute.name, path: '/followings-screen');

  static const String name = 'FollowingsScreenRoute';
}

/// generated route for
/// [_i26.OtherUserProfileScreen]
class OtherUserProfileScreenRoute extends _i27.PageRouteInfo<void> {
  const OtherUserProfileScreenRoute()
      : super(OtherUserProfileScreenRoute.name,
            path: '/other-user-profile-screen');

  static const String name = 'OtherUserProfileScreenRoute';
}
