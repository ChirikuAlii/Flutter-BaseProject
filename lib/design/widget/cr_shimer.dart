import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/colors/colors.dart';

class CRShimmer extends StatefulWidget {
  const CRShimmer({
    super.key,
    required this.isLoading,
    required this.child,
  });

  final bool isLoading;
  final Widget child;
  @override
  State<CRShimmer> createState() => CR_ShimmerState();
}

class CR_ShimmerState extends State<CRShimmer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final _shimmerGradient = const LinearGradient(
    colors: [
      CRColors.green2,
      CRColors.grey2,
      CRColors.grey2,
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isLoading) {
      _controller.stop();
      return widget.child;
    } else {
      _controller.repeat();
    }

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade500, // Darker Grey
                Colors.grey.shade400, // Lighter Grey
                Colors.grey.shade500,
              ],
              stops: [
                _controller.value - 0.3,
                _controller.value,
                _controller.value + 0.3,
              ],
            ).createShader(rect);
          },
          blendMode: BlendMode.srcATop,
          child: widget.child,
        );
      },
    );
  }
}
