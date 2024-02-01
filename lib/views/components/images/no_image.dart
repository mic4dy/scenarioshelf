import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NoImage extends HookWidget {
  const NoImage({
    required this.decoration,
    super.key,
  });

  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final key = useState(GlobalKey());
    final size = useState(Size.zero);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final renderBox = key.value.currentContext?.findRenderObject() as RenderBox?;
          size.value = renderBox?.size ?? Size.zero;
        });
        return;
      },
      const [],
    );

    return Container(
      key: key.value,
      decoration: decoration,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.image_not_supported_outlined,
              color: Theme.of(context).colorScheme.primary,
              size: size.value.width * 0.5,
            ),
            Text(
              'NO IMAGE',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: size.value.height * 0.125,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
