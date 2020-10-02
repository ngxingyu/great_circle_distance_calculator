import 'dart:math';

class Equirectangular_Projection {
  ///Returns distance (m) from lat/lon in degrees
  static double distance(double lat1, lon1, lat2, lon2) {
    double latMean = 1.39 * pi / 180;
    double k_1 =
        111132.09 - 566.05 * cos(2 * latMean) + 1.20 * cos(4 * latMean);
    double k_2 = 111415.13 * cos(latMean) -
        94.55 * cos(3 * latMean) +
        0.12 * cos(5 * latMean);
    double latRange = (lat2 - lat1) * 180 / pi;
    double lonRange = (lon2 - lon1) * 180 / pi;
    double distance = sqrt(pow(k_1 * latRange, 2) + pow(k_2 * lonRange, 2));
    return distance;
  }
}
