import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_chat_app/module/myprovider.dart';
import 'package:provider/provider.dart';

import '../module/User.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> _data = {'username': '', 'pass': ''};
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    gapPadding: 4,
                  ),
                  fillColor: Colors.white,
                  labelStyle:
                      TextStyle(color: Colors.grey[500], fontSize: 14.0),
                  labelText: 'username',
                ),
                onChanged: (val) => _data['username'] = val,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    gapPadding: 4,
                  ),
                  fillColor: Colors.white,
                  labelStyle:
                      TextStyle(color: Colors.grey[500], fontSize: 14.0),
                  labelText: 'password',
                  counterText: '',
                ),
                obscureText: true,
                onChanged: (val) => _data['pass'] = val,
              ),
              const SizedBox(
                height: 25,
              ),
              context.watch<MyProvider>().loading!
                  ? const CupertinoActivityIndicator()
                  : MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(10),
                      child: const Text('Login'),
                      onPressed: () async {
                        try {
                          try {
                            context.read<MyProvider>().setLoading(true);
                            context.read<MyProvider>().setUser(
                                await User.authenticate('${_data['username']}',
                                    '${_data['pass']}'));
                          } catch (e) {
                            final snackBar = SnackBar(
                              content: Text(
                                  '${e.toString().replaceAll('Exception:', '')}'),
                              backgroundColor: Colors.red,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        } finally {
                          context.read<MyProvider>().setLoading(false);
                        }
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
