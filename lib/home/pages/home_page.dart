import 'package:first_project/models/task_info.dart';
import 'package:first_project/services/task_services.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TaskInfo> tasks = <TaskInfo>[];

  @override
  void initState() {
    super.initState();
    tasks = TaskServices().getAll();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 60),
        //app bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.menu,
                color: Colors.white.withOpacity(0.87),
              ),
              const Spacer(),
              Text(
                "Index",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              ClipOval(
                child: Image.network(
                  "https://plus.unsplash.com/premium_photo-1696949625382-5f5e24a142c5?auto=format&fit=crop&q=80&w=2535&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  height: 42,
                  width: 42,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        //body
        Expanded(
          child: tasks.isEmpty
              ? Column(
                  children: <Widget>[
                    const Spacer(),
                    Image.asset(
                      "assets/illustration/empty-home-illustration.png",
                      width: 275,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "What do you want to do today?",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.87),
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Tap + to add your tasks",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.87),
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                )
              : ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    SizedBox(height: 8),
                    for (int i = 0; i < 10; i++)
                      for (var task in tasks)
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 12,
                          ),
                          margin:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                          decoration: BoxDecoration(
                            color: Color(0xFF363636),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.87)),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    task.name,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(.87),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    DateFormat.yMMMMEEEEd().format(task.date),
                                    style: TextStyle(
                                      color: Color(0xFFAFAFAF),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                    SizedBox(height: 8),
                  ],
                ),
        ),
      ],
    );
  }
}
