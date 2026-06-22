import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'المزيد',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
            icon: Icon(Icons.science_outlined),
            label: 'التحاليل',
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.notifications_outlined,
                      size: 28,
                      color: Colors.black87,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.medical_services_outlined,
                        color: Colors.blue,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    'احصل على أفضل الخدمات الصحية',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'خدماتنا تشمل الرعاية المنزلية لجميع الأعمار ومختلف الحالات',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 20),

                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'غسيل الكلى الدموي المنزلي',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'الجلسة الأولى مجانا',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.green.shade600,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/KidneyDialysis.png',
                            width: 120,
                            height: 120,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -10,
                      right: -10,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          '50%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.85,
                  children: const [
                    ServiceCard(
                      label: 'زيارة الطبيب المنزلية',
                      color: Color(0xFFE3F2FD),
                      imagePath: 'assets/images/doctorvisit.png',
                    ),
                    ServiceCard(
                      label: 'خدمة التمريض المنزلي',
                      color: Color(0xFFE3F2FD),
                      imagePath: 'assets/images/nursevisit.png',
                    ),
                    ServiceCard(
                      label: 'التحاليل المخبرية المنزلية',
                      color: Color(0xFFE3F2FD),
                      imagePath: 'assets/images/HomeLaboratoryTest.png',
                    ),
                    ServiceCard(
                      label: 'حقن الفيتامينات في المنزل',
                      color: Color(0xFFE3F2FD),
                      imagePath: 'assets/images/vitamin.png',
                    ),
                    ServiceCard(
                      label: 'فحص كورونا المنزلي',
                      color: Color(0xFFE3F2FD),
                      imagePath: 'assets/images/corona.png',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String label;
  final Color color;
  final String imagePath;

  const ServiceCard({
    super.key,
    required this.label,
    required this.color,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 75,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 11, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
