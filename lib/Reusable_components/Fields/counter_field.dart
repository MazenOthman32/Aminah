import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 1;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _counter.toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _controller.text = _counter.toString();
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
        _controller.text = _counter.toString();
      }
    });
  }

  void _onTextFieldChanged(String value) {
    int newValue = int.tryParse(value) ?? _counter;
    if (newValue >= 1) {
      setState(() {
        _counter = newValue;
      });
    } else {
      _controller.text = _counter.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.med_grey, width: 1.w),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            text: 'العمر',
            color: ColorsManager.black,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: ColorsManager.med_grey.withOpacity(.6),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _incrementCounter,
                ),
              ),
              Container(
                width: 50,
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: _onTextFieldChanged,
                ),
              ),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: _decrementCounter,
              ),
            ],
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
