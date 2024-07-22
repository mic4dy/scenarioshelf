import 'package:flutter/material.dart';
import 'package:scenarioshelf/views/components/dividers/labeled_divider.dart';

class FormSection extends StatelessWidget {
  const FormSection({
    required this.title,
    required this.children,
    super.key,
  });

  final LabeledDivider title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        title,
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 16,
            right: 16,
            bottom: 16,
          ),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: children.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (context, index) {
              return children[index];
            },
          ),
        ),
      ],
    );
  }
}
