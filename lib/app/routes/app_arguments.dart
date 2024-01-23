class SuccessArguments {
  final String icon;
  final String title;
  final String subtitle;
  final void Function() firstTap;
  final void Function()? secondTap;
  final String firstAction;
  final String? secondAction;

  const SuccessArguments({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.firstAction,
    required this.firstTap,
    this.secondAction,
    this.secondTap,
  });
}
