import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SalaryConvertor extends StatefulWidget {
  const SalaryConvertor({super.key});

  @override
  State<SalaryConvertor> createState() => _SalaryConvertorState();
}

class _SalaryConvertorState extends State<SalaryConvertor> {
  // bool checkValue = true;
  var grossSalary = TextEditingController();
  var incomeTax = TextEditingController();
  num? netSalary;
  num? remainning;
  num? total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff146C94),
          title: Center(
            child: Text(
              'Salary Calculator',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h),
                Text(
                  'Gross Salary',
                  style: TextStyle(
                    color: const Color(0xff595959),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 8.h),
                TextField(
                  controller: grossSalary,
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xff146C94),
                        width: 0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xff146C94),
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xff146C94),
                        width: 0,
                      ),
                    ),
                    hintText: "Enter Gross Salary",
                    filled: true,
                    // fillColor: const Color(0xffF5F6FA),
                    contentPadding: EdgeInsets.all(11.h),
                  ),
                ),
                SizedBox(height: 9.h),
                Text(
                  'Income Tax',
                  style: TextStyle(
                    color: const Color(0xff595959),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 9.h),
                TextField(
                  controller: incomeTax,

                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xff146C94),
                        width: 0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xff146C94),
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xff146C94),
                        width: 0,
                      ),
                    ),
                    hintText: "0",
                    filled: true,
                    // fillColor: const Color(0xffF5F6FA),
                    contentPadding: EdgeInsets.all(11.h),
                  ),
                ),
                SizedBox(height: 11.h),
                Row(
                  children: [
                    SizedBox(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff146C94),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.sp)),
                          fixedSize: const Size(160, 41),
                        ),
                        onPressed: () {
                          num gross = num.parse(grossSalary.text);
                          total = gross;
                          num tax = num.parse(incomeTax.text);
                          remainning = tax;
                          netSalary = gross - tax;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.check_circle_sharp,
                          size: 24.0,
                        ),
                        label: const Text(
                          'Calculate',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(width: 25.w),
                    SizedBox(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff146C94),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.sp)),
                          fixedSize: const Size(160, 41),
                        ),
                        onPressed: () {
                          incomeTax.clear();
                          grossSalary.clear();
                        },
                        icon: const Icon(
                          Icons.cancel_sharp,
                          size: 24.0,
                        ),
                        label: const Text(
                          'Clear',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 20),
                // if (netSalary != null) Text('Gross Salary: $total'),
                // const SizedBox(height: 20),
                // if (netSalary != null) Text('Tax: -$remainning'),
                // const SizedBox(height: 20),
                // if (netSalary != null) Text('Net Salary: $netSalary'),
                // const SizedBox(height: 33),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Container(
                      height: 38.sp,
                      width: 157.sp,

                      // fixedSize: const Size(160, 41),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: const Color(0xff146C94),
                        // borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: REdgeInsets.all(10.0),
                        child: Text(
                          "Gross Salary",
                          // softWrap: true,
                          // maxLines: 3,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    if (netSalary != null)
                      Container(
                        height: 38.sp,
                        width: 157.sp,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: const Color(0xff146C94),
                          // borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: REdgeInsets.all(10.0),
                          child: Text(
                            "$total",
                            // softWrap: true,
                            // maxLines: 3,
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 15.h),

                Row(
                  children: [
                    Container(
                      height: 38.sp,
                      width: 157.sp,

                      // fixedSize: const Size(160, 41),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: const Color(0xff146C94),
                        // borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: REdgeInsets.all(10.0),
                        child: Text(
                          "Tax",
                          // softWrap: true,
                          // maxLines: 3,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    if (netSalary != null)
                      Container(
                        height: 38.sp,
                        width: 157.sp,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: const Color(0xff146C94),
                          // borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: REdgeInsets.all(10.0),
                          child: Text(
                            "-$remainning",
                            // softWrap: true,
                            // maxLines: 3,
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 15.h),

                Row(
                  children: [
                    Container(
                      height: 38.sp,
                      width: 157.sp,

                      // fixedSize: const Size(160, 41),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: const Color(0xff146C94),
                        // borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: REdgeInsets.all(10.0),
                        child: Text(
                          "Net Salary",
                          // softWrap: true,
                          // maxLines: 3,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    if (netSalary != null)
                      Container(
                        height: 38.sp,
                        width: 157.sp,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: const Color(0xff146C94),
                          // borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: REdgeInsets.all(10.0),
                          child: Text(
                            "$netSalary",
                            // softWrap: true,
                            // maxLines: 3,
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                  ],
                ),
                // SizedBox(
                //   height: 323.sp,
                // ),
                //         BottomNavigationBar(currentIndex: _selectedTab,
                //   onTap: (index) => _changeTab(index),backgroundColor: const Color(0xff146C94) ,
                //   selectedItemColor: Colors.white,
                //   unselectedItemColor: Colors.white,
                //   items: [
                //     BottomNavigationBarItem(icon: Icon(Icons.cancel_sharp), label: "Exit"),

                //     BottomNavigationBarItem(
                //         icon: Icon(Icons.refresh_rounded), label: "Share"),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: const Color(0xff146C94),
        ),
        child: BottomNavigationBar(
          // currentIndex: _selectedTab,
          // onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel_sharp), label: "Exit"),
            BottomNavigationBarItem(
                icon: Icon(Icons.refresh_rounded), label: "Share"),
          ],
        ),
      ),
    );
  }
}
