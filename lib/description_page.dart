import 'package:flutter/material.dart';

String baconText =
    "Bacon ipsum dolor amet sirloin swine spare ribs corned beef, ham hock kielbasa shankle pork belly. Pastrami chicken sirloin, pig ham shoulder turkey filet mignon hamburger swine. Chuck beef kevin strip steak brisket short ribs. Pork loin buffalo shank, turducken ham hock corned beef andouille pancetta jowl drumstick venison kielbasa. Buffalo frankfurter alcatra tongue. Tri-tip sirloin filet mignon pig brisket kielbasa, tail pork chop ground round ball tip kevin.\n \nHamburger sirloin shankle picanha andouille. Chicken swine alcatra tail, meatball burgdoggen doner turkey. Meatball prosciutto salami, pork chop shoulder chicken andouille landjaeger capicola bacon leberkas. Ball tip ribeye pork doner brisket bacon. T-bone jowl sirloin chicken pork loin cupim kielbasa fatback kevin. Ribeye beef ribs pork tail pork loin meatloaf rump.\n \nTri-tip pork chop leberkas, alcatra kevin ribeye salami doner jerky short ribs ball tip drumstick. T-bone pork chop sausage bresaola frankfurter fatback ribeye kevin, shoulder picanha leberkas. Bresaola bacon buffalo jerky turkey pork chop pancetta meatloaf salami. Ham pork belly andouille landjaeger beef, pastrami meatball jerky pancetta brisket kielbasa.\n \nTurkey biltong chislic tenderloin ribeye. Chislic turducken leberkas bacon ham hock cow short loin prosciutto burgdoggen strip steak picanha sausage ball tip rump. Brisket short ribs rump kevin, meatball shank beef hamburger salami jowl andouille chuck strip steak. Meatball sirloin kielbasa turducken ground round, sausage ribeye filet mignon tail boudin meatloaf beef ribs. Ground round turkey brisket biltong pork loin kevin turducken shoulder. Ground round porchetta frankfurter prosciutto.\n \nBiltong burgdoggen short loin hamburger cow. Shoulder meatball rump tongue burgdoggen. Ball tip ham meatball landjaeger pancetta, capicola pastrami spare ribs. Capicola hamburger chicken sausage. Sausage beef ribs fatback, cupim chislic corned beef ham hock meatloaf prosciutto shank tongue ribeye beef. Prosciutto drumstick andouille, pastrami pork chop venison biltong alcatra cupim landjaeger. Ham hock pork chop rump, capicola brisket kielbasa t-bone beef filet mignon short loin bacon.";

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset('images/$imagePath'),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                baconText,
                style: const TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
