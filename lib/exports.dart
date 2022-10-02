export 'package:flutter/material.dart';
export 'dart:math'; //Random numbers
export 'dart:async'; //Class FutureOr
export 'dart:convert'; // jsonDecode and encode

//App router
export 'package:flutter_web_core/global/routes/app_routes.dart';
//App theme
export 'package:flutter_web_core/global/theme/app_theme.dart';

//Global - Utils
export 'package:flutter_web_core/global/utils/constants.dart';
export 'package:flutter_web_core/global/utils/responsive.dart';
export 'package:flutter_web_core/global/widgets/custom_on_hover_button.dart';
export 'package:flutter_web_core/global/widgets/custom_on_hover_text.dart';
export 'package:flutter_web_core/global/utils/string_extension.dart';

//Global - Services
export 'package:flutter_web_core/global/data/services/local_storage.dart';
//Services
export 'package:flutter_web_core/global/data/services/users_service.dart';

//Global - Models
export 'package:flutter_web_core/global/models/user.dart';
export 'package:flutter_web_core/global/data/dto/users_response.dart';

//Pages
export 'modules/about/about_page.dart';
export 'modules/contact/contact_page.dart';
export 'global/view/error_page.dart';
export 'modules/home/home_page.dart';
export 'modules/login/login_page.dart';

//Custom Widgets
export 'package:flutter_web_core/global/widgets/custom_box.dart';

//External libraries
export 'package:go_router/go_router.dart';

///BLOC
export 'package:flutter_bloc/flutter_bloc.dart';
//Bloc user
export 'package:flutter_web_core/global/blocs/user/user_cubit.dart';

//Bloc home
export 'package:flutter_web_core/modules/home/bloc/home_cubit.dart';

//Custom Http
export 'package:flutter_web_core/global/api/custom_http.dart';
//Endpoints
export 'package:flutter_web_core/global/api/endpoints/cars_endpoints.dart';
