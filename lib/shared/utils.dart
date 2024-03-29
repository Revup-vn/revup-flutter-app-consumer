import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:revup_core/core.dart';
import 'package:url_launcher/url_launcher.dart';

Option<AppUser> getUser(AuthenticateState state) =>
    state.maybeWhen<Option<AppUser>>(
      authenticated: (authType) => authType.when(
        google: some,
        phone: some,
        email: some,
      ),
      orElse: none,
    );

int calculateMovingFees(int distance, int baseFees, int increaseFees) {
  const baseDistance = 3;
  final movingFees = (distance / 1000) <= baseDistance
      ? baseFees
      : (baseFees +
          (double.parse((distance / 1000 - baseDistance).toString()).ceil() *
              increaseFees));

  return movingFees;
}

Future<void> makePhoneCall(String phoneNumber) async {
  final launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

Future<bool> requestUserLocation() async {
  LocationPermission permission;
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.value(false);
        }
      }
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.value(false);
  }

  return Future.value(true);
}
