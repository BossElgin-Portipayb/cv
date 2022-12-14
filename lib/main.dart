import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/first': (context) => const FirstRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      '/fourth': (context) => FourthRoute(),
      '/fifth': (context) => FifthRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  HomeRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
          backgroundColor: Colors.teal[400],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('Images/bra.jpg'),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'Enter Your email',
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty)
                                  return 'Email is required';
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter your password',
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty)
                                  return 'Password must be required';
                              },
                            )),
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, '/first');
                              return;
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Log in'), // <-- Text
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                // <-- Icon
                                Icons.login,
                                size: 27.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 18)),
                              onPressed: () {
                                Navigator.pushNamed(context, '/fourth');
                              },
                              child: const Text('Create an Account'),
                            ),
                            SizedBox(width: 10.0),
                            TextButton(
                              style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 18)),
                              onPressed: () {
                                Navigator.pushNamed(context, '/fifth');
                              },
                              child: const Text('Forgot your Password?'),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        title: const Text('My Personal Identification'),
        backgroundColor: Colors.tealAccent[400],
      ), // AppBar
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 50.0,
                child: Image(
                  image: AssetImage('Images/Eejay.jpg'),
                )),
            Text(
              'AUSTRIA, ELGIN JAMES D.',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 28.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'BS.Information in Technology 4 Block 1',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                color: Colors.black,
                fontSize: 18.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green[800],
                  ),
                  title: Text(
                    '#09517338899',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                title: Text(
                  'EejayAustriaDioquino',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.house,
                  color: Colors.yellow[900],
                ),
                title: Text(
                  'Nalsian, Calasiao, Pangasinan',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // background
                onPrimary: Colors.black, // foreground
              ),
              child: const Icon(Icons.school),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ), // ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Icon(Icons.person),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ],
        ),
      ),
    ); // Scaffold
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.tealAccent[400],
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.deepPurple,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    'BSIT in Philippine College of Science and Technology'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Bachelor of Science in Information Technology',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
                subtitle: Text('Batch 2018-2024'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.green,
                ),
                title: Text(
                  'Senior High School',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  '(CCNHS)Calasiao Comprehensive National HighSchool',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16.0,
                  ),
                ),
                subtitle: Text('Batch 2016-2018'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  '(CCNHS) Calasiao Comprehensive National High School',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16.0,
                  ),
                ),
                subtitle: Text('Batch 2012-2016'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  '(CCS) Calasiao Central School',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
                subtitle: Text('Batch 2006-2012'),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        title: const Text("My Professional Background"),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 145.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.green,
                ),
                title: Text(
                  "Professional Summary",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("I just got my college diploma."),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.album,
                  color: Colors.black12,
                ),
                title: Text(
                  'Skills and Abilities',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "Knowledge of computers, a creative flair, and a methodical approach to work"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.web_rounded,
                  color: Colors.black12,
                ),
                title: Text(
                  'Web-Development',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "I have knowledge of developing web applications for many platforms and planning their delivery."),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black12,
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "NCII computer system servicing waiting to graduate from PHILCST"),
              ),
            ),
          ],
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}

class FourthRoute extends StatelessWidget {
  FourthRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Enter Full Name',
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Full Name must required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Address',
                              hintText: 'Enter Address',
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Address is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter email',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Email is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Password is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/first');
                            return;
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Create'), // <-- Text
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              // <-- Icon
                              Icons.login,
                              size: 27.0,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class FifthRoute extends StatelessWidget {
  FifthRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter Email',
                              prefixIcon: Icon(Icons.mail),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Email is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Current Password',
                              hintText: 'Enter Current Password',
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Password is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'New Password',
                              hintText: 'Enter New Password',
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Password is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Reenter New Password',
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Password is required';
                            },
                          )),
                      SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/first');
                            return;
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Submit'), // <-- Text
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_ios,
                              size: 27.0,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
