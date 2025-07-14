import 'package:azkar/color_manger.dart';
import 'package:azkar/my_app_bar.dart';
import 'package:flutter/material.dart';

class PageStructure extends StatefulWidget {
  final List azkarList;
  final void Function(int) decrement;
  final Map<int, int> remainingRepeats;
  final String title;

  const PageStructure({
    super.key,
    required this.azkarList,
    required this.decrement,
    required this.remainingRepeats,
    required this.title,
  });

  @override
  State<PageStructure> createState() => _PageStructureState();
}

class _PageStructureState extends State<PageStructure> {
  @override
  Widget build(BuildContext context) {
    final azkarList = widget.azkarList;
    final decrement = widget.decrement;
    final remainingRepeats = widget.remainingRepeats;
    int counter = 0;
    Widget removeContainer() {
      counter++;
      return SizedBox(height: 0);
    }

    return Scaffold(
      backgroundColor: ColorManger().bg,
      appBar: MyAppBar(title: widget.title),
      body: azkarList.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: azkarList.length,
              itemBuilder: (context, index) {
                final zekr = azkarList[index];
                return GestureDetector(
                    onTap: () {
                      counter++;
                      decrement(index);
                      print("this counter ${counter}");
                    },
                    child: counter >= azkarList.length
                        ? SizedBox(
                            height: 0,
                          )
                        // Center(
                        //     child: Text(
                        //       "تـم",
                        //       style: TextStyle(
                        //         color: ColorManger().fontColor,
                        //         fontSize: 32,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   )
                        : remainingRepeats[index] == 0
                            ? removeContainer()
                            : Container(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  color: ColorManger().containerColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                margin: const EdgeInsets.only(bottom: 14),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          zekr['zekr'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textDirection: TextDirection.rtl,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      if (zekr['bless'].isNotEmpty)
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            5,
                                            10,
                                            5,
                                            16,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              ' ${zekr['bless']}',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.lightGreen,
                                              ),
                                              textDirection: TextDirection.rtl,
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              height: 25,
                                              width: 80,
                                              child: Text(
                                                'التكرار: ${zekr['repeat']} مرات',
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF9BE0AF),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25,
                                              width: 150,
                                              child: Text(
                                                remainingRepeats[index] == 0
                                                    ? 'تم'
                                                    : 'المتبقي: ${remainingRepeats[index]} مرات',
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
              },
            ),
    );
  }
}
