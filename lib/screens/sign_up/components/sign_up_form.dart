import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
// import '../../complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? nom;
  String? nom_Entrep;
  String? tel;
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => nom = newValue,
            // onChanged: (value) {
            //   if (value.isNotEmpty) {
            //     removeError(error: kNamelNullError);
            //   } else if (emailValidatorRegExp.hasMatch(value)) {
            //     removeError(error: kNamelNullError);
            //   }
            //   return;
            // },
            // validator: (value) {
            //   if (value!.isEmpty) {
            //     addError(error: kNamelNullError);
            //     return "";
            //   } else if (!emailValidatorRegExp.hasMatch(value)) {
            //     addError(error: kNamelNullError);
            //     return "";
            //   }
            //   return null;
            // },
            decoration: const InputDecoration(
              labelText: "Nom",
              hintText: "Votre nom",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User Icon.svg"),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => nom_Entrep = newValue,
            // onChanged: (value) {
            //   if (value.isNotEmpty) {
            //     removeError(error: kEntreprise);
            //   } else if (emailValidatorRegExp.hasMatch(value)) {
            //     removeError(error: kEntreprise);
            //   }
            //   return;
            // },
            // validator: (value) {
            //   if (value!.isEmpty) {
            //     addError(error: kEntreprise);
            //     return "";
            //   } else if (!emailValidatorRegExp.hasMatch(value)) {
            //     addError(error: kEntreprise);
            //     return "";
            //   }
            //   return null;
            // },
            decoration: const InputDecoration(
              labelText: "Entreprise",
              hintText: "Le nom de votre Entrepriser",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Shop Icon.svg"),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            onSaved: (newValue) => tel = newValue,
            // onChanged: (value) {
            //   if (value.isNotEmpty) {
            //     removeError(error: kTel);
            //   } else if (emailValidatorRegExp.hasMatch(value)) {
            //     removeError(error: kTel);
            //   }
            //   return;
            // },
            // validator: (value) {
            //   if (value!.isEmpty) {
            //     addError(error: kTel);
            //     return "";
            //   } else if (!emailValidatorRegExp.hasMatch(value)) {
            //     addError(error: kTel);
            //     return "";
            //   }
            //   return null;
            // },
            decoration: const InputDecoration(
              labelText: "Téléphone",
              hintText: "Votre numero de téléphone",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kAddressNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kAddressNullError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kAddressNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kAddressNullError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Votre adresse mail",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => password = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kPassNullError);
              } else if (value.length >= 8) {
                removeError(error: kShortPassError);
              }
              password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPassNullError);
                return "";
              } else if (value.length < 8) {
                addError(error: kShortPassError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Mot de passe",
              hintText: "Entrer votre mot de passe",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => conform_password = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kPassNullError);
              } else if (value.isNotEmpty && password == conform_password) {
                removeError(error: kMatchPassError);
              }
              conform_password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPassNullError);
                return "";
              } else if ((password != value)) {
                addError(error: kMatchPassError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Confirmer Mot de passe",
              hintText: "Re-entrer votre mot de passe",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
            ),
          ),
          FormError(errors: errors),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, OtpScreen.routeName);
              //  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
            child: const Text("Continuer"),
          ),
        ],
      ),
    );
  }
}
