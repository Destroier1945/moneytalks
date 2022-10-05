import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Moneytalks')),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
              'Tailored suits, chauffeured cars Fine hotels and big cigars Up for grabs, up for a price Where the red hot girls keep on dancing through the night The claim is in you The sights are on me So what do you do Thats guaranteed Hey little girl, you want it all The furs, the diamonds, the painting on the wall  Come on, come on, love me for the money Come on, come on, listen to the money talk Come on, come on, love me for the money Come on, come on, listen to the money talk  '),
        ),
      ),
    );
  }
}
