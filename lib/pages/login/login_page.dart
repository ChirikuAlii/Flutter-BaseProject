import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/design/colors/colors.dart';
import 'package:flutter_base_project/design/images/images.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';
import 'package:flutter_base_project/design/widget/cr_button.dart';
import 'package:flutter_base_project/design/widget/cr_dialog.dart';
import 'package:flutter_base_project/design/widget/cr_text.dart';
import 'package:flutter_base_project/design/widget/cr_text_field.dart';
import 'package:flutter_base_project/design/widget/cr_text_field1.dart';
import 'package:flutter_base_project/design/widget/cr_text_field3.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/pages/login/login_view.dart';
import 'package:flutter_base_project/pages/login/login_viewmodel.dart';
import 'package:flutter_base_project/route/cr_router_impl.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginView {
  late LoginViewModel _viewModel;
  final CrRouterImpl _router = getIt<CrRouterImpl>();
  final CompositeSubscription _subscription = CompositeSubscription();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  void successLogin(String message) {
    // CherryToast.success(
    //   autoDismiss: true,
    //   animationDuration: Duration(milliseconds: 1000),
    //   enableIconAnimation: true,
    //   title: Text("Success",
    //       style: CRTextStyle.body2.modify(fontWeight: FontWeight.w500)),
    //   description: Text("Success Login", style: CRTextStyle.body2),
    // ).show(context);

    _subscription.add(_router.goBackToRoot().listen((event) {}));
  }

  @override
  void errorLogin(String message) {
    showDialog(
      context: _router.currentNavigation!,
      builder: (context) {
        return CRDialog(
          title: "Error",
          description: message,
        );
      },
    );
  }

  @override
  void dispose() {
    _subscription.clear();
    _viewModel.clear();
    super.dispose();
  }

  @override
  void initState() {
    _viewModel = Provider.of<LoginViewModel>(_router.currentNavigation!);
    _viewModel.doResetField();
    _viewModel.init(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(
                height: Adaptive.of(context).heightDesign(60),
              ),
              Image.asset(
                CRImages.logoApp,
                width: 81,
                height: 81,
              ),
              SizedBox(
                height: Adaptive.of(context).heightDesign(24),
              ),
              CRText(
                text: "Selamat Datang Kembali",
                style: CRTextStyle.body2.modify(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: CRColors.black),
              ),
              SizedBox(
                height: 4,
              ),
              CRText(
                text: "Masuk dengan akun kamu yang sudah terfdaftar",
                style: CRTextStyle.body2.modify(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: CRColors.grey14),
              ),
              SizedBox(
                height: Adaptive.of(context).heightDesign(40),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CRText(
                    text: "Email",
                    style: CRTextStyle.body2.modify(
                        color: CRColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Observer(
                    builder: (context) => CRTextField3(
                      controller: _viewModel.emailController,
                      hintType: CRTextFieldHintType.staticLabel,
                      labelText: 'Email',
                      inputType: CRTextFieldInputType.text,
                      hintText: 'Masukkan alamat email aktif Anda',
                      currentState: _viewModel.emailState,
                      message: _viewModel.emailMessage,
                      focusConfig: CRTextFieldStateConfig(
                        fillColor: CRColors.primary.withOpacity(0.1),
                      ),
                      onChanged: (value) {
                        _viewModel.doValidationEmail(value);
                        _viewModel.doValidationForm();
                      },
                      onSubmitted: (value) {
                        _emailFocus.unfocus();
                        _passwordFocus.requestFocus();
                      },
                    ),
                  ),

                  //submit
                  //validasi email
                  // CRTextField(
                  //   styleField: StyleField.border,
                  //   colorText: CRColors.black,
                  //   validatorType: ValidatorType.email,
                  //   hintText: "Masukkan alamat email aktif Anda",
                  //   message: _viewModel.messageEmail,
                  //   statusField: _viewModel.statusEmail,
                  //   colorHintAndLabel: CRColors.grey14,
                  //   controller: _viewModel.emailController,
                  //   onSubmit: () {
                  //     _emailFocus.unfocus();
                  //     _passwordFocus.requestFocus();
                  //   },
                  //   onChanged: (value) {
                  //     _viewModel.doValidationEmail(value);
                  //     _viewModel.doValidationForm();
                  //   },
                  // ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CRText(
                    text: "Kata Sandi",
                    style: CRTextStyle.body2.modify(
                        color: CRColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Observer(
                    builder: (context) => CRTextField3(
                      controller: _viewModel.passwordController,
                      hintType: CRTextFieldHintType.staticLabel,
                      labelText: 'Kata Sandi',
                      inputType: CRTextFieldInputType.password,
                      hintText: 'Masukkan kata sandi akun Anda',
                      currentState: _viewModel.passwordState,
                      message: _viewModel.passwordMessage,
                      onChanged: (value) {
                        _viewModel.doValidationPassword(value);
                        _viewModel.doValidationForm();
                      },
                      onSubmitted: (value) {
                        _emailFocus.unfocus();
                        _passwordFocus.unfocus();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
              SizedBox(
                height: Adaptive.of(context).heightDesign(8),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  CRText(
                    text: "Lupa Password?",
                    style: CRTextStyle.body2.modify(
                        color: CRColors.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                    onTap: () {
                      // _subscription.add(
                      //       _router.goToForgotPasswordPage().listen((event) {}));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: Adaptive.of(context).heightDesign(24),
              ),
              Observer(builder: (context) {
                return CRButton(
                  text: "Masuk",
                  buttonType: ButtonType.filled,
                  color: CRColors.primary,
                  isLoading: _viewModel.isLoading,
                  height: 45,
                  onPressed: () {
                    _viewModel.doLogin(_viewModel.emailController.text,
                        _viewModel.passwordController.text, "android");
                  },
                );
              }),
              SizedBox(
                height: Adaptive.of(context).heightDesign(16),
              ),
              CRButton(
                  startIcon: CRIcons.logoGoogle,
                  text: "Masuk menggunakan Google",
                  buttonType: ButtonType.outline,
                  borderColor: CRColors.grey2,
                  textColor: CRColors.black,
                  height: 45),
              SizedBox(
                height: Adaptive.of(context).heightDesign(8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CRText(
                    text: "Belum punya akun Luarkampus?  ",
                    style: CRTextStyle.body2.modify(
                        color: CRColors.grey14,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  CRText(
                    text: "Daftar Sekarang",
                    style: CRTextStyle.body2.modify(
                        color: CRColors.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                    onTap: () {
                      // _subscription.add(
                      //       _router.goToRegisterPage().listen((event) {}));
                    },
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
