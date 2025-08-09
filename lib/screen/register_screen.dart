import 'package:flutter/material.dart';
import 'package:task_2/screen/home_screen.dart';
import 'package:task_2/style/colors/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryYellow,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.primaryOrange,
            size: 20,
          ),
        ),
        title: Text(
          "New Account",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.primaryYellow,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 48),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Full Name Field
                    _buildLabel('Full name'),
                    _buildTextField(hintText: 'Enter your full name'),

                    const SizedBox(height: 20),

                    // Password Field
                    _buildLabel('Password'),
                    _buildTextField(
                      hintText: '••••••••••••••',
                      isPassword: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "image/ic_eye_red.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Email Field
                    _buildLabel('Email'),
                    _buildTextField(
                      hintText: 'example@example.com',
                      keyboardType: TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 20),

                    // Mobile Number Field
                    _buildLabel('Mobile Number'),
                    _buildTextField(
                      hintText: '+ 123 456 789',
                      keyboardType: TextInputType.phone,
                    ),

                    const SizedBox(height: 20),

                    // Date of Birth Field
                    _buildLabel('Date of birth'),
                    _buildTextField(
                      hintText: 'DD / MM / YYY',
                      readOnly: true,
                      onTap: () => _selectDate(context),
                    ),

                    const SizedBox(height: 24),

                    // Terms & Privacy Text
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By continuing, you agree to\n',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: 'Terms of Use',
                              style: TextStyle(
                                color: AppColors.primaryOrange,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: AppColors.primaryOrange,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomeScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryOrange,
                          foregroundColor: Colors.white,
                          elevation: 2,
                          shadowColor: Colors.black26,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Or sign up with text
                    const Center(
                      child: Text(
                        'or sign up with',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Social Login Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialButton(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomeScreen()),
                          ),
                          iconWidget: Image.asset(
                            "image/ic_google.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomeScreen()),
                          ),
                          iconWidget: Image.asset(
                            "image/ic_facebook.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomeScreen()),
                          ),
                          iconWidget: Image.asset(
                            "image/ic_fingerprint.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Already have account
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: RichText(
                          text: TextSpan(
                            text: "Already have an account? ",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text: "Log in",
                                style: TextStyle(
                                  color: AppColors.primaryOrange,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    bool isPassword = false,
    Widget? suffixIcon,
    TextInputType? keyboardType,
    bool readOnly = false,
    VoidCallback? onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.creamButton,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        obscureText: isPassword,
        // Always obscured for StatelessWidget
        keyboardType: keyboardType,
        readOnly: readOnly,
        onTap: onTap,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryOrange, width: 2),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          filled: true,
          fillColor: AppColors.creamButton,
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required VoidCallback onTap,
    required Widget iconWidget,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.secondaryOrange,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(child: iconWidget),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primaryOrange,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      // Dengan StatelessWidget, tidak bisa update UI secara langsung
      // Perlu menggunakan callback atau state management
      print("Selected date: ${picked.day}/${picked.month}/${picked.year}");

      // Opsi 1: Pass callback dari parent widget
      // Opsi 2: Gunakan state management (Provider, Riverpod, Bloc)
      // Opsi 3: Pindah ke StatefulWidget untuk bagian ini
    }
  }
}

// ===== ALTERNATIVE: Custom Stateful Widgets untuk Fitur Interaktif =====

// Custom Password Field dengan StatefulWidget
class PasswordField extends StatefulWidget {
  final String hintText;
  final String? Function(String?)? validator;

  const PasswordField({Key? key, required this.hintText, this.validator})
    : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.creamButton,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        obscureText: !_isVisible,
        validator: widget.validator,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
          suffixIcon: IconButton(
            onPressed: () => setState(() => _isVisible = !_isVisible),
            icon: Icon(
              _isVisible ? Icons.visibility : Icons.visibility_off,
              color: AppColors.primaryOrange,
              size: 20,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryOrange, width: 2),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          filled: true,
          fillColor: AppColors.creamButton,
        ),
      ),
    );
  }
}

// Custom Date Field dengan StatefulWidget
class DateField extends StatefulWidget {
  final String hintText;
  final Function(DateTime)? onDateSelected;

  const DateField({Key? key, required this.hintText, this.onDateSelected})
    : super(key: key);

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  String _selectedDate = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.creamButton,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        readOnly: true,
        onTap: () => _selectDate(context),
        style: const TextStyle(fontSize: 16, color: Colors.black87),
        decoration: InputDecoration(
          hintText: _selectedDate.isEmpty ? widget.hintText : _selectedDate,
          hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryOrange, width: 2),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          filled: true,
          fillColor: AppColors.creamButton,
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primaryOrange,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _selectedDate =
            "${picked.day.toString().padLeft(2, '0')} / ${picked.month.toString().padLeft(2, '0')} / ${picked.year}";
      });
      widget.onDateSelected?.call(picked);
    }
  }
}
