import 'package:flutter/material.dart';

class AppLoader extends StatefulWidget {
  final String? title;

  const AppLoader({Key? key, this.title}) : super(key: key);
  @override
  _AppLoaderState createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget.title ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17, color: Colors.grey)),
        Container(
          padding: const  EdgeInsets.all(50),
          decoration: const  BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    backgroundColor: Theme.of(context).primaryColor,
                    // valueColor: An,
                  ),
                ),
                Image.asset(
                  'assets/images/aqualogo.png',
                  
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          ),
        ),
        const  SizedBox(height: 20),
     
      ],
    );
  }
}
