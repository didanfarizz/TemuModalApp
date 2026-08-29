import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../auth/screens/login_screen.dart';
import '../../auth/screens/register_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD6E4FF),
              Color(0xFFEEF4FF),
              Color(0xFFF7FAFF),
              Color(0xFFE4EDFF),
            ],
            stops: [0.0, 0.35, 0.65, 1.0],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 12),

                // ==================== LOGO TEMUMODAL ====================
                _buildLogoCard(),
                const SizedBox(height: 28),

                // ==================== HEADLINE TEXT ====================
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: AppTypography.header2.copyWith(
                      color: AppColors.blackColor,
                      letterSpacing: -0.5,
                      height: 1.2,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Temukan Modalnya,\n',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'Lesatkan Bisnisnya',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // ==================== SUBTITLE ====================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'Ekosistem P2P funding yang menghubungkan pelaku usaha ambisius dengan investor strategis dalam satu platform yang transparan.',
                    textAlign: TextAlign.center,
                    style: AppTypography.body2.copyWith(
                      color: const Color(0xFF4B5563),
                      height: 1.45,
                    ),
                  ),
                ),
                const SizedBox(height: 28),

                // ==================== FEATURE CARDS ====================
                // Row 1: 2 Kartu (Pertumbuhan & Aman)
                Row(
                  children: [
                    // Kartu Pertumbuhan
                    Expanded(
                      child: _buildFeatureCard(
                        iconBadge: Container(
                          width: 44,
                          height: 44,
                          decoration: const BoxDecoration(
                            color: Color(0xFFDCE8FD),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.trending_up_rounded,
                            color: AppColors.primaryColor,
                            size: 22,
                          ),
                        ),
                        title: 'Pertumbuhan',
                        titleColor: AppColors.primaryColor,
                        description: 'Akses modal\ncepat & mudah.',
                      ),
                    ),
                    const SizedBox(width: 14),

                    // Kartu Aman
                    Expanded(
                      child: _buildFeatureCard(
                        iconBadge: Container(
                          width: 44,
                          height: 44,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD7F4DC),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.shield_rounded,
                            color: AppColors.greenColor,
                            size: 22,
                          ),
                        ),
                        title: 'Aman',
                        titleColor: AppColors.greenColor,
                        description: 'Terdaftar &\ndiawasi resmi.',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),

                // Row 2: Match Funding Card
                _buildMatchFundingCard(),
                const SizedBox(height: 36),

                // ==================== ACTION BUTTONS ====================
                // Tombol Daftar
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RegisterScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: AppColors.whiteColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Text(
                      'Daftar',
                      style: AppTypography.header5.copyWith(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Tombol Login
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(
                        0xFFE9F0FE,
                      ).withValues(alpha: 0.6),
                      foregroundColor: AppColors.primaryColor,
                      side: const BorderSide(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: AppTypography.header5.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // ==================== FOOTER LINK ====================
                GestureDetector(
                  onTap: () {
                    // Action pelajari lebih lanjut
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: AppTypography.body2.copyWith(
                        color: const Color(0xFF4B5563),
                      ),
                      children: const [
                        TextSpan(text: 'Pelajari lebih lanjut tentang '),
                        TextSpan(
                          text: 'TemuModal',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget Logo Card di bagian paling atas
  Widget _buildLogoCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFFEBF3FF),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Icon(
              Icons.hub_rounded,
              color: AppColors.primaryColor,
              size: 16,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            'TemuModal',
            style: AppTypography.header6.copyWith(
              color: AppColors.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Widget Kartu Fitur (Pertumbuhan & Aman)
  Widget _buildFeatureCard({
    required Widget iconBadge,
    required String title,
    required Color titleColor,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.9),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0058BC).withValues(alpha: 0.04),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          iconBadge,
          const SizedBox(height: 14),
          Text(
            title,
            style: AppTypography.header6.copyWith(
              color: titleColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: AppTypography.body3.copyWith(
              color: const Color(0xFF4B5563),
              fontSize: 12,
              height: 1.35,
            ),
          ),
        ],
      ),
    );
  }

  // Widget Kartu Match Funding dengan Indikator 75%
  Widget _buildMatchFundingCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.9),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0058BC).withValues(alpha: 0.04),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Match Funding',
                  style: AppTypography.header6.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Algoritma cerdas yang mencocokkan profil risiko anda.',
                  style: AppTypography.body3.copyWith(
                    color: const Color(0xFF4B5563),
                    fontSize: 12,
                    height: 1.35,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),

          // Gauge / Circular Indicator 75%
          SizedBox(
            width: 54,
            height: 54,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    value: 0.75,
                    strokeWidth: 5,
                    strokeCap: StrokeCap.round,
                    backgroundColor: Color(0xFFE2EAFF),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.primaryColor,
                    ),
                  ),
                ),
                Text(
                  '75%',
                  style: AppTypography.body3.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
