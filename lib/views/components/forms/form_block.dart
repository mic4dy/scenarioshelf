import 'package:flutter/material.dart';

class FormBlock extends StatelessWidget {
  const FormBlock({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: children.length,
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          indent: 2,
          endIndent: 2,
        ),
        itemBuilder: (context, index) {
          return children[index];
        },
      ),
    );
  }
}
