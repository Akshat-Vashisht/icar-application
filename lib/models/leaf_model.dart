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
      'lib/assets/images/anthracnose/IMG_20200807_153452.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_153457.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_153638.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_153937_1.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_153959.jpg',
      'lib/assets/images/anthracnose/IMG_20200807_154053_1.jpg'
    ],
    displayImage: 'lib/assets/images/anthracnose/IMG_20200807_153452.jpg',
    causes: [
      'Fungal infection caused by Colletotrichum species',
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
    title: 'Calcarious Soil Systems',
    description:
        'Calcareous soil systems often hinder nutrient uptake, leading to plant stress and poor crop yield. They are characterized by high pH and excessive calcium carbonate.',
    images: [
      'lib/assets/images/calcarious_soil_systems/IMG_20191127_134726.jpg',
      'lib/assets/images/calcarious_soil_systems/IMG_20191127_134732.jpg',
      'lib/assets/images/calcarious_soil_systems/IMG_20191127_134758.jpg',
      'lib/assets/images/calcarious_soil_systems/IMG_20191127_134921.jpg',
      'lib/assets/images/calcarious_soil_systems/IMG_20191127_134942_1 (1).jpg',
      'lib/assets/images/calcarious_soil_systems/IMG_20191127_135141.jpg'
    ],
    displayImage:
        'lib/assets/images/calcarious_soil_systems/IMG_20191127_135141.jpg',
    causes: [
      'High calcium carbonate levels in soil',
      'Limited nutrient availability, especially iron and zinc',
      'Alkaline pH preventing proper nutrient absorption',
    ],
    preventions: [
      'Apply organic matter to improve soil structure',
      'Use acidifying fertilizers or sulfur-based compounds',
      'Employ soil testing to monitor nutrient levels'
    ],
  ),
  LeafModel(
    title: 'Caterpillar Damage',
    description:
        'Caterpillars feed on leaves and stems, causing defoliation, reduced photosynthesis, and yield loss in crops.',
    images: [
      'lib/assets/images/caterpillar_damage/DSC05709.jpg',
      'lib/assets/images/caterpillar_damage/DSC05742.jpg',
      'lib/assets/images/caterpillar_damage/DSC05747.jpg',
      'lib/assets/images/caterpillar_damage/DSC05749.jpg',
      'lib/assets/images/caterpillar_damage/DSC05750.jpg',
      'lib/assets/images/caterpillar_damage/DSC05755.jpg'
    ],
    displayImage: 'lib/assets/images/caterpillar_damage/DSC05755.jpg',
    causes: [
      'Infestation by caterpillar species like armyworms or loopers',
      'Presence of host plants attracting moths',
      'Lack of natural predators in the environment',
    ],
    preventions: [
      'Handpick caterpillars in small infestations',
      'Introduce beneficial insects like lady beetles',
      'Use biopesticides like Bacillus thuringiensis',
      'Implement pheromone traps to monitor moth activity'
    ],
  ),
  LeafModel(
    title: 'Downey Mildew',
    description:
        'Downy mildew is a disease caused by oomycetes, resulting in yellowish patches, white mold, and stunted plant growth.',
    images: [
      'lib/assets/images/downey_mildew/IMG_20200728_152904.jpg',
      'lib/assets/images/downey_mildew/IMG_20200728_152928.jpg',
      'lib/assets/images/downey_mildew/IMG_20200728_153428.jpg',
      'lib/assets/images/downey_mildew/IMG_20200728_153443.jpg',
      'lib/assets/images/downey_mildew/IMG_20200728_153446.jpg',
      'lib/assets/images/downey_mildew/IMG_20200728_155021.jpg'
    ],
    displayImage: 'lib/assets/images/downey_mildew/IMG_20200728_155021.jpg',
    causes: [
      'Fungal-like pathogens from Peronosporaceae family',
      'High humidity and wet conditions',
      'Overcrowding and poor ventilation',
    ],
    preventions: [
      'Use resistant plant varieties',
      'Apply fungicides before infection occurs',
      'Avoid overhead watering and ensure good drainage',
      'Remove affected plant debris promptly'
    ],
  ),
  LeafModel(
    title: 'Jassid Damage',
    description:
        'Jassids, also known as leafhoppers, suck plant sap, causing yellowing, curling, and reduced crop vigor.',
    images: [
      'lib/assets/images/jassid_damage/DSC_1930.jpg',
      'lib/assets/images/jassid_damage/DSC_1932.jpg',
      'lib/assets/images/jassid_damage/DSC_1934.jpg',
      'lib/assets/images/jassid_damage/DSC_1951.jpg',
      'lib/assets/images/jassid_damage/DSC_1967.jpg',
      'lib/assets/images/jassid_damage/DSC_1968.jpg'
    ],
    displayImage: 'lib/assets/images/jassid_damage/DSC_1968.jpg',
    causes: [
      'Infestation by jassid species during warm seasons',
      'Overgrowth of weeds harboring pests',
      'Monocropping practices increasing vulnerability',
    ],
    preventions: [
      'Monitor crops regularly for early detection',
      'Use systemic insecticides or neem-based sprays',
      'Maintain field hygiene by removing weeds',
      'Encourage natural predators like spiders and lacewings'
    ],
  ),
  LeafModel(
    title: 'Potassium Deficiency (K Deficiency)',
    description:
        'Potassium deficiency in plants leads to yellowing of leaves, weak stems, and reduced resistance to diseases.',
    images: [
      'lib/assets/images/k_deficiency/DSC_2681.jpg',
      'lib/assets/images/k_deficiency/DSC_2682.jpg',
      'lib/assets/images/k_deficiency/DSC_2686.jpg',
      'lib/assets/images/k_deficiency/DSC_2697.jpg',
      'lib/assets/images/k_deficiency/DSC_2704.jpg',
      'lib/assets/images/k_deficiency/DSC_2710.jpg'
    ],
    displayImage: 'lib/assets/images/k_deficiency/DSC_2710.jpg',
    causes: [
      'Low potassium levels in the soil',
      'Excessive application of nitrogen or calcium fertilizers',
      'Leaching of potassium due to heavy rainfall',
    ],
    preventions: [
      'Apply potassium-based fertilizers like muriate of potash',
      'Test soil periodically to monitor nutrient levels',
      'Avoid over-irrigation to prevent leaching'
    ],
  ),
  LeafModel(
    title: 'Mealybug Malformation',
    description:
        'Mealybug infestation results in plant deformities, stunted growth, and sooty mold formation due to honeydew secretion.',
    images: [
      'lib/assets/images/mealybug_malformation/DSC03480.jpg',
      'lib/assets/images/mealybug_malformation/DSC03489.jpg',
      'lib/assets/images/mealybug_malformation/DSC03591.jpg',
      'lib/assets/images/mealybug_malformation/DSC03594.jpg',
      'lib/assets/images/mealybug_malformation/DSC03596.jpg',
      'lib/assets/images/mealybug_malformation/DSC03613.jpg'
    ],
    displayImage: 'lib/assets/images/mealybug_malformation/DSC03613.jpg',
    causes: [
      'Infestation by mealybugs that feed on plant sap',
      'Warm and humid environmental conditions',
      'Presence of host plants or weeds near crops',
    ],
    preventions: [
      'Prune and destroy infested parts',
      'Introduce natural predators like lady beetles',
      'Apply neem oil or soap-based insecticides',
      'Maintain field cleanliness and remove weeds'
    ],
  ),
  LeafModel(
    title: 'Mite Infestation',
    description:
        'Mites are tiny pests that cause speckled discoloration, curling, and browning of leaves, leading to reduced photosynthesis.',
    images: [
      'lib/assets/images/mite_infestation/DSC03783.jpg',
      'lib/assets/images/mite_infestation/DSC03853.jpg',
      'lib/assets/images/mite_infestation/DSC03867.jpg',
      'lib/assets/images/mite_infestation/DSC03873.jpg',
      'lib/assets/images/mite_infestation/DSC03905.jpg',
      'lib/assets/images/mite_infestation/DSC03912.jpg'
    ],
    displayImage: 'lib/assets/images/mite_infestation/DSC03912.jpg',
    causes: [
      'Dry and dusty conditions promoting mite populations',
      'Overuse of chemical pesticides eliminating natural predators',
      'Infestation carried by wind or contaminated plants',
    ],
    preventions: [
      'Spray water to wash off mites in early stages',
      'Use miticides selectively to control severe infestations',
      'Introduce predatory mites to maintain balance'
    ],
  ),
  LeafModel(
    title: 'Powdery Mildew',
    description:
        'Powdery mildew is a fungal disease that appears as a white, powdery coating on leaves, stems, and fruits.',
    images: [
      'lib/assets/images/powdery_mildew/IMG_20200118_104810.jpg',
      'lib/assets/images/powdery_mildew/IMG_20200118_104837.jpg',
      'lib/assets/images/powdery_mildew/IMG_20200118_104853 (1).jpg',
      'lib/assets/images/powdery_mildew/IMG_20200118_104853.jpg',
      'lib/assets/images/powdery_mildew/IMG_20200118_104935.jpg',
      'lib/assets/images/powdery_mildew/IMG_20200118_105152_1.jpg'
    ],
    displayImage: 'lib/assets/images/powdery_mildew/IMG_20200118_105152_1.jpg',
    causes: [
      'High humidity and moderate temperatures',
      'Overcrowding of plants restricting airflow',
      'Susceptible plant varieties',
    ],
    preventions: [
      'Grow resistant varieties of crops',
      'Apply fungicides containing sulfur or potassium bicarbonate',
      'Ensure good spacing and airflow between plants'
    ],
  ),
  LeafModel(
    title: 'Thrips Curling',
    description:
        'Thrips damage results in curling, discoloration, and silvery streaks on leaves, reducing crop productivity.',
    images: [
      'lib/assets/images/thrips_curling/DSC02446.jpg',
      'lib/assets/images/thrips_curling/DSC02450.jpg',
      'lib/assets/images/thrips_curling/DSC02456.jpg',
      'lib/assets/images/thrips_curling/DSC02458.jpg',
      'lib/assets/images/thrips_curling/DSC02459 - Copy.jpg',
      'lib/assets/images/thrips_curling/DSC02466.jpg'
    ],
    displayImage: 'lib/assets/images/thrips_curling/DSC02466.jpg',
    causes: [
      'Feeding by thrips on plant tissue',
      'Dry and warm weather favoring thrip activity',
      'Presence of nearby weeds acting as hosts',
    ],
    preventions: [
      'Regularly monitor and remove infested leaves',
      'Use blue sticky traps to capture thrips',
      'Apply systemic insecticides if infestations are severe',
      'Maintain field hygiene by controlling weeds'
    ],
  ),
  LeafModel(
    title: 'Zinc Toxicity (Zn Toxicity)',
    description:
        'Zinc toxicity in plants leads to chlorosis, stunted growth, and poor root development, often caused by excessive zinc in soil.',
    images: [
      'lib/assets/images/zn_toxicity/DSC_1129.jpg',
      'lib/assets/images/zn_toxicity/DSC_1205.jpg',
      'lib/assets/images/zn_toxicity/DSC_1213 - Copy (2).jpg',
      'lib/assets/images/zn_toxicity/DSC_1218.jpg',
      'lib/assets/images/zn_toxicity/DSC_1238.jpg',
      'lib/assets/images/zn_toxicity/DSC_1278.jpg'
    ],
    displayImage: 'lib/assets/images/zn_toxicity/DSC_1278.jpg',
    causes: [
      'Overapplication of zinc-containing fertilizers',
      'Industrial pollution contaminating soil with zinc',
      'Low soil pH increasing zinc availability',
    ],
    preventions: [
      'Limit zinc fertilizer application to recommended levels',
      'Raise soil pH using lime to reduce zinc availability',
      'Perform soil testing regularly to monitor zinc levels'
    ],
  ),
];
