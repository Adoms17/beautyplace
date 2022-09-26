import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Center(
            child: Image.asset(
              'assets/images/splash@2x.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Login': (data) async => LoginWidget(),
  'Register': (data) async => RegisterWidget(),
  'CreateProfile': (data) async => CreateProfileWidget(),
  'CompanyProfile': (data) async => CompanyProfileWidget(),
  'AddWorkExp': (data) async => AddWorkExpWidget(),
  'Onboarding': (data) async => OnboardingWidget(),
  'SEARCH_Jobs': (data) async => SEARCHJobsWidget(),
  'MAINSavedJobs': (data) async => NavBarPage(initialPage: 'MAINSavedJobs'),
  'MAIN_Candidates': (data) async => NavBarPage(initialPage: 'MAIN_Candidates'),
  'SEARCH_Candidates': (data) async => SEARCHCandidatesWidget(),
  'MAIN_MyProfile': (data) async => NavBarPage(initialPage: 'MAIN_MyProfile'),
  'MAIN_Chat': (data) async => NavBarPage(initialPage: 'MAIN_Chat'),
  'DETAILS_Chat': (data) async => DETAILSChatWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
        chatRef: getParameter(data, 'chatRef'),
      ),
  'JobPost_DetailsActual': (data) async => JobPostDetailsActualWidget(
        likedJob: getParameter(data, 'likedJob'),
        jobPostDetails: getParameter(data, 'jobPostDetails'),
      ),
  'JobPost_submitApplication': (data) async => JobPostSubmitApplicationWidget(
        jobPostDetails: getParameter(data, 'jobPostDetails'),
      ),
  'JobPost_Applied': (data) async => JobPostAppliedWidget(
        application: await getDocumentParameter(
            data, 'application', AppliedJobsRecord.serializer),
        jobPostDetails: getParameter(data, 'jobPostDetails'),
      ),
  'JobPost_MyJob_Applicants': (data) async => JobPostMyJobApplicantsWidget(
        jobPostDetails: getParameter(data, 'jobPostDetails'),
      ),
  'forgotPassword': (data) async => ForgotPasswordWidget(),
  'editProfile': (data) async => EditProfileWidget(
        userProfile: getParameter(data, 'userProfile'),
      ),
  'createJob': (data) async => CreateJobWidget(),
  'candidateDetails': (data) async => CandidateDetailsWidget(
        candidateDetails: getParameter(data, 'candidateDetails'),
      ),
  'JobPost_Details': (data) async => JobPostDetailsWidget(
        likedJob: getParameter(data, 'likedJob'),
        jobPostDetails: getParameter(data, 'jobPostDetails'),
      ),
  'companyDetails': (data) async => CompanyDetailsWidget(
        companyDetails: getParameter(data, 'companyDetails'),
      ),
  'HomePage_OLD': (data) async => HomePageOLDWidget(),
  'UsersList': (data) async => UsersListWidget(),
  'PhoneSignIn': (data) async => PhoneSignInWidget(),
  'VerifySMSCode': (data) async => VerifySMSCodeWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
