import 'package:flutter/material.dart';

class WeeklyCalendarView extends StatelessWidget {
  final DateTime selectedDate;
  final Map<DateTime, bool> completedDays;

  WeeklyCalendarView({
    required this.selectedDate,
    required this.completedDays,
  });

  List<DateTime> _getWeekDates(DateTime date) {
    // Calculate the first day of the week as Sunday
    final firstDayOfWeek = date.subtract(Duration(days: date.weekday % 7));
    return List.generate(
      7,
      (index) => firstDayOfWeek.add(Duration(days: index)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final weekDates = _getWeekDates(selectedDate);

    return Padding(
      padding: EdgeInsets.only(), // Prevent clipping
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: weekDates.map((date) {
          final isToday = DateTime.now().day == date.day &&
              DateTime.now().month == date.month &&
              DateTime.now().year == date.year;

          return Stack(
            children: [
              // Main date circle
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isToday
                        ? const Color.fromARGB(255, 77, 49, 152)
                        : Colors.grey[400],
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: isToday ? Colors.white : Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '${date.day}',
                      style: TextStyle(
                        color: isToday ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              // Day indicator circle
              Positioned(
                top: 2,
                right: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: isToday
                        ? const Color.fromARGB(255, 77, 49, 152)
                        : Colors.grey[400],
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isToday ? Colors.white : Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      ['S', 'M', 'T', 'W', 'T', 'F', 'S'][date.weekday % 7],
                      style: TextStyle(
                        color: isToday ? Colors.white : Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
