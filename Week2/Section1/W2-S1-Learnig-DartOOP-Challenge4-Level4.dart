class Distance {
  final double _cms;

  Distance.cms(double cms) : _cms = cms;

  Distance.meters(double meters) : _cms = meters * 100;

  Distance.kms(double kms) : _cms = kms * 100000;

  double get cms => _cms;
  double get meters => _cms / 100;
  double get kms => _cms / 100000;

  Distance operator +(Distance other) {
    return Distance.cms(this._cms + other._cms);
  }

  @override
  String toString() {
    if (_cms >= 100000) {
      return 'Distance: ${kms} km';
    } else if (_cms >= 100) {
      return 'Distance: ${meters} meters';
    } else {
      return 'Distance: ${cms} cms';
    }
  }
}

void main() {
  Distance d1 = Distance.kms(3.4);
  Distance d2 = Distance.meters(1000);

  Distance totalDistance = d1 + d2;

  print('Total Distance: ${totalDistance.toString()}');
}
