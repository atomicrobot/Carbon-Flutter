import 'package:carbon_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:carbon_flutter/ui/design_system/theme.dart';

const _textScaleOptions = [0.75, 1.0, 1.5, 2.0];
final _textScaleProvider = StateProvider<double>((ref) {
  return 1.0;
});

class _DarkModeAction extends ConsumerWidget {
  const _DarkModeAction();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appConfiguration = ref.watch(appConfigurationProvider);
    return Row(
      children: [
        Switch(
          value: appConfiguration.darkMode,
          onChanged: (value) => ref.read(appConfigurationProvider.notifier).setDarkMode(value),
        ),
        Text(context.localizations.setting_dark_mode),
      ],
    );
  }
}

class _TextScaleAction extends ConsumerWidget {
  const _TextScaleAction();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textScale = ref.watch(_textScaleProvider);
    return Row(
      children: [
        DropdownButton<double>(
          items: _textScaleOptions.map<DropdownMenuItem<double>>((value) {
            return DropdownMenuItem<double>(
              value: value,
              child: Text('${value}x Text Scale'),
            );
          }).toList(),
          value: textScale,
          onChanged: (value) => ref.read(_textScaleProvider.notifier).state = value!,
        ),
      ],
    );
  }
}

const _actions = [
  _TextScaleAction(),
  _DarkModeAction(),
  SizedBox(width: screenPadding),
];

class _DesignSystemScaffold extends ConsumerWidget {
  final String title;
  final Widget child;

  const _DesignSystemScaffold({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQueryData = MediaQuery.of(context).copyWith(
      textScaleFactor: ref.watch(_textScaleProvider),
    );
    return MediaQuery(
      data: mediaQueryData,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: _actions,
        ),
        body: child,
      ),
    );
  }
}

class DesignSystemScreen extends ConsumerWidget {
  const DesignSystemScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _DesignSystemScaffold(
      title: context.localizations.navigation_design_system,
      child: ListView(
        children: [
          ListTile(
            title: const Text('Colors'),
            onTap: () => context.go('/design_system/colors'),
          ),
          ListTile(
            title: const Text('Typography'),
            onTap: () => context.go('/design_system/typography'),
          ),
          ListTile(
            title: const Text('Logos'),
            onTap: () => context.go('/design_system/logos'),
          ),
          ListTile(
            title: const Text('Icons'),
            onTap: () => context.go('/design_system/icons'),
          ),
          const Divider(),
          ListTile(
            title: const Text('Buttons'),
            onTap: () => context.go('/design_system/buttons'),
          ),
          ListTile(
            title: const Text('Checkboxes'),
            onTap: () => context.go('/design_system/checkboxes'),
          ),
          ListTile(
            title: const Text('Radios'),
            onTap: () => context.go('/design_system/radios'),
          ),
          ListTile(
            title: const Text('Switches'),
            onTap: () => context.go('/design_system/switches'),
          ),
          ListTile(
            title: const Text('Sliders'),
            onTap: () => context.go('/design_system/sliders'),
          ),
          ListTile(
            title: const Text('Pickers'),
            onTap: () => context.go('/design_system/pickers'),
          ),
          ListTile(
            title: const Text('Text Fields'),
            onTap: () => context.go('/design_system/text_fields'),
          ),
          const Divider(),
          ListTile(
            title: const Text('App Widget 1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('App Widget 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DesignSystemColorsScreen extends StatelessWidget {
  const DesignSystemColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Colors',
      child: Container(),
    );
  }
}

class DesignSystemTypographyScreen extends StatelessWidget {
  const DesignSystemTypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Typography',
      child: Padding(
        padding: const EdgeInsets.all(screenPadding),
        child: ListView(
          children: [
            Text('Headline Large', style: context.headlineLargeTextStyle),
            Text('Headline Medium', style: context.headlineMediumTextStyle),
            Text('Headline Small', style: context.headlineSmallTextStyle),
            const Divider(),
            Text('Title Large', style: context.titleLargeTextStyle),
            Text('Title Medium', style: context.titleMediumTextStyle),
            Text('Title Small', style: context.titleSmallTextStyle),
            const Divider(),
            Text('Label Large', style: context.labelLargeTextStyle),
            Text('Label Medium', style: context.labelMediumTextStyle),
            Text('Label Small', style: context.labelSmallTextStyle),
            const Divider(),
            Text('Body Large', style: context.bodyLargeTextStyle),
            Text('Body Medium', style: context.bodyMediumTextStyle),
            Text('Body Small', style: context.bodySmallTextStyle),
          ],
        ),
      ),
    );
  }
}

class DesignSystemLogosScreen extends StatelessWidget {
  const DesignSystemLogosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Logos',
      child: ListView(
        children: [
          ListTile(
            title: SvgPicture.asset(Assets.images.logo),
          ),
          ListTile(
            title: SvgPicture.asset(Assets.images.logoDark),
          ),
        ],
      ),
    );
  }
}

class DesignSystemIconsScreen extends StatelessWidget {
  const DesignSystemIconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Icons',
      child: Container(),
    );
  }
}

class DesignSystemButtonsScreen extends StatefulWidget {
  const DesignSystemButtonsScreen({super.key});

  @override
  State<DesignSystemButtonsScreen> createState() => _DesignSystemButtonsScreenState();
}

class _DesignSystemButtonsScreenState extends State<DesignSystemButtonsScreen> {
  final List<String> _options = ['Apple', 'Banana', 'Cherry'];
  String? _selectedPopupMenuOption;
  String? _selectedDropdownMenuOption;

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Buttons',
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text('Text Button (Enabled)'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: null,
              child: Text('Text Button (Disabled)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: null,
              child: Text('Elevated Button (Disabled)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: null,
              child: Text('Outlined Button (Disabled)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              tooltip: 'Icon Button',
              icon: const Icon(Icons.thumb_up),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: null,
              tooltip: 'Icon Button',
              icon: Icon(Icons.thumb_up),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PopupMenuButton<String>(
              initialValue: _selectedPopupMenuOption,
              // Callback that sets the selected popup menu item.
              onSelected: (item) => setState(() => _selectedPopupMenuOption = item),
              itemBuilder: (context) => _options
                  .map((item) => PopupMenuItem<String>(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: _selectedDropdownMenuOption,
              onChanged: (value) => setState(() => _selectedDropdownMenuOption = value),
              items: _options.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class DesignSystemCheckboxesScreen extends StatefulWidget {
  const DesignSystemCheckboxesScreen({super.key});

  @override
  State<DesignSystemCheckboxesScreen> createState() => _DesignSystemCheckboxesScreenState();
}

class _DesignSystemCheckboxesScreenState extends State<DesignSystemCheckboxesScreen> {
  bool _bistateCheckboxValue = false;
  bool? _tristateCheckboxValue;

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Checkboxes',
      child: ListView(
        children: [
          ListTile(
            title: const Text('Checkbox (Enabled)'),
            leading: Checkbox(
              value: _bistateCheckboxValue,
              onChanged: (value) => setState(() => _bistateCheckboxValue = value!),
            ),
          ),
          const ListTile(
            title: Text('Checkbox (Disabled / Active)'),
            leading: Checkbox(
              value: true,
              onChanged: null,
            ),
          ),
          const ListTile(
            title: Text('Checkbox (Disabled / Inactive)'),
            leading: Checkbox(
              value: false,
              onChanged: null,
            ),
          ),
          ListTile(
            title: const Text('Tristate Checkbox (Enabled)'),
            leading: Checkbox(
              tristate: true,
              value: _tristateCheckboxValue,
              onChanged: (value) => setState(() => _tristateCheckboxValue = value),
            ),
          ),
          const ListTile(
            title: Text('Tristate Checkbox (Disabled / Tristate)'),
            leading: Checkbox(
              tristate: true,
              value: null,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}

class DesignSystemRadiosScreen extends StatefulWidget {
  const DesignSystemRadiosScreen({super.key});

  @override
  State<DesignSystemRadiosScreen> createState() => _DesignSystemRadiosScreenState();
}

class _DesignSystemRadiosScreenState extends State<DesignSystemRadiosScreen> {
  final List<String> _options = ['Apple', 'Banana', 'Cherry'];
  String? _selectedRadioOption = 'Apple';

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Radios',
      child: ListView(
        children: [
          for (var option in _options)
            ListTile(
              title: Text(option),
              leading: Radio<String>(
                value: option,
                groupValue: _selectedRadioOption,
                onChanged: (value) => setState(() => _selectedRadioOption = value),
              ),
            ),
          const ListTile(
            title: Text('Radio (Disabled / Active)'),
            leading: Radio<bool>(
              value: true,
              groupValue: true,
              onChanged: null,
            ),
          ),
          const ListTile(
            title: Text('Radio (Disabled / Inactive)'),
            leading: Radio<bool>(
              value: false,
              groupValue: true,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}

class DesignSystemSwitchesScreen extends StatefulWidget {
  const DesignSystemSwitchesScreen({super.key});

  @override
  State<DesignSystemSwitchesScreen> createState() => _DesignSystemSwitchesScreenState();
}

class _DesignSystemSwitchesScreenState extends State<DesignSystemSwitchesScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Switches',
      child: ListView(
        children: [
          ListTile(
            title: const Text('Switch (Enabled)'),
            leading: Switch(
              value: _switchValue,
              onChanged: (value) => setState(() => _switchValue = value),
            ),
          ),
          const ListTile(
            title: Text('Switch (Disabled / Active)'),
            leading: Switch(
              value: true,
              onChanged: null,
            ),
          ),
          const ListTile(
            title: Text('Switch (Disabled / Inactive)'),
            leading: Switch(
              value: false,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}

class DesignSystemSlidersScreen extends StatefulWidget {
  const DesignSystemSlidersScreen({super.key});

  @override
  State<DesignSystemSlidersScreen> createState() => _DesignSystemSlidersScreenState();
}

class _DesignSystemSlidersScreenState extends State<DesignSystemSlidersScreen> {
  double _currentSliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Sliders',
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
              value: _currentSliderValue,
              min: 0.0,
              max: 10.0,
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: (value) => setState(() => _currentSliderValue = value),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
              value: 5.0,
              min: 0.0,
              max: 10.0,
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}

class DesignSystemPickersScreen extends StatefulWidget {
  const DesignSystemPickersScreen({super.key});

  @override
  State<DesignSystemPickersScreen> createState() => _DesignSystemPickersScreenState();
}

class _DesignSystemPickersScreenState extends State<DesignSystemPickersScreen> {
  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Pickers',
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(const Duration(days: 7)),
                  lastDate: DateTime.now().add(const Duration(days: 7)),
                  initialDate: DateTime.now(),
                );
              },
              child: const Text('Show Date Picker'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showDateRangePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(const Duration(days: 7)),
                  lastDate: DateTime.now().add(const Duration(days: 7)),
                );
              },
              child: const Text('Show Date Range Picker'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
              },
              child: const Text('Show Time Picker'),
            ),
          ),
        ],
      ),
    );
  }
}

class DesignSystemTextFieldScreen extends StatefulWidget {
  const DesignSystemTextFieldScreen({super.key});

  @override
  State<DesignSystemTextFieldScreen> createState() => _DesignSystemTextFieldScreenState();
}

class _DesignSystemTextFieldScreenState extends State<DesignSystemTextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return _DesignSystemScaffold(
      title: 'Text Fields',
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Text (Outlined)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Text (Outlined / Disabled)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              minLines: 3,
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Multiline (Outlined)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Text (Underlined)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Text (Underlined / Disabled)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              minLines: 3,
              maxLines: 3,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Multiline (Underlined)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
