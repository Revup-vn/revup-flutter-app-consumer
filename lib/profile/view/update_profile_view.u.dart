import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:revup_core/core.dart';

import '../../account/model/user_model.dart';
import '../../account/widgets/avatar.dart';
import '../../l10n/l10n.dart';
import '../../shared/widgets/dismiss_keyboard.dart';
import '../bloc/profile_bloc.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key, required this.user, required this.model});
  final UserModel user;
  final AppUser model;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final _formKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          l10n.editProfileLabel,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
            child: Avatar(
              user: user,
              callback: () {
                // TODO(namngoc231): Go to photo selection method
              },
            ),
          ),
          DismissKeyboard(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: FormBuilder(
                autovalidateMode: AutovalidateMode.disabled,
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.labelLarge,
                      decoration: InputDecoration(
                        labelText: l10n.fullNameLabel,
                        labelStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold) ??
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      keyboardType: TextInputType.text,
                      name: 'fullName',
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: l10n.emptyLabel,
                        ),
                        FormBuilderValidators.match(
                          r'^[a-zA-Z ]+$',
                          errorText: l10n.invalidFormatLabel,
                        ),
                      ]),
                      //initialValue: '${user.firstName} ${user.lastName}',
                      initialValue: user.name,
                    ),
                    FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.labelLarge,
                      decoration: InputDecoration(
                        labelText: l10n.emailLabel,
                        labelStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold) ??
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      keyboardType: TextInputType.text,
                      name: 'email',
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: l10n.emptyLabel,
                        ),
                        FormBuilderValidators.email(
                          errorText: l10n.invalidFormatLabel,
                        ),
                      ]),
                      enabled: user.email == '',
                      initialValue: user.email,
                    ),
                    FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.labelLarge,
                      decoration: InputDecoration(
                        labelText: l10n.phoneLabel,
                        labelStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold) ??
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      keyboardType: TextInputType.number,
                      name: 'phone',
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: l10n.emptyLabel,
                        ),
                        FormBuilderValidators.match(
                          r'^0?(3|5|7|8|9){1}([0-9]{8})$',
                          errorText: l10n.invalidFormatLabel,
                        ),
                      ]),
                      initialValue: user.phone,
                      enabled: user.phone == '',
                    ),
                    FormBuilderDateTimePicker(
                      style: Theme.of(context).textTheme.labelLarge,
                      name: 'date',
                      inputType: InputType.date,
                      format: DateFormat('dd-MM-yyyy'),
                      decoration: InputDecoration(
                        labelText: l10n.dateLabel,
                        labelStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold) ??
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      initialValue: user.date,
                      initialDate: DateTime.now()
                          .subtract(const Duration(days: 356 * 18)),
                      lastDate: DateTime.now()
                          .subtract(const Duration(days: 356 * 18)),
                    ),
                    FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.labelLarge,
                      decoration: InputDecoration(
                        labelText: l10n.addressLabel,
                        labelStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold) ??
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      keyboardType: TextInputType.text,
                      name: 'address',
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: l10n.emptyLabel,
                        ),
                      ]),
                      initialValue: user.address,
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.saveAndValidate();
                        final data = _formKey.currentState!.value;
                        final fName = data['fullName'].toString();
                        final email = data['email'].toString();
                        final phone = data['phone'].toString();
                        final date = data['date'] as DateTime;
                        final address = data['address'].toString();
                        final user = UserModel(
                          name: fName,
                          email: email,
                          phone: phone,
                          date: date,
                          address: address,
                          urlImage: '',
                        );
                        context
                            .read<ProfileBloc>()
                            .add(ProfileEvent.submitted(user));
                      },
                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: AutoSizeText(
                        l10n.updateLabel,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
