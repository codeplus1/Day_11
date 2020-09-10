//#define of sizedbox=> jasko height and width properties hudaina but hami lie tyasko hight and width increase garnu paryo vaney hami tyo widgets lie SizedBox widgets ma wrap gardinu paryo kinaki jaba hami sizedbox ma wrap gardinxau taba tyo widgets sizedbox ko child vaehalxa ra sizedbox ko height and width jati increase garyo tyati nai hight and width tyo child ko pani vaehalxa.
//#define of routing=> routing vaney how can we move from one page to another page.
//Gradient=> Gradient is used for mixing of two or morethan two color.
//today class is About on following topic:- 1.decorating Container 2.Shape 3.Adjusting Button width and Height, 4.Gradient, 5.Routing
import 'package:day_11/pages/register_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //aaj hami k padhauxau vaney Container lie decoration kasari garney
            //1st ma aauta container banauxu
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                //2nd Aba container ko height and width deau
                height: 150,
                width: 300,

                //3 container lie decoration garnu xa vaney Decoration property used garum
                //4 container ko decoration le Boxdecoration linxa kinaki cointainer ta aauta box ho ni
                decoration: BoxDecoration(
                  //box ma shadow dinu xa vaney Box.shadow used garau
                  //aba Box-decoration  ko arko "gradient" property heerau
                  //gradient ko used 2 or more than 2 color mixing ko lagi hunxa
                  gradient: LinearGradient(
                    //if color lie side to side rakhnu paryo vaney begin and end properties lie use garney.
                    begin: Alignment.topLeft,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.green,
                      Colors.lightBlue,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ), //aba Box shadow ma k k janxa vaney kun color ko shadow dinxau so 1st hami color property used garau,2nd offsets property used garau
                  ], //Box shadow le Array[] linxa ani array vitra hami Box shadow nai lekhxau
                  //5 jastai aba malie box ko shape milaunu xa vaney ma aba shape property use garxu
                  // shape: BoxShape.circle,
                  shape: BoxShape
                      .rectangle, //yo hamro default ho aba hami yo rectangle ko border radius milau
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),

                    //aba if hami lie kunai side ma matrai circular banaunu xa hami "borderradius.Circular" ko sato "borderradius.only used garxau"
                  ),
                  color: Colors.red,
                ),
                //6 aba save garey paxi hamro App ma error aauxa aba error kina aayo vaney jun hami color used garey xau ni mathi ma tyo hami lie decoration ma used garnu parxa
                //6 if hami decoration used garey xainau vaney mathi ma color used garna pauxau if decoration used garey xau vaney mathi ma color used garna paudainau hami.
                //7 aba save garau ani hamro error disappear hunxa
              ),
            ),
            //aba hami buttons ko type ko barey ma heerxau kun button kasto xa vaneyra
            //1.raised button
            RaisedButton(
              color: Colors.pink,
              textColor: Colors
                  .white, //aba text ko color change garnu paryo vaney direct "textcolor" wala properties use gardiney na text ma gayera "style" use garney
              onPressed: () {},
              child: Text("Raised button"),
            ),
            //if malie kunai Button ko width increase garnu paryo vaney tyo button lie "Sizedbox" widgets ma wrap gardinu ra sizedbox aauta yasto widgets ho ki jasko width jati xa tyasko child ko width pani tyati nai hunxa
            SizedBox(
              width: 250,
              child: MaterialButton(
                //aba if malie yo button lie round garnu xa vaney k garxau pahila hami kunai kura lie round garnu hunthiyo vaney direct hami tyo widgets lie "cliprrect" ma wrap gardin thiyau but aba hami button ko case ma tyasto na garney button ko aauta properties xa "shape" yaslie use garney
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ), //aba hami "roundedRectangularBorder" rakhdiney ra usko "BorderRadius" haldiney
                color: Colors.red,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text("material button"),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text("Flat Button"),
            ),
            OutlineButton(
              textColor: Colors.red,
              // color: Colors.red,//aba yaha hera ki color use garey pani oulinebutton ko color change vayena
              borderSide: BorderSide(
                  color: Colors
                      .red), //but ma yasko "borderside" use gareyra border ko color change garna sakxu
              onPressed: () {},
              child: Text("outline button"),
            ),
            IconButton(
              onPressed: () {},
              // child: Text("Raised button"), //icon button ma text rakhna mildaina only icon.
              icon: Icon(Icons.favorite),
            ),
            //if hamro button ma icon and text dubai rakhnu paryo vaney yo "Raisedbutton.icon" use garney
            RaisedButton.icon(
              onPressed: () {},
              label: Text("Raised button with icon"),
              icon: Icon(Icons.account_balance),
            ),
            //if malir oulinebutton ko sath ma icon chahiyo vaney yasto garxu "outlinebutton.icon"
            OutlineButton.icon(
              onPressed: () {},
              label: Text("outline button with icon"),
              icon: Icon(Icons.access_alarms),
            ),
          ],
        ),
      ),
    );
  }
}
