import 'package:flutter/material.dart';
import 'package:my_resume/project_list.dart';
import 'package:my_resume/skill_tools.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {

  Color purpleColor=Color(0xff6e009a);
   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(40),
        children: [
          Row(
            children: [
              Expanded(
                child: ContactAndIntro(),
              ),
              ClipOval(
                child: Container(
                  width: 150.0, // Set the width of the circular image
                  height: 150.0,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(20),
                  //   border: Border.all(color: Colors.grey,width: 1)
                  // ),// Set the height of the circular image
                  child: Image.asset('images/photo.jpg',fit: BoxFit.contain,),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    JobExperience(),
                    SizedBox(height: 20,),
                    ProjectSection()
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TrainingSection(),
                  SizedBox(height: 20,),
                  SkillSection(),
                  SizedBox(height: 20,),
                  ResearchPaperSection(),
                  SizedBox(height: 20,),
                  PlaystoreAppSection(purpleColor: purpleColor),
                  SizedBox(height: 20,),
                  EducationSection()
                ],
              )
            ],
          ),


        ],
      ),
    );
  }

  Padding ProjectSection() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'PROJECTS',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                color: Colors.blueAccent,
                width: 120,
                height: 2,
              ),
              SizedBox(height: 4,),
              ...myProjectList.map((project) => Container(
                child: ProjectItem(project),
              ))
            ],
          ),
    );
  }

  Column ProjectItem(ProjectInfo project) {
    return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(project.id.toString()+'.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(
                          0xff6e009a)),),
                      SizedBox(width: 4,),
                      Text(project.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(
                          0xff6e009a))),
                      SizedBox(width: 2,),
                      Text('(${project.date})',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(
                          0xff6e009a)))
                    ],
                  ),
                  SizedBox(height: 2,),
                  Text(project.tools),
                  SizedBox(height: 2,),
                  Text(project.details,style: TextStyle(color: Colors.black),),
                  SizedBox(height: 4,)
                ],
              );
  }
}

class EducationSection extends StatelessWidget {
  const EducationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          color: Colors.blueAccent,
          width: 110,
          height: 2,
        ),
        SizedBox(height: 8,),
        Text('Msc in CSE(Running)',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text('Jagannath University',style: TextStyle(color: Colors.blueAccent),),
        SizedBox(height: 4,),
        Text('Bsc in CSE',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text('Stamford University (Cgpa-3.70)',style: TextStyle(color: Colors.blueAccent),),
        SizedBox(height: 4,),
        Text('H.S.C',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text('Bir Shrestha Munshi Abdur Rouf Public Collage\n(Cgpa-4.00)',style: TextStyle(color: Colors.blueAccent),),
        SizedBox(height: 4,),
        Text('S.S.C',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text('Armanitola Govt. High School\n(Cgpa-5.00)',style: TextStyle(color: Colors.blueAccent),),
      ],
    );
  }
}

class PlaystoreAppSection extends StatelessWidget {
  const PlaystoreAppSection({
    super.key,
    required this.purpleColor,
  });

  final Color purpleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Playstore Apps Link',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          color: Colors.blueAccent,
          width: 200,
          height: 2,
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1,color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Speed Meter',style: TextStyle(fontWeight: FontWeight.bold,color: purpleColor),),
              ),
            ),
            SizedBox(width: 6,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1,color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Remit(IOS)',style: TextStyle(fontWeight: FontWeight.bold,color: purpleColor),),
              ),
            ),
          ],
        ),
        SizedBox(height: 6,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(width: 1,color: Colors.grey)
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Pencilbox Training Institute',style: TextStyle(fontWeight: FontWeight.bold,color: purpleColor),),
          ),
        ),
        SizedBox(height: 6,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(width: 1,color: Colors.grey)
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Bitbirds Solution',style: TextStyle(fontWeight: FontWeight.bold,color: purpleColor),),
          ),
        ),
      ],
    );
  }
}

class ResearchPaperSection extends StatelessWidget {
  const ResearchPaperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Research Paper',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          color: Colors.blueAccent,
          width: 140,
          height: 2,
        ),
        SizedBox(height: 4,),
        Text('IoT based car and vehicle license\n checking System.'),
        SizedBox(height: 4,),
        InkWell(
            onTap: () async {
              const url = 'https://pub.dev/packages/url_launcher/install'; // Replace with your URL
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url),webViewConfiguration: WebViewConfiguration(enableJavaScript: true
                ));
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Text('Overleaf Link',style: TextStyle(decoration: TextDecoration.underline,color: Color(0xff6e009a),fontWeight: FontWeight.bold),))
      ],
    );
  }
}

class SkillSection extends StatelessWidget {
  const SkillSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skill & Tools',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          color: Colors.blueAccent,
          width: 140,
          height: 2,
        ),
        SizedBox(height: 6,),
        ...mySkillList.map((skill) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    width: 100,
                    child: Text(skill.name)),
                ...List.generate(6, (index) => Container(
                  width: 20, // Adjust the size of the circle as needed
                  height: 20, // Adjust the size of the circle as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index<skill.level?Colors.redAccent:Colors.white,
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                )),
              ],

            ),
            SizedBox(height: 2,)
          ],
        )),
        SizedBox(height: 10,),
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text('Tools: ',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Android Studio ,Postman, Xcode,\nAdmob, Playstore, Appstore, FCM.',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff6e009a)),)
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(width: 1,color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Communication'),
              ),
            ),
            SizedBox(width: 6,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1,color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Management'),
              ),
            ),
          ],
        ),
        SizedBox(height: 6,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(width: 1,color: Colors.grey)
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Leadership'),
          ),
        ),
      ],
    );
  }
}

class TrainingSection extends StatelessWidget {
  const TrainingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Training',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          color: Colors.blueAccent,
          width: 120,
          height: 2,
        ),
        Text(
          'BTEB Certification',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text('Level-4 Certified trainer [2022]',style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),),
        SizedBox(height: 6,),
        Text(
          'Android Application & Development',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text('BASIS Institute of Technology & Management (BITM),\nPencilbox-IT, Kawran Bazar, Dhaka.',style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),),
        SizedBox(height: 6,),
        Text(
          'Oracle Certified Professional(OCP)\nJava SE8',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text('It Bangla Chottogaram vabon,Topkhana Road,Dhaka.',style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),),
      ],
    );
  }
}

class ContactAndIntro extends StatelessWidget {
  const ContactAndIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tawhidur Rahman Rafid',
          style:
              TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blueAccent,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Kollanpur S.A Khalek Avenue,Road-4 house-60, Dhaka',
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.call,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '01682832598',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'rafidtawhid@gmail.com',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.code,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'github.com/Rafid-tawhid',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.link_rounded,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'linkedin.com/in/rafid-tawhid-5a6b75175',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0,bottom: 20),
          child: Text(
            'I am Passionate to explore the latest technologies and software. Love to create Mobile Application with Flutter. I am a good soldier who can fight in any situation.',
            style:
                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class JobExperience extends StatelessWidget {
  const JobExperience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Job Experience',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          color: Colors.blueAccent,
          width: 160,
          height: 2,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'BitBirds Solution (Currently Working)',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        // SizedBox(height: 4,),
        Text('Flutter Developer',style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),),
        // SizedBox(height: 4,),
        Text('September 2021 - December 2022',style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),),
        SizedBox(height: 6,),
        Text(
          'Pencilbox Training Institute',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        // SizedBox(height: 4,),
        Text('Assistant Trainer of Mobile Application & Development (SEIP Project-T3)',style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),),
        // SizedBox(height: 4,),
        Text('September 2021 - December 2022',style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),)
      ],
    );
  }
}
