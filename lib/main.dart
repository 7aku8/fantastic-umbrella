import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/cubit/app_cubit.dart';
import 'package:gym_tracker/cubit/app_cubit_logic.dart';
import 'package:gym_tracker/services/data_service.dart';
import 'amplifyconfiguration.dart';

// import 'components/drawer.dart';

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      await Amplify.addPlugin(auth);

      await Amplify.configure(amplifyconfig);

      final result = await Amplify.Auth.fetchAuthSession(
        options: CognitoSessionOptions(getAWSCredentials: true),
      );
      String? identityId =
          (result as CognitoAuthSession).userPoolTokens!.idToken;
      print('printing results of getting fetch auth session');
      printWrapped(identityId);
    } on Exception catch (e) {
      print('An error occurred configuring Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
          title: 'Gym tracker',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          builder: Authenticator.builder(),
          home: BlocProvider<AppCubits>(
            create: (context) => AppCubits(data: DataServices()),
            child: const AppCubitLogics(),
          ),
     ),
    );
  }
}
