class OnbordingController {
  String title;
  String images;

  OnbordingController({required this.title, required this.images});
}

List<OnbordingController> contents = [
  OnbordingController(title: 'Air Ticketing', images: 'assets/images/flight.png'),
  OnbordingController(title: 'Pay Residence', images: 'assets/images/residence.png'),
  OnbordingController(title: '''Find comfortable Bus seat 
  and enjoy your journey''',images: 'assets/images/bus.png'),
  OnbordingController(title: 'Ticketing for waterway', images: 'assets/images/ship.png'),
  OnbordingController(title: 'Make tour', images: 'assets/images/tour.png'),
  OnbordingController(title: 'Get food', images: 'assets/images/food.png'),
  OnbordingController(title: 'Ride / Rental', images: 'assets/images/ride.png'),
];