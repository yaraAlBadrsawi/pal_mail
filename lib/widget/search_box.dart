import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 25.0.w, right: 25.0.w, top: 15.h, bottom: 24.h),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.search),
          hintText: 'search',
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.grey.withOpacity(0.5), width: 0.8),
            borderRadius: BorderRadius.all(
              Radius.circular(24.r),
            ),
          ),
        ),
      ),
    );
  }
}
