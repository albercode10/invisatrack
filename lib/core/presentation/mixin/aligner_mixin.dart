mixin AlignerMixin {
  int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  int getInitialDays(bool current, int numberOfDays, DateTime start) {
    DateTime currentDay = DateTime.now();
    if (current) {
      return daysBetween(start, currentDay);
    }
    return currentDay.isBefore(start) ? 0 : numberOfDays;
  }
}
