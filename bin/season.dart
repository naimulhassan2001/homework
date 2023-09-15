main() {
  String season = "";
  String month = "Feb";

  switch (month) {
    case 'jan':
    case 'Feb':
    case 'March':
      season = "Spring";

      break;

    case 'Apr':
    case 'may':
    case 'Jun':
      season = "Summer";

      break;

    case 'July':
    case 'Aug':
    case 'Sep':
      season = "Autumn";

      break;

    case 'Oct':
    case 'Nov':
    case 'Dec':
      season = "Winter";

      break;

    default:
      season = "Invalid";
      break;
  }

  print(season);
}
