import 'dart:ui';

class HealthTipModel {
  final String title;
  final String description;
  final String article;
  final String imageUrl;
  final Color boxColor;

  HealthTipModel({
    required this.title,
    required this.description,
    required this.article,
    required this.imageUrl,
    required this.boxColor,
  });

  static List<HealthTipModel> getHealthTips() {
    List<HealthTipModel> healthTips = [];

    healthTips.add(
      HealthTipModel(
        title: 'Stay Hydrated',
        description: 'Drinking water keeps your skin moisturized and glowing.',
        article: 'Proper hydration is essential for maintaining healthy skin. Water helps to flush out toxins and keeps your skin hydrated from within. Aim to drink at least 8 glasses of water daily. Additionally, consuming water-rich foods like fruits and vegetables can contribute to your skin\'s hydration. Staying hydrated also helps to maintain skin elasticity, which can reduce the appearance of wrinkles.',
        imageUrl: 'assets/images/beauty-face-logo.svg',
        boxColor: const Color(0xff8c7bff),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Use Sunscreen Daily',
        description: 'Protect your skin from UV damage by applying sunscreen every day.',
        article: 'One of the most important steps in any skincare routine is sunscreen application. Even on cloudy days, harmful UV rays can penetrate the skin, leading to premature aging, sunburns, and increased risk of skin cancer. Choose a broad-spectrum sunscreen with at least SPF 30 and apply it generously on all exposed areas. Reapply every two hours when outdoors.',
        imageUrl: 'assets/images/disease-classifier-logo.svg',
        boxColor: const Color(0xffff5f2d),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Moisturize Regularly',
        description: 'Keep your skin soft and smooth by using a good moisturizer.',
        article: 'Moisturizing is key to maintaining healthy, glowing skin. A good moisturizer helps to lock in moisture, preventing your skin from becoming dry and flaky. Choose a moisturizer suitable for your skin type—whether it\'s oily, dry, or sensitive. Apply it after cleansing and toning, and don\'t forget to use a heavier moisturizer at night for extra hydration.',
        imageUrl: 'assets/images/health-tips-logo.svg',
        boxColor: const Color(0xff36c4c6),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Exfoliate Gently',
        description: 'Remove dead skin cells with regular, gentle exfoliation.',
        article: 'Exfoliation helps to remove dead skin cells, revealing a brighter and smoother complexion. However, it\'s important to exfoliate gently to avoid irritating the skin. Use a mild exfoliant once or twice a week, depending on your skin type. Over-exfoliation can lead to sensitivity and dryness, so be sure to follow up with a good moisturizer.',
        imageUrl: 'assets/images/beauty-face-logo.svg',
        boxColor: const Color(0xff8c7bff),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Get Enough Sleep',
        description: 'Rest well for a refreshed and youthful complexion.',
        article: 'Sleep is essential for skin regeneration and repair. During deep sleep, your skin works to repair itself from the day\'s damage, including exposure to UV rays and pollution. Aim for 7-9 hours of quality sleep each night to wake up with a refreshed, glowing complexion. Establishing a calming bedtime routine can also improve the quality of your sleep.',
        imageUrl: 'assets/images/disease-classifier-logo.svg',
        boxColor: const Color(0xffff5f2d),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Cleanse Twice Daily',
        description: 'Remove dirt and impurities by cleansing your face morning and night.',
        article: 'Cleansing your skin is essential for removing dirt, oil, and makeup, which can clog pores and lead to breakouts. Choose a gentle cleanser that suits your skin type, and cleanse your face twice daily—once in the morning and once before bed. This helps to keep your skin clean and fresh, reducing the likelihood of blemishes and maintaining a healthy glow.',
        imageUrl: 'assets/images/beauty-face-logo.svg',
        boxColor: const Color(0xff36c4c6),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Incorporate Antioxidants',
        description: 'Fight free radicals with antioxidant-rich skincare products.',
        article: 'Antioxidants are powerful ingredients that help protect your skin from environmental damage caused by free radicals, such as pollution and UV radiation. Incorporate antioxidant-rich products like serums containing vitamin C, E, or green tea extract into your routine. These can help brighten your complexion, reduce signs of aging, and protect your skin from oxidative stress.',
        imageUrl: 'assets/images/health-tips-logo.svg',
        boxColor: const Color(0xff8c7bff),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Don’t Touch Your Face',
        description: 'Avoid transferring bacteria and oil by keeping your hands off your face.',
        article: 'Touching your face throughout the day can transfer dirt, oil, and bacteria from your hands to your skin, leading to breakouts and irritation. Be mindful of how often you touch your face, and try to break the habit. Additionally, make sure to clean your phone screen regularly, as it can also be a source of bacteria that comes into contact with your skin.',
        imageUrl: 'assets/images/beauty-face-logo.svg',
        boxColor: const Color(0xffff5f2d),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Use a Face Mask Weekly',
        description: 'Pamper your skin with a weekly face mask for extra care.',
        article: 'Face masks are a great way to give your skin some extra TLC. Whether you\'re dealing with dryness, oiliness, or acne, there\'s a face mask for every concern. Use a hydrating mask if your skin is dry, a clay mask to control oil, or a calming mask for sensitive skin. Incorporating a face mask into your routine once a week can help address specific skin concerns and leave your complexion looking refreshed and revitalized.',
        imageUrl: 'assets/images/disease-classifier-logo.svg',
        boxColor: const Color(0xff36c4c6),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Watch Your Diet',
        description: 'Eat a balanced diet to support clear and healthy skin.',
        article: 'What you eat can have a significant impact on your skin. A diet rich in fruits, vegetables, lean proteins, and healthy fats can promote clear, glowing skin. Avoid excessive sugar and processed foods, which can trigger breakouts and inflammation. Incorporate foods rich in vitamins and minerals, such as vitamin C and zinc, which support skin health and repair.',
        imageUrl: 'assets/images/health-tips-logo.svg',
        boxColor: const Color(0xff8c7bff),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Keep Your Makeup Brushes Clean',
        description: 'Prevent breakouts by regularly cleaning your makeup brushes.',
        article: 'Dirty makeup brushes can harbor bacteria, dirt, and oil, which can lead to breakouts and skin irritation. It\'s essential to clean your brushes regularly—ideally once a week. Use a gentle brush cleanser or mild soap and warm water to remove any buildup. Allow your brushes to dry completely before using them again to ensure they\'re free of bacteria and ready for your next application.',
        imageUrl: 'assets/images/beauty-face-logo.svg',
        boxColor: const Color(0xffff5f2d),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Use a Humidifier',
        description: 'Add moisture to the air to combat dry skin with a humidifier.',
        article: 'Dry indoor air, especially during winter, can strip moisture from your skin, leaving it dry and irritated. Using a humidifier in your home can help maintain optimal humidity levels, keeping your skin hydrated and comfortable. Place a humidifier in your bedroom to ensure your skin stays moisturized while you sleep. Additionally, continue to moisturize your skin regularly to lock in the extra hydration.',
        imageUrl: 'assets/images/disease-classifier-logo.svg',
        boxColor: const Color(0xff36c4c6),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Manage Stress',
        description: 'Keep your skin calm by reducing stress levels.',
        article: 'Stress can take a toll on your skin, leading to breakouts, inflammation, and other skin issues. Managing stress through relaxation techniques such as meditation, yoga, or deep breathing can help keep your skin clear and healthy. Additionally, taking time for self-care and ensuring you get enough sleep can reduce stress and its negative effects on your skin.',
        imageUrl: 'assets/images/health-tips-logo.svg',
        boxColor: const Color(0xff8c7bff),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Avoid Hot Showers',
        description: 'Protect your skin\'s moisture barrier by avoiding hot water.',
        article: 'While hot showers may feel relaxing, they can strip your skin of its natural oils, leading to dryness and irritation. Opt for lukewarm water instead, and limit your shower time to 10-15 minutes. After showering, pat your skin dry and immediately apply a moisturizer to lock in hydration and maintain your skin\'s moisture barrier.',
        imageUrl: 'assets/images/beauty-face-logo.svg',
        boxColor: const Color(0xffff5f2d),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Use Retinoids Wisely',
        description: 'Incorporate retinoids gradually to boost skin cell turnover.',
        article: 'Retinoids are powerful skincare ingredients that can improve skin texture, reduce fine lines, and prevent breakouts. However, they can also cause dryness and irritation if not used correctly. Start by using a retinoid product once or twice a week, gradually increasing frequency as your skin adjusts. Always apply retinoids at night and follow up with sunscreen during the day, as they can make your skin more sensitive to the sun.',
        imageUrl: 'assets/images/healthy-tips-logo.svg',
        boxColor: const Color(0xff36c4c6),
      ),
    );

    healthTips.add(
      HealthTipModel(
        title: 'Patch Test New Products',
        description: 'Prevent reactions by patch testing new skincare products.',
        article: 'Before introducing a new product into your skincare routine, it\'s essential to do a patch test to ensure it won\'t cause an adverse reaction. Apply a small amount of the product to a discreet area of your skin, such as behind your ear or on your inner arm, and wait 24-48 hours. If you don\'t experience any redness, irritation, or breakouts, it\'s likely safe to use on your face.',
        imageUrl: 'assets/images/disease-classifier-logo.svg',
        boxColor: const Color(0xff8c7bff),
      ),
    );

    return healthTips;
  }
}