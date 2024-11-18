class LeafModel {
  final String title;
  final String description;
  final List<String> images;
  final String displayImage;
  final List<String> causes;
  final List<String> preventions;

  LeafModel({
    required this.title,
    required this.description,
    required this.images,
    required this.displayImage,
    required this.causes,
    required this.preventions,
  });
}

List<LeafModel> diseaseGrid = [
  LeafModel(
    title: 'Anthracnose',
    description:
        'Anthracnose is a fungal disease caused by Colletotrichum species, commonly affecting fruits, leaves, and stems. It results in dark spots, premature fruit drop, and reduced crop quality.',
    images: [
      'lib/assets/images/anthracnose/IMG_20200807_153959.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154003.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154009_1.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154046.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154053_1.jpg',
    ],
    displayImage: 'lib/assets/images/anthracnose/IMG_20200807_154053_1.jpg',
    causes: [
      ' Fungal infection caused by Colletotrichum species',
      'High humidity and warm temperatures',
      'Poor air circulation around plants',
      'Overwatering or prolonged leaf wetness',
      'Contaminated seeds or planting material'
    ],
    preventions: [
      'Use resistant crop varieties',
      'Ensure good plant spacing for air circulation',
      'Apply fungicides during early growth stages',
      'Remove and destroy infected plant parts',
      'Practice crop rotation to reduce pathogen buildup'
    ],
  ),
  LeafModel(
    title: 'Purvika Gore',
    description:
        'Anthracnose is a fungal disease caused by Colletotrichum species, commonly affecting fruits, leaves, and stems. It results in dark spots, premature fruit drop, and reduced crop quality.',
    images: [
      'lib/assets/images/calcarious_soil_systems/IMG_20191127_135132 (1).jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154003.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154009_1.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154046.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154053_1.jpg',
    ],
    displayImage: 'lib/assets/images/calcarious_soil_systems/IMG_20191127_135132 (1).jpg',
    causes: [
      ' Fungal infection caused by Colletotrichum species',
      'High humidity and warm temperatures',
      'Poor air circulation around plants',
      'Overwatering or prolonged leaf wetness',
      'Contaminated seeds or planting material'
    ],
    preventions: [
      'Use resistant crop varieties',
      'Ensure good plant spacing for air circulation',
      'Apply fungicides during early growth stages',
      'Remove and destroy infected plant parts',
      'Practice crop rotation to reduce pathogen buildup'
    ],
  ),
];
