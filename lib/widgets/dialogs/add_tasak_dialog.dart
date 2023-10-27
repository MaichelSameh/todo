import 'package:first_project/services/task_services.dart';
import 'package:flutter/material.dart';

class AddTaskDialog extends StatefulWidget {
  final BuildContext ctx;
  const AddTaskDialog({
    Key? key,
    required this.ctx,
  }) : super(key: key);

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 00,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 230,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration: const BoxDecoration(
              color: Color(0xFF363636),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Add task",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.85),
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    controller: titleController,
                    cursorColor: const Color(0xFF979797),
                    style: const TextStyle(
                      color: Color(0xFFAFAFAF),
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      hintText: "Title",
                      hintStyle: const TextStyle(
                        color: Color(0xFFAFAFAF),
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: Color(0xFF979797)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: Color(0xFF0163E0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 13),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    controller: descriptionController,
                    cursorColor: const Color(0xFF979797),
                    style: const TextStyle(
                      color: Color(0xFFAFAFAF),
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      hintText: "Description",
                      hintStyle: const TextStyle(
                        color: Color(0xFFAFAFAF),
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: Color(0xFF979797)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: Color(0xFF0163E0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 13),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () async {
                        date = (await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate:
                                  DateTime.now().add(const Duration(days: 30)),
                            )) ??
                            date;
                        if (date == null) {
                          return;
                        }
                        // ignore: use_build_context_synchronously
                        var temp = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.fromDateTime(
                                  date ?? DateTime.now()),
                            ) ??
                            TimeOfDay.fromDateTime(date ?? DateTime.now());
                        date = DateTime(
                          date!.year,
                          date!.month,
                          date!.day,
                          temp.hour,
                          temp.minute,
                        );
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.timer_outlined,
                        color: Color(0xFF979797),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () async {
                        if (titleController.text.isNotEmpty &&
                            descriptionController.text.isNotEmpty &&
                            date != null) {
                          await TaskServices().createTask(
                            name: titleController.text,
                            description: descriptionController.text,
                            priority: 1,
                            dateTime: date!,
                          );
                          Navigator.pop(context);
                        }
                      },
                      icon: const Icon(
                        Icons.send_outlined,
                        color: Color(0xFF8687E7),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: MediaQuery.viewInsetsOf(context).bottom),
        ],
      ),
    );
  }
}
