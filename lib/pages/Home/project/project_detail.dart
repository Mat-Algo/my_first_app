import 'package:flutter/material.dart';

import '../../../models/projects.dart';
import '../../../responsive.dart';
import 'HorizontalTechView.dart';

class ProjectDetail extends StatelessWidget {
  final Project project; 
  const ProjectDetail({required this.project,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:Column(
                children: [
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  BackButton(
                    onPressed: (() => Navigator.pop(context)
                  )),
                  Text(
                    project.name,
                    style:const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold
                    )
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      project.year.toString(),
                      style: const TextStyle(
                        fontSize: 14, color: Colors.white
                      )

                    ) 
                  )
                ]),
                const SizedBox(
                  height:25,
                ),
                Hero(
                  tag: project.name,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                   
                  child: Responsive(
                      mobile: Image.network(
                        project.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      tablet: Image.network(
                        project.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      desktop: SizedBox(
                        height: 350,
                        child: Image.network(
                          project.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
 
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: screenSize.width,
                  child: const Text(
                    "Technologies",
                    style:
                      TextStyle(fontSize:20, fontWeight: FontWeight.bold,)
                      ),
                ),
                    const SizedBox(
                  height: 10,
                ),
                    HorizontalTechView(
                      techList: project.technologiesUsed ?? [],
                    ),
                    const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  width: screenSize.width,
                   child: const Text(
                    "Description",
                    style:
                    TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold
                    )
                                 ),
                 ),
                    const SizedBox(
                  height: 10),
                  Text(
                    project.description,
                    style: const TextStyle(fontSize: 16, color: Colors.black)
                  )
                ],
                )
              )
            ),
          ),
        )
      );
  }
}


