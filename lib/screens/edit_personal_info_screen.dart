import 'package:flutter/material.dart';
import 'package:aurora_presence_flutter/models/personal_info.dart';

class EditPersonalInfoScreen extends StatefulWidget {
  final PersonalInfo personalInfo;

  EditPersonalInfoScreen({required this.personalInfo});

  @override
  _EditPersonalInfoScreenState createState() => _EditPersonalInfoScreenState();
}

class _EditPersonalInfoScreenState extends State<EditPersonalInfoScreen> {
  late TextEditingController _nameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailController;
  late TextEditingController _dobController;
  late TextEditingController _genderController;
  late TextEditingController _addressController;
  late TextEditingController _emergencyPhoneController;
  late TextEditingController _employeeIDController;
  late TextEditingController _departmentController;
  late TextEditingController _positionController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.personalInfo.name);
    _phoneNumberController = TextEditingController(text: widget.personalInfo.phoneNumber);
    _emailController = TextEditingController(text: widget.personalInfo.email);
    _dobController = TextEditingController(text: widget.personalInfo.dob);
    _genderController = TextEditingController(text: widget.personalInfo.gender);
    _addressController = TextEditingController(text: widget.personalInfo.address);
    _emergencyPhoneController = TextEditingController(text: widget.personalInfo.emergencyPhone);
    _employeeIDController = TextEditingController(text: widget.personalInfo.employeeID);
    _departmentController = TextEditingController(text: widget.personalInfo.department);
    _positionController = TextEditingController(text: widget.personalInfo.position);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    _dobController.dispose();
    _genderController.dispose();
    _addressController.dispose();
    _emergencyPhoneController.dispose();
    _employeeIDController.dispose();
    _departmentController.dispose();
    _positionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Personal Information'),
        backgroundColor: Color(0xFF00CEE8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildTextField('Name', _nameController),
            buildTextField('Phone Number', _phoneNumberController),
            buildTextField('Email', _emailController),
            buildTextField('Date of Birth', _dobController),
            buildTextField('Gender', _genderController),
            buildTextField('Address', _addressController),
            buildTextField('Emergency Phone', _emergencyPhoneController),
            buildTextField('Employee ID', _employeeIDController),
            buildTextField('Department', _departmentController),
            buildTextField('Position', _positionController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'name': _nameController.text,
                  'phoneNumber': _phoneNumberController.text,
                  'email': _emailController.text,
                  'dob': _dobController.text,
                  'gender': _genderController.text,
                  'address': _addressController.text,
                  'emergencyPhone': _emergencyPhoneController.text,
                  'employeeID': _employeeIDController.text,
                  'department': _departmentController.text,
                  'position': _positionController.text,
                });
              },
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                iconColor: Color(0xFF00CEE8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
