import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/faq_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FAQView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          text: 'الأسئلة الشائعة',
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Consumer<FAQViewModel>(
            builder: (context, viewModel, child) {
              return Expanded(
                child: ListView(
                  children: viewModel.items.map((item) {
                    int index = viewModel.items.indexOf(item);
                    return CustomExpansionTile(
                      title: TextWidget(
                        text: item.question,
                        color: Colors.black,
                        fontsize: 14.sp,
                        maxLines: 2,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        ListTile(
                          title: TextWidget(
                            text: item.answer,
                            color: Colors.black,
                            maxLines: 6,
                            fontWeight: FontWeight.w400,
                            fontsize: 12.sp,
                          ),
                        ),
                        Divider(indent: 18, endIndent: 50),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                      isExpanded: item.isExpanded,
                      onExpansionChanged: (isExpanded) {
                        viewModel.toggleExpansion(index);
                      },
                    );
                  }).toList(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class CustomExpansionTile extends StatefulWidget {
  final Widget title;
  final List<Widget> children;
  final bool isExpanded;
  final ValueChanged<bool>? onExpansionChanged;

  CustomExpansionTile({
    required this.title,
    required this.children,
    this.isExpanded = false,
    this.onExpansionChanged,
  });

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  late bool _isExpanded;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.isExpanded;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    if (_isExpanded) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(CustomExpansionTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded != oldWidget.isExpanded) {
      if (widget.isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
    if (widget.onExpansionChanged != null) {
      widget.onExpansionChanged!(_isExpanded);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Column(
        children: [
          ListTile(
            title: widget.title,
            trailing: Icon(
              _isExpanded ? Icons.remove : Icons.add,
              color: ColorsManager.grey,
            ),
            onTap: _handleTap,
          ),
          SizeTransition(
            sizeFactor: _animation,
            child: Column(
              children: widget.children,
            ),
          ),
        ],
      ),
    );
  }
}
