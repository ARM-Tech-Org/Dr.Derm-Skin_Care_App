import 'dart:ui';

class FeatureModel {
  String title;
  String description;
  String imageUrl;
  Color boxColor;

  FeatureModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.boxColor,
  });

  static List<FeatureModel> getFeatures() {
    List<FeatureModel> features = [];

    features.add(
      FeatureModel(
        title: 'Beauty Face',
        description: 'Enhance your natural beauty.',
        imageUrl: 'assets/images/beauty-face-logo.svg',
        boxColor: const Color(0xff8c7bff),
      ),
    );

    features.add(
      FeatureModel(
        title: 'Disease Classifier',
        description: 'Classify diseases based on symptoms.',
        imageUrl: 'assets/images/disease-classifier-logo.svg',
        boxColor: const Color(0xffff5f2d),
      ),
    );

    features.add(
      FeatureModel(
        title: 'Health Tips',
        description: 'Stay fit and healthy.',
        imageUrl: 'assets/images/health-tips-logo.svg',
        boxColor: const Color(0xff36c4c6),
      ),
    );

    return features;
  }
}