import 'package:flutter/material.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';

class HealthInfoDetailsScreen extends StatefulWidget {
  const HealthInfoDetailsScreen({super.key, this.pageType});
  final String? pageType;
  @override
  State<HealthInfoDetailsScreen> createState() =>
      _HealthInfoDetailsScreenState();
}

class _HealthInfoDetailsScreenState extends State<HealthInfoDetailsScreen> {
  List<String> introText = [
    'Introduction: A healthy diet and nutrition are critical components of living a healthy lifestyle.They include making thoughtful',
    'Maintaining heart health is crucial for overall well-being, as the heart is a vital organ responsible for pumping blood and delivering oxygen and nutrients throughout the body.',
    'Exercise offers numerous benefits for both physical and mental well-being.Here are four key benefits along with examples and references:',
    'Personal hygiene refers to the practices and habits that individuals adopt to maintain their cleanliness and well-being.',
    '"Mental wellness" refers to a state of overall psychological well-being and emotional health. It involves maintaining a positive and balanced',
    'Correct Condom Usage: Always use a latex or polyurethane condom for any sexual activity involving genital, anal, or oral contact.',
    ''
  ];

  List<String> bodyText = [
    'eating choices to ensure that our bodies obtain the vital nutrients they require to function efficiently. Here\'s a full explanation, complete with examples and references:\nBalanced Diet: A healthy diet includes a well-balanced combination of macronutrients (carbohydrates, proteins, and fats) and micronutrients (vitamins and minerals). Carbohydrates, for example, offer energy, proteins help in muscle repair, and healthy fats support a variety of body activities.Reference: Harvard T.H. Chan School of Public Health. (2021). "The Nutrition Source."Whole Foods: Making whole, minimally processed foods a priority guarantees that you obtain the most nutrients from your diet. Nutrient-dense foods include whole grains, fruits, vegetables, lean meats, and nuts.Reference: U.S. Department of Health & Human Services. (2021). "Choose nutrient-dense foods."Portion Control: Being aware of portion proportions helps to prevent overeating and supports weight control. Measuring portions might help you avoid consuming too many calories.Reference: Mayo Clinic. (2021). "Portion control: How to size up serving sizes."Diversity: A diversified diet delivers a greater spectrum of nutrients. Consuming a rainbow of colored fruits and veggies guarantees that you are getting a variety of vitamins and antioxidants.Reference: Harvard T.H. Chan School of Public Health. (2021). "Vegetables and Fruits."Hydration: Staying hydrated is critical for biological activities such as digestion, circulation, and temperature control. Water is the greatest option for hydration.Reference: National Academies of Sciences, Engineering, and Medicine. (2020). "Dietary Reference Intakes for Water, Potassium, Sodium, Chloride, and Sulfate."Limit Added Sugars and Processed Foods: Excess sugar intake has been linked to various health issues. Minimize consumption of sugary beverages, candies, and processed snacks.Reference: World Health Organization. (2015). "Sugars intake for adults and children: Guideline.\n\n"Healthy Fats: Opt for unsaturated fats found in olive oil, avocados, and nuts, which can have a positive impact on heart health.\n\nReference: American Heart Association. (2021). "Monounsaturated fats."Protein Sources: Incorporate lean sources of protein like poultry, fish, legumes, and low-fat dairy. Protein is essential for building and repairing tissues.\n\nReference: National Institutes of Health. (2021). "Dietary Supplement Fact Sheet: Protein."Limit Sodium and Processed Meats: Reducing sodium intake and limiting processed meats can lower the risk of hypertension and heart disease..Reference: Centers for Disease Control and Prevention. (2020). "Most Americans Should Consume Less Sodium."Mindful Eating: Paying attention to hunger and fullness cues can prevent overeating and promote a healthy relationship with food.Reference: Harvard Health Publishing. (2018). "Mindful eating may help with weight loss."Harvard Health Publishing, 2018.Incorporating these principles into your dietary choices can contribute significantly to a healthy lifestyle. Remember that individual nutritional needs may vary, so consulting a registered dietitian or healthcare professional is advisable for personalized guidelines',
    'Here are five key points detailing how to maintain heart health, supported by accurate examples and references:Adopt a Heart-Healthy Diet:Consuming a balanced and nutritious diet plays a pivotal role in promoting heart health. Focus on incorporating:Fruits and vegetables: Rich in antioxidants, vitamins, and minerals that protect against cardiovascular diseases. [Reference: Mozaffarian D, et al. (2011). Circulation.]Whole grains: High in fiber, which helps lower cholesterol levels and reduce the risk of heart disease. [Reference: Seal CJ, et al. (2021). Critical Reviews in Food Science and Nutrition.]Lean proteins: Opt for sources like fish, poultry, legumes, and nuts, which are low in saturated fats and provide omega-3 fatty acids for heart protection. [Reference: Kris-Etherton PM, et al. (2002). Circulation.]Healthy fats: Choose unsaturated fats (e.g., olive oil, avocados) over saturated and trans fats to maintain healthy cholesterol levels. [Reference: Estruch R, et al. (2013). The New England Journal of Medicine.]Stay Physically Active:Regular physical activity is vital for cardiovascular health. Aim for:Aerobic exercise: Engage in activities like brisk walking, jogging, or swimming to strengthen the heart and improve blood circulation. [Reference: Sattelmair J, et al. (2011). The Lancet.]Strength training: Building muscle mass can boost metabolism, maintain healthy weight, and enhance heart function. [Reference: Kelley GA, et al. (2010). BMC Medicine.]Manage Stress:Chronic stress can negatively impact heart health. Incorporate stress-reduction techniques:Meditation and mindfulness: These practices can lower blood pressure and reduce stress-related heart risks. [Reference: Schneider RH, et al. (2005). Journal of Alternative and Complementary Medicine.]Yoga: Regular practice can improve heart rate variability and overall cardiovascular function. [Reference: Cramer H, et al. (2018). Mayo Clinic Proceedings.]Control Blood Pressure and Cholesterol:Monitoring and managing blood pressure and cholesterol levels are crucial for heart health.Blood pressure: Aim for readings within the normal range (below 120/80 mm Hg) through a combination of diet, exercise, and medications if needed. [Reference: Whelton PK, et al. (2018). Hypertension.]Cholesterol: Maintain healthy levels of LDL ("bad") cholesterol and HDL ("good") cholesterol through dietary changes, medication, and regular check-ups. [Reference: Grundy SM, et al. (2018). Journal of the American College of Cardiology.]Avoid Tobacco and Limit Alcohol:Harmful habits can increase heart disease risk.Smoking cessation: Quitting smoking greatly reduces the risk of heart disease and stroke. [Reference: Benjamin EJ, et al. (2017). Circulation.]Moderate alcohol consumption: Limit intake to one drink per day for women and up to two drinks per day for men, as excessive alcohol can contribute to heart problems. [Reference: Mukamal KJ, et al. (2003). JAMA.]By implementing these five key points, you can take significant steps toward maintaining heart health and reducing the risk of cardiovascular diseases',
    'Improved Cardiovascular Health: Regular exercise can enhance heart health by strengthening the heart muscle, reducing the risk of heart disease, and improving circulation. For instance, aerobic exercises like jogging, swimming, or cycling increase heart rate and help maintain healthy blood pressure levels. (Reference: American Heart Association - "Physical Activity and Cardiovascular Health")Weight Management: Exercise plays a crucial role in maintaining a healthy weight by burning calories and boosting metabolism. Engaging in activities like brisk walking, dancing, or weight lifting can aid in weight loss and prevent obesity. (Reference: Centers for Disease Control and Prevention - "Physical Activity for a Healthy Weight")Mental Health Benefits: Physical activity has a positive impact on mental well-being by reducing stress, anxiety, and depression. Participating in activities such as yoga, meditation, or team sports can help improve mood and alleviate psychological distress. (Reference: Harvard Health Publishing - "Exercise is an all-natural treatment to fight depression")Enhanced Bone and Muscle Strength: Regular exercise promotes strong bones and muscles, reducing the risk of osteoporosis and maintaining overall physical strength. Resistance exercises like weight lifting, bodyweight exercises, and resistance bands are effective in building muscle and improving bone density. (Reference: National Osteoporosis Foundation - "Exercise for Strong Bones")Remember, it\'s always a good idea to consult with a healthcare professional before st',
    'It involves a range of activities aimed at preserving one\'s physical health and preventing the spread of disease. Proper personal hygiene is crucial for overall health and societal well-being.Examples of personal hygiene practices include:Handwashing: Regularly washing hands with soap and water for at least 20 seconds helps remove germs and prevent the spread of infections. For instance, the Centers for Disease Control and Prevention (CDC) emphasizes the importance of handwashing to reduce the risk of illnesses (CDC, 2020).Oral Care: Brushing teeth at least twice a day and flossing helps prevent cavities and gum diseases. The American Dental Association (ADA) recommends maintaining good oral hygiene to ensure dental health (ADA, n.d.).Bathing/Showering: Regular bathing or showering helps cleanse the body, remove dirt, sweat, and bacteria, and promotes a fresh feeling. The World Health Organization (WHO) advocates for regular bathing to maintain cleanliness (WHO, 2019).Nail Care: Trimming nails and keeping them clean prevents dirt buildup and reduces the risk of infections. The National Health Service (NHS) suggests proper nail hygiene to avoid the spread of germs (NHS, n.d.).Hair Care: Washing and maintaining hair cleanliness help prevent scalp conditions and promote healthy hair growth. The Skin Cancer Foundation recommends regular hair and scalp care as part of overall hygiene (Skin Cancer Foundation, 2021).Clothing Hygiene: Wearing clean clothes and changing them regularly prevents odor, skin infections, and the spread of germs. The Food and Drug Administration (FDA) provides guidelines on clothing hygiene to ensure personal cleanliness (FDA, 2020 commodo viverra maecenas accumsan lacus vel facilisis.',
    'mindset while effectively coping with the challenges and stressors of life.Achieving mental wellness involves a combination of factors, including emotional, psychological, and social well-being. Here\'s a detailed explanation along with examples and references:Emotional Well-Being: This aspect involves recognizing and managing your emotions in a healthy way. It includes self-awareness, emotional regulation, and the ability to express emotions constructively. For example, practicing mindfulness meditation can help you become more aware of your emotions and respond to them in a calm and controlled manner (Reference: Goleman, D. (2015). "Emotional Intelligence: Why It Can Matter More Than IQ").Psychological Well-Being: This pertains to having a positive outlook on life, a sense of purpose, and a high level of self-esteem. Engaging in activities that bring you joy and fulfillment, such as pursuing hobbies or creative outlets, contributes to psychological well-being (Reference: Ryff, C. D. (1989). "Happiness is everything, or is it? Explorations on the meaning of psychological well-being").Social Well-Being: Interacting with others and forming meaningful relationships is crucial for mental wellness. Strong social connections provide a support system and a sense of belonging. Participating in social activities or joining clubs or groups can enhance your social well-being (Reference: House, J. S., Landis, K. R., & Umberson, D. (1988). "Social relationships and health").Coping Strategies: Developing effective coping strategies is essential for managing stress and adversity. Examples include practicing problem-solving skills, seeking social support, and engaging in relaxation techniques like deep breathing or progressive muscle relaxation (Reference: Lazarus, R. S., & Folkman, S. (1984). "Stress, appraisal, and coping").Healthy Lifestyle: Physical health and mental wellness are interconnected. Regular exercise, a balanced diet, and sufficient sleep contribute to improved mood and mental clarity. Engaging in regular physical activity has been linked to reduced symptoms of depression and anxiety (Reference: Mammen, G., & Faulkner, G. (2013). "Physical activity and the prevention of depression: a systematic review of prospective studies").Mind-Body Practices: Activities such as yoga and tai chi integrate physical movement with mindfulness, promoting relaxation and reducing stress. Engaging in these practices can enhance mental wellness by improving emotional regulation and overall well-being (Reference: Streeter, C. C., et al. (2010). "Effects of yoga on the autonomic nervous system, gamma-aminobutyric-acid, and allostasis in epilepsy, depression, and post-traumatic stress disorder").Professional Support: Seeking help from mental health professionals, such as therapists or counselors, can provide valuable guidance and tools for managing mental health challenges. Therapy approaches like cognitive-behavioral therapy (CBT) have shown effectiveness in improving mental wellness (Reference: Hofmann, S. G., Asnaani, A., Vonk, I. J. J., Sawyer, A. T., & Fang, A. (2012). "The Efficacy of Cognitive Behavioral Therapy: A Review of Meta-analyses").',
    'Make sure to follow the instructions on the packaging for proper usage. (Reference: CDC - Centers for Disease Control and Prevention).Regular Testing: Get tested for sexually transmitted infections (STIs) regularly, especially if you have multiple partners. Regular testing helps detect and treat STIs early. (Reference: WHO - World Health Organization)Mutual Monogamy: Engage in a sexual relationship where both you and your partner(s) are exclusively committed to each other. This reduces the risk of exposure to STIs. (Reference: Planned Parenthood)Use of Dental Dams: For oral sex on a partner with a vulva, use a dental dam (a latex or polyurethane barrier) to reduce the risk of STIs. (Reference: American Sexual Health Association)PrEP and PEP: If you\'re at high risk for HIV, consider Pre-Exposure Prophylaxis (PrEP) or Post-Exposure Prophylaxis (PEP) as preventive measures. Consult a healthcare provider for guidance. (Reference: AIDSinfo)Open Communication: Discuss sexual history and STI testing with your partner(s) to ensure informed decisions and minimize risk. (Reference: NHS - National Health Service)Effective Birth Control: If preventing pregnancy is a concern, use reliable birth control methods such as hormonal contraception, intrauterine devices (IUDs), or contraceptive implants. (Reference: American College of Obstetricians and Gynecologists)Limit Alcohol and Drug Use: Substance use can impair judgment and lead to risky sexual behavior. Avoid excessive alcohol or drug consumption before or during sexual activity. (Reference: Substance Abuse and Mental Health Services Administration)Education and Awareness: Educate yourself about different STIs, their symptoms, and transmission methods. This knowledge empowers you to make informed decisions. (Reference: Mayo Clinic)Regular Check-ups: Visit a healthcare provider for routine sexual health check-ups, vaccinations, and discussions about safe sex practices. (Reference: Family Planning Association)',
    ''
  ];

  List<String> images = [
    'assets/images/food.jpg',
    'assets/images/h2.jpg',
    'assets/images/h3.jpg',
    'assets/images/h4.jpg',
    'assets/images/h5.jpg',
    'assets/images/h6.jpg',
    ''
  ];

  String introTextToUse = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  MyNavbar(
                      navLabel: widget.pageType,
                      imageSource: "assets/images/medicine.jpg"),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: Image.asset(
                          widget.pageType == "Healthy Eating and Nutrition"
                              ? images[0]
                              : widget.pageType == "Heart Health"
                                  ? images[1]
                                  : widget.pageType == "Benefits of Exercise"
                                      ? images[2]
                                      : widget.pageType == "Personal Hygiene"
                                          ? images[3]
                                          : widget.pageType == "Mental Wellness"
                                              ? images[4]
                                              : widget.pageType ==
                                                      "Safe Sex Practice"
                                                  ? images[5]
                                                  : images[
                                                      6], // Replace with your image URL
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 180,
                        child: Text(
                          widget.pageType == "Healthy Eating and Nutrition"
                              ? introText[0]
                              : widget.pageType == "Heart Health"
                                  ? introText[1]
                                  : widget.pageType == "Benefits of Exercise"
                                      ? introText[2]
                                      : widget.pageType == "Personal Hygiene"
                                          ? introText[3]
                                          : widget.pageType == "Mental Wellness"
                                              ? introText[4]
                                              : widget.pageType ==
                                                      "Safe Sex Practice"
                                                  ? introText[5]
                                                  : introText[6],
                          style: const TextStyle(
                              fontSize: 16.0, fontFamily: "CenturyGothic"),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          widget.pageType == "Healthy Eating and Nutrition"
                              ? bodyText[0]
                              : widget.pageType == "Heart Health"
                                  ? bodyText[1]
                                  : widget.pageType == "Benefits of Exercise"
                                      ? bodyText[2]
                                      : widget.pageType == "Personal Hygiene"
                                          ? bodyText[3]
                                          : widget.pageType == "Mental Wellness"
                                              ? bodyText[4]
                                              : widget.pageType ==
                                                      "Safe Sex Practice"
                                                  ? bodyText[5]
                                                  : bodyText[6],
                          style: const TextStyle(
                              fontSize: 16.0, fontFamily: "CenturyGothic"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
