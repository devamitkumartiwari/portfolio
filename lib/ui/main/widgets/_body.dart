part of '../main_section.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final scrollCubit = context.read<ScrollCubit>();

    return ListView.builder(
      controller: scrollCubit.controller,
      itemCount: BodyUtils.views.length,
      itemBuilder: (context, index) => BodyUtils.views[index],
    );
  }
}
