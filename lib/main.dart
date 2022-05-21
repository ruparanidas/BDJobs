import 'package:flutter/material.dart';
import 'package:ui_design/a_splash_screen.dart';
import 'package:ui_design/b_search_job.dart';
import 'package:ui_design/c_sign_in.dart';
import 'package:ui_design/d_registration.dart';
import 'package:ui_design/e_select_skills.dart';
import 'package:ui_design/f_accounts.dart';
import 'package:ui_design/g_sign_in_2.dart';
import 'package:ui_design/h_gender.dart';
import 'package:ui_design/i_number.dart';
import 'package:ui_design/j_email_add.dart';
import 'package:ui_design/k_congratulation.dart';
import 'package:ui_design/l_home.dart';
import 'package:ui_design/l_homepage.dart';
import 'package:ui_design/m_hot_job.dart';
import 'package:ui_design/n_lorem.dart';
import 'package:ui_design/n_lorem_tab_bar.dart';
import 'package:ui_design/p_more.dart';
import 'package:ui_design/q_job_search.dart';
import 'package:ui_design/r_exit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
