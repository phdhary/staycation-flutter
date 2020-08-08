part of 'models.dart';

class Testimony {
  final String title, subtitle, image, reviewer;
  final int rating;

  Testimony({
    this.title = '',
    this.subtitle = '',
    this.image = '',
    this.reviewer = '',
    this.rating = 0,
  });
}
