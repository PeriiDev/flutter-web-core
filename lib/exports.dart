export 'package:flutter/material.dart';
export 'dart:math';
export 'dart:async'; //Class FutureOr

//App router
export 'package:flutter_web_core/global/routes/app_routes.dart';
//App theme
export 'package:flutter_web_core/global/theme/app_theme.dart';

export 'package:flutter_web_core/global/utils/constants.dart';
export 'package:flutter_web_core/global/utils/responsive.dart';

//Global - Services
export 'package:flutter_web_core/global/services/local_storage.dart';
//Services
export 'package:flutter_web_core/global/data/services/users_service.dart';

//Global - Models
export 'package:flutter_web_core/global/data/models/user.dart';

//Pages
export 'pages/about_page.dart';
export '../pages/contact_page.dart';
export 'global/view/error_page.dart';
export 'modules/home/view/home_page.dart';
export 'modules/login/view/pages/login_page.dart';


//Custom Widgets
export 'package:flutter_web_core/global/widgets/custom_box.dart';

//External libraries
export 'package:go_router/go_router.dart';
///BLOC
export 'package:flutter_bloc/flutter_bloc.dart';
//Bloc user
export 'package:flutter_web_core/bloc/user/user_cubit.dart';
//Bloc home
export 'package:flutter_web_core/modules/home/view/bloc/home_cubit.dart';