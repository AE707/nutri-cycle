// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:period_app/screens/card_detail2_screen.dart';
import 'package:period_app/screens/card_detail3_screen.dart';
import 'package:period_app/screens/card_detail4_screen.dart';
import 'package:period_app/screens/card_detail5_screen.dart';
import 'package:period_app/screens/datebottomsheet.dart';
import 'package:period_app/screens/edit_profil_screen.dart';
import 'package:period_app/screens/insight_screen.dart';
import 'package:period_app/screens/reminders_screen.dart';
import 'package:period_app/screens/welcome_screen.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../widgets/my_button.dart';

class NavScreen extends StatefulWidget {
  static const String screenRoute = 'nav_screen';

  //final Function()? onTap;

  // ignore: use_key_in_widget_constructors
  const NavScreen({Key? key, required dynamic Function()? onTap});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int? _daysUntilOvulation;

  @override
  void initState() {
    super.initState();
    fetchAndCalculateDaysUntilOvulation();
  }

  // void updateDaysUntilOvulation() async {
  //int? days = await fetchAndCalculateDaysUntilOvulation();
  //setState(() {
  //_daysUntilOvulation =
  //  days; // Update the state with the fetched days until ovulation
  //});
  //}
  // get daysUntilOvulation => null;

  //get cycleRange => null;

  //get dateRangeModel => null;

  // Example method to calculate days until ovulation
  /* int calculateDaysUntilOvulation() {
    // Calculate the number of days until ovulation based on the current date and the last day of menstruation
    // For example, you can use the following logic:
    int daysUntilOvulation = 28 - DateTime.now().day;
    if (daysUntilOvulation < 0) {
      daysUntilOvulation += 28;
    }
    // return daysUntilOvulation;

    // Replace the above logic with your own implementation to calculate the number of days until ovulation
    return 28 - DateTime.now().day;
  }*/

  final ScrollController _scrollController = ScrollController();
  // CalendarFormat _calendarFormat = CalendarFormat.month;
  //DateTime _focusedDay = DateTime.now();
  // ignore: non_constant_identifier_names
  final DateTime _Day = DateTime.now();

  DateTime? _rangeStart;
  DateTime? _selectedDay;
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;
  String? _selectionMode;
  int? _dayOfCycle;

  List<IconData> navbarIcons = [
    Icons.circle,
    Icons.calendar_month,
    Icons.insights,
    Icons.account_circle
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    List<Widget> widgets = [
      _buildCycleScreen(context, _rangeStart),
      _buildCalendarScreen(context),
      _buildInsightsScreen(context),
      _buildProfilScreen(context),
      //Center(child: Text("Search View", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold))),
      //Center(child: Text("Gallery View", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold))),
      //Center(child: Text("Profile View", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold))),
    ];

    List<String> bottomNavigationName = [
      'Cycle',
      'Calendar',
      'insights',
      'Profile'
    ];

    List<Color> color = const [
      Color.fromRGBO(235, 3, 122, 1),
      Color.fromRGBO(235, 3, 122, 1),
      Color.fromRGBO(235, 3, 122, 1),
      Color.fromRGBO(235, 3, 122, 1)
    ];

    List<Color> colorShade = const [
      Color.fromARGB(255, 237, 177, 215),
      Color.fromARGB(255, 237, 177, 215),
      Color.fromARGB(255, 237, 177, 215),
      Color.fromARGB(255, 237, 177, 215)
    ];

    return Scaffold(
      backgroundColor: appStore.scaffoldBackground,
      body: widgets[selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 16, left: 22, right: 22, top: 8),
        height: 70,
        decoration: BoxDecoration(color: appStore.cardColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navbarIcons.asMap().entries.map(
            (entry) {
              int index = entry.key;
              IconData icon = entry.value;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? colorShade[index]
                        // : Color.fromRGBO(255, 255, 255, 0),
                        : appStore.cardColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        icon,
                        size: 30,
                        color: index == selectedIndex
                            ? color[index]
                            : const Color.fromARGB(255, 179, 206, 219),
                      ),
                      if (index == selectedIndex)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(bottomNavigationName[index],
                              style: TextStyle(
                                  color: color[index],
                                  fontWeight: FontWeight.bold)),
                        ),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }

  /* int _calculateDaysUntilOvulation() {
    DateTime currentDate = DateTime.now();
    DateTime lastMenstrualPeriod =
        currentDate.subtract(const Duration(days: 28));

    int daysUntilOvulation = lastMenstrualPeriod.difference(currentDate).inDays;

    return daysUntilOvulation;
  }

  String _calculateCycleRange() {
    DateTime rangeStart = _rangeStart ?? _selectedDay!;
    DateTime rangeEnd = _rangeEnd ?? _selectedDay!;

    int cycleRangeDays = rangeEnd.difference(rangeStart).inDays;

    String cycleRange =
        '${rangeStart.day}-${rangeStart.month}-${rangeStart.year} - ${rangeEnd.day}-${rangeEnd.month}-${rangeEnd.year}';

    return cycleRange;
  }*/

  Future<void> fetchDatesFromFirestore() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      DocumentReference userDocRef =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
      try {
        DocumentSnapshot docSnapshot = await userDocRef.get();
        Map<String, dynamic> data = docSnapshot.data() as Map<String, dynamic>;
        Map<String, dynamic> dates = data['dates'];
        setState(() {
          _selectedDay = DateTime.parse(dates['selectedDay']);
          _selectedStartDate = DateTime.parse(dates['rangeStart']);
          _selectedEndDate = DateTime.parse(dates['rangeEnd']);
        });
      } catch (e) {
        print("Error fetching dates: $e");
      }
    } else {
      print("No user logged in, cannot fetch dates");
    }
  }

  Future<void> fetchAndCalculateDaysUntilOvulation() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      DocumentReference userDocRef =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
      DocumentSnapshot docSnapshot = await userDocRef.get();
      Map<String, dynamic> data = docSnapshot.data() as Map<String, dynamic>;
      if (data['dates'] != null) {
        DateTime selectedOvulationDay =
            DateTime.parse(data['dates']['selectedDay']);
        DateTime rangeStart = DateTime.parse(
            data['dates']['rangeStart']); // Fetching the range start date

        int daysUntilOvulation =
            rangeStart.difference(selectedOvulationDay).inDays;
        if (daysUntilOvulation < 0) {
          daysUntilOvulation =
              -daysUntilOvulation; // Ensure the value is positive
        }

        // Calculate the day of the cycle
        DateTime now = DateTime.now();
        DateTime today = DateTime(now.year, now.month, now.day);
        int dayOfCycle = today.difference(rangeStart).inDays +
            1; // Adding 1 to make the start day as day 1

        setState(() {
          _selectedDay = selectedOvulationDay;
          _rangeStart =
              rangeStart; // Assuming you have a state variable for this
          _daysUntilOvulation = daysUntilOvulation;
          _dayOfCycle =
              dayOfCycle; // Assuming you have a state variable for this
        });

        // Optionally save the days until ovulation to Firestore
        await saveDaysUntilOvulationToFirestore(daysUntilOvulation);
      } else {
        setState(() {
          _daysUntilOvulation = null; // Ensure UI updates if no date is found
          _dayOfCycle = null; // Ensure UI updates if no date is found
        });
      }
    } else {
      print("No user logged in, cannot fetch dates");
    }
  }

  Future<void> saveDaysUntilOvulationToFirestore(int daysUntilOvulation) async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      DocumentReference userDocRef =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
      try {
        await userDocRef.set({
          'dates': {'daysUntilOvulation': daysUntilOvulation}
        }, SetOptions(merge: true));
        print("Days until ovulation saved successfully");
      } catch (e) {
        print("Error saving days until ovulation: $e");
      }
    } else {
      print("No user logged in, cannot save days until ovulation");
    }
  }

  Widget _buildCycleScreen(BuildContext context, rangeStart) {
    ScreenUtil.init(context);

    //int daysUntilOvulation = calculateDaysUntilOvulation();

    return SingleChildScrollView(
      // Wrap content in SingleChildScrollView
      //controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 00),
        child: Container(
          // Add SafeArea for consistent padding
          margin: EdgeInsets.only(bottom: 0.sp),
          child:
              //SafeArea(child:
              Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 178.45,
                    height: 145.05,
                    margin: EdgeInsets.only(top: 60.sp, left: 48.99.sp),
                    child: Image.asset(
                      'images/back4.png',
                      //fit: BoxFit.cover,
                    ),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      width: 171.11.w,
                      height: 135.73.h,
                      margin: EdgeInsets.only(top: 225.sp, left: 184.sp),
                      child: Image.asset(
                        'images/back2.png',
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 133.23.w,
                    height: 175.24.h,
                    //color: Colors.black26,
                    margin: EdgeInsets.only(top: 336.sp, left: 20.sp),
                    child: Image.asset(
                      'images/back3.png',
                      //fit: BoxFit.cover,
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 150.06,
                      height: 157.04,
                      margin: EdgeInsets.only(top: 447.sp, left: 205.sp),
                      child: Image.asset(
                        'images/back0.png',
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 149),
                    width: 390,
                    height: 373,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0),
                          ],
                        ),
                        shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 171.sp, left: 38.5.sp),
                    width: 308,
                    height: 299,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(231, 234, 246, 0),
                            Color.fromRGBO(231, 234, 246, 0),
                          ],
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 12)),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _daysUntilOvulation != null &&
                                  _daysUntilOvulation! >= 0
                              ? 'Ovulation in $_daysUntilOvulation Days'
                              : 'Select a date range',
                          style: GoogleFonts.roboto(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${_Day.day} ${DateFormat('MMM').format(DateTime.now())}',
                          style: GoogleFonts.roboto(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Cycle Day $_dayOfCycle', // Dynamically display the day of the cycle
                          style: GoogleFonts.roboto(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        MyButton(
                          color: const Color.fromRGBO(184, 2, 87, 1),
                          colorT: const Color.fromRGBO(255, 255, 255, 1),
                          width: 150,
                          title: 'Log Period',
                          onPressed: () {
                            dateBottomSheet(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 130.sp, left: 25.sp),
                    width: 115,
                    height: 115,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(248, 255, 174, 0.75),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, CardDetailScreen2.screenRoute);
                        },
                        highlightColor:
                            const Color.fromRGBO(248, 255, 174, 0.75),
                        splashColor: const Color.fromRGBO(255, 255, 255, 1),
                        child: Text(
                          'Phase   Menstruelle',
                          style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromRGBO(105, 27, 63, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        //color: Colors.black26,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 130.sp, left: 235.sp),
                    width: 115,
                    height: 115,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(239, 74, 74, 0.75),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, CardDetailScreen3.screenRoute);
                        },
                        highlightColor: const Color.fromRGBO(239, 74, 74, 0.75),
                        splashColor: const Color.fromRGBO(255, 255, 255, 1),
                        child: Text(
                          'Phase   Folliculaire',
                          style: GoogleFonts.roboto(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromRGBO(105, 27, 63, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        //color: Colors.black26,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 375.sp, left: 25.sp),
                    width: 115,
                    height: 115,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(74, 228, 239, 0.75),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, CardDetailScreen4.screenRoute);
                        },
                        highlightColor:
                            const Color.fromRGBO(74, 228, 239, 0.75),
                        splashColor: const Color.fromRGBO(255, 255, 255, 1),
                        child: Text(
                          'Phase   Ovulatoire',
                          style: GoogleFonts.roboto(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromRGBO(105, 27, 63, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        //color: Colors.black26,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 375.sp, left: 235.sp),
                    width: 115,
                    height: 115,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(74, 239, 180, 0.75),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, CardDetailScreen5.screenRoute);
                        },
                        highlightColor:
                            const Color.fromRGBO(74, 239, 180, 0.75),
                        splashColor: const Color.fromRGBO(255, 255, 255, 1),
                        child: Text(
                          'Phase Lutéale',
                          style: GoogleFonts.roboto(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromRGBO(105, 27, 63, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        //color: Colors.black26,
                      ),
                    ),
                  ),
                  SizedBox(
                    //color: Colors.black26,
                    // Use MediaQuery for adaptive width/height
                    height: MediaQuery.of(context).size.height * 0.90,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w), // Consistent padding
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyButton(
                            color: const Color.fromRGBO(184, 2, 87, 1),
                            colorT: const Color.fromRGBO(255, 255, 255, 1),
                            width: 300,
                            title: 'Log For Today',
                            onPressed: () async {
                              await fetchDatesFromFirestore(); // Fetch dates before showing the dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Center(
                                      child: Text(
                                        'Cycle',
                                        style: TextStyle(
                                          color: Color.fromRGBO(184, 2, 87, 1),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    content: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        SizedBox(height: 0.h),
                                        Text(_selectedDay != null
                                            ? 'Ovulation Day: ${_selectedDay!.day}-${_selectedDay!.month}-${_selectedDay!.year}'
                                            : 'Ovulation Day: Pick a date'),
                                        SizedBox(height: 5.h),
                                        Text(_selectedStartDate != null &&
                                                _selectedEndDate != null
                                            ? 'Cycle Range: ${_selectedStartDate!.day}-${_selectedStartDate!.month}-${_selectedStartDate!.year} to ${_selectedEndDate!.day}-${_selectedEndDate!.month}-${_selectedEndDate!.year}'
                                            : 'Cycle Range: Pick a date'),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(
                                          'Close',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(184, 2, 87, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //),
    );
  }

  /* Future<void> saveSelectedDates(
      DateTime? selectedDay, DateTime? rangeStart, DateTime? rangeEnd) async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      DocumentReference userDocRef =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);

      // Prepare the data map
      Map<String, dynamic> dateData = {
        'selectedDay': selectedDay
            ?.toIso8601String(), // Convert DateTime to ISO 8601 string format
        'rangeStart': rangeStart?.toIso8601String(),
        'rangeEnd': rangeEnd?.toIso8601String()
      };

      // Remove null entries so Firestore does not complain
      dateData.removeWhere((key, value) => value == null);

      await userDocRef
          .set({'dates': dateData}, SetOptions(merge: true))
          .then((_) => print("Dates saved successfully"))
          .catchError((error) => print("Failed to save dates: $error"));
    } else {
      print("No user logged in, cannot save dates");
      // Optionally handle the case where no user is logged in
    }
  }
*/
  Future<void> saveSelectedDates() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      DocumentReference userDocRef =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);

      // Prepare the data map using class-level variables
      Map<String, dynamic> dateData = {
        'selectedDay': _selectedDay
            ?.toIso8601String(), // Convert DateTime to ISO 8601 string format
        'rangeStart': _selectedStartDate?.toIso8601String(),
        'rangeEnd': _selectedEndDate?.toIso8601String()
      };

      // Remove null entries so Firestore does not complain
      dateData.removeWhere((key, value) => value == null);

      await userDocRef
          .set({'dates': dateData}, SetOptions(merge: true))
          .then((_) => print("Dates saved successfully"))
          .catchError((error) => print("Failed to save dates: $error"));
    } else {
      print("No user logged in, cannot save dates");
      // Optionally handle the case where no user is logged in
    }
  }

  Widget _buildCalendarScreen(BuildContext context) {
    // 'single' or 'range'

    return SingleChildScrollView(
      controller: _scrollController,
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(236, 38, 131, 1),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Calendar",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectionMode = 'single';
                          _selectedStartDate = null;
                          _selectedEndDate = null;
                        });
                      },
                      child: const Text('Select Date'),
                    ),
                    const SizedBox(width: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectionMode = 'range';
                          _selectedDay = null;
                        });
                      },
                      child: const Text('Select Range'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SfDateRangePicker(
                  navigationMode: DateRangePickerNavigationMode.none,
                  toggleDaySelection: true,
                  enableMultiView: false,
                  enablePastDates: true,
                  allowViewNavigation: true,
                  showTodayButton: false,
                  extendableRangeSelectionDirection:
                      ExtendableRangeSelectionDirection.none,
                  startRangeSelectionColor:
                      const Color.fromRGBO(105, 27, 63, 1),
                  endRangeSelectionColor: const Color.fromRGBO(105, 27, 63, 1),
                  rangeSelectionColor: const Color.fromARGB(255, 247, 72, 153),
                  view: DateRangePickerView.month,
                  backgroundColor: const Color.fromRGBO(236, 38, 131, 1),
                  selectionColor: const Color.fromRGBO(105, 27, 63, 1),
                  selectionShape: DateRangePickerSelectionShape.circle,
                  headerHeight: 50,
                  headerStyle: DateRangePickerHeaderStyle(
                    backgroundColor: const Color.fromRGBO(236, 38, 131, 1),
                    textAlign: TextAlign.center,
                    textStyle: GoogleFonts.roboto(
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w800,
                      color: const Color.fromRGBO(105, 27, 63, 1),
                    ),
                  ),
                  monthCellStyle: DateRangePickerMonthCellStyle(
                    textStyle: GoogleFonts.roboto(
                      fontSize: ScreenUtil().setSp(16),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onSelectionChanged:
                      (DateRangePickerSelectionChangedArgs args) {
                    if (_selectionMode == 'single' && args.value is DateTime) {
                      setState(() {
                        _selectedDay = args.value;
                        _selectedStartDate = null;
                        _selectedEndDate = null;
                        print("Selected day: $_selectedDay");
                        saveSelectedDates();
                      });
                    } else if (_selectionMode == 'range' &&
                        args.value is PickerDateRange) {
                      final range = args.value as PickerDateRange;
                      setState(() {
                        _selectedStartDate = range.startDate;
                        _selectedEndDate = range.endDate;
                        _selectedDay = null;
                        print(
                            "Selected range: $_selectedStartDate to $_selectedEndDate");
                        saveSelectedDates();
                      });
                    }
                  },
                  selectionMode: _selectionMode == 'single'
                      ? DateRangePickerSelectionMode.single
                      : DateRangePickerSelectionMode.range,
                ),
                if (_selectedDay != null)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Selected day: ${_selectedDay!.day}-${_selectedDay!.month}-${_selectedDay!.year}',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                if (_selectedStartDate != null && _selectedEndDate != null)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Selected range: ${_selectedStartDate!.day}-${_selectedStartDate!.month}-${_selectedStartDate!.year} to ${_selectedEndDate!.day}-${_selectedEndDate!.month}-${_selectedEndDate!.year}',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ElevatedButton(
                    onPressed: () {
                      fetchAndCalculateDaysUntilOvulation();
                    },
                    child: const Text('Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInsightsScreen(BuildContext context) {
    ScreenUtil.init(context);
    return const InsightScreen();
    // Wrap content in SingleChildScrollView
  }

  final currentUser = FirebaseAuth.instance.currentUser!;

  // Function to fetch user data from Firestore
  Future<Map<String, dynamic>> getUserData() async {
    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .get();

    if (userDoc.exists) {
      // Document exists, fetch data
      final userData = userDoc.data() as Map<String, dynamic>;
      return userData;
    } else {
      // Document does not exist
      return {'user': '', 'fullName': ''};
    }
  }

  Widget _buildProfilScreen(BuildContext context) {
    ScreenUtil.init(context);
    return FutureBuilder<Map<String, dynamic>>(
      future: getUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Loading indicator
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final userData = snapshot.data!;
            final fullName =
                userData.containsKey('fullName') ? userData['fullName'] : '';
            final email =
                userData.containsKey('email') ? userData['email'] : '';

            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              //color: Colors.black26,
              child: SafeArea(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Container(
                            width: 144.93.w,
                            height: 135.58.h,
                            margin: EdgeInsets.only(top: 100.sp, left: 28.sp),
                            child: Image.asset(
                              'images/back6.png',
                              //fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 1,
                          child: Container(
                            width: 184.49.w,
                            height: 146.79.h,
                            margin: EdgeInsets.only(top: 260.sp, left: 100.sp),
                            child: Image.asset(
                              'images/back.png',
                              //fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 141.44.w,
                          height: 187.61.h,
                          //color: Colors.black26,
                          margin: EdgeInsets.only(top: 400.sp, left: 181.2.sp),
                          child: Image.asset(
                            'images/back5.png',
                            //fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.85,
                          //color: Colors.black26,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 10,
                                ),
                                /* child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // IconButton(
                                  //icon: Icon(
                                  //size: 30,
                                  //Icons.arrow_back_ios,
                                  //color: Color.fromRGBO(217, 217, 217, 1),
                                  //),
                                  // onPressed: () {},
                                  // ),

                                  IconButton(
                                    icon: const Icon(
                                      size: 35,
                                      Icons.settings,
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, SplashScreen.screenRoute);
                                    },
                                  ),
                                ],
                              ),*/
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 130.w,
                                        height: 130.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage("images/photo.jpg"),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: 4,
                                              color: Colors.white,
                                            ),
                                            //color: Color.fromRGBO(249, 116, 173, 1),
                                            color: const Color.fromARGB(
                                                182, 255, 255, 255),
                                          ),
                                          child: IconButton(
                                            padding: const EdgeInsets.only(
                                                bottom: 2),
                                            icon: const Icon(
                                              Icons.edit,
                                              //color: Colors.white,
                                              color: Color.fromRGBO(
                                                  184, 2, 87, 0.618),
                                              //color: Color.fromRGBO(249, 116, 173, 1),
                                            ),
                                            onPressed: () {
                                              Navigator.pushNamed(context,
                                                  EditProfilScreen.screenRoute);
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              /* FutureBuilder<Map<String, dynamic>>(
                    future: getUserData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator(); // Loading indicator
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        final userData = snapshot.data!;
                        final fullName = userData['fullName'];
                        final email = userData['email'];


                        return*/
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          fullName,
                                          textAlign: TextAlign.end,
                                          style: GoogleFonts.roboto(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                        Text(
                                          email,
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 100,
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context,
                                            RemindersScreen.screenRoute);
                                      },
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Reminders",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                            ),
                                            Text(
                                              "Active",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 0.75),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  //ligne
                                  const Divider(
                                    color: Colors.white,
                                    height: 15,
                                    thickness: 1,
                                    indent: 15,
                                    endIndent: 45,
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      //Navigator.pushNamed(context, TemperatureScreen.screenRoute);
                                    },
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Partner",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.roboto(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                          Text(
                                            "Keep them in the loop",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.roboto(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 0.75),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //ligne
                                  const Divider(
                                    color: Colors.white,
                                    height: 20,
                                    thickness: 1,
                                    indent: 15,
                                    endIndent: 45,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 16,
                                      top: 2,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, WelcomeScreen.screenRoute);
                                      },
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Logout",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                            ),
                                            Text(
                                              "Active",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 0.75),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.white,
                                    height: 20,
                                    thickness: 1,
                                    indent: 15,
                                    endIndent: 45,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

AppStore appStore = AppStore();

class AppStore {
  Color? textPrimaryColor;
  Color? iconColorPrimaryDark;
  Color? scaffoldBackground;
  Color? backgroundColor;
  Color? backgroundSecondaryColor;
  Color? appColorPrimaryLightColor;
  Color? textSecondaryColor;
  Color? appBarColor;
  Color? iconColor;
  Color? iconSecondaryColor;
  Color? cardColor;

  AppStore() {
    textPrimaryColor = const Color(0xFF212121);
    iconColorPrimaryDark = const Color(0xFF212121);
    scaffoldBackground = const Color.fromRGBO(252, 127, 182, 1);
    backgroundColor = Colors.black;
    backgroundSecondaryColor = const Color(0xFF131d25);
    appColorPrimaryLightColor = const Color(0xFFF9FAFF);
    textSecondaryColor = const Color.fromARGB(255, 94, 90, 90);
    appBarColor = Colors.white;
    iconColor = const Color(0xFF212121);
    iconSecondaryColor = const Color(0xFFA8ABAD);
    cardColor = const Color.fromRGBO(0, 0, 0, 0.12);
  }
}
