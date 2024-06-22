import 'individual_bar.dart';

class BarData {
  final double oestrogenes;
  final double prostrogene;
  final double lH;

  BarData({
    required this.oestrogenes,
    required this.prostrogene,
    required this.lH,
  });

  List<IndividualBar> barData = [];

  // initialize bar data
  void initializeBarData() {
    barData = [
      //Oestrogenes
      IndividualBar(
        x: 0,
        y: oestrogenes,
      ),

      //Prostrogene
      IndividualBar(
        x: 1,
        y: prostrogene,
      ),

      //LH
      IndividualBar(
        x: 2,
        y: lH,
      ),
    ];
  }
}
