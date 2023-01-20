import 'package:flutter/material.dart';

class HeadlineLarge extends StatelessWidget {
  const HeadlineLarge(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge!,
    );
  }
}

class HeadlineMedium extends StatelessWidget {
  const HeadlineMedium(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium!);
  }
}

class HeadlineSmall extends StatelessWidget {
  const HeadlineSmall(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall!,
    );
  }
}

class TitleLarge extends StatelessWidget {
  const TitleLarge(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge!,
    );
  }
}

class TitleMedium extends StatelessWidget {
  const TitleMedium(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium!);
  }
}

class TitleSmall extends StatelessWidget {
  const TitleSmall(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall!,
    );
  }
}

class LabelLarge extends StatelessWidget {
  const LabelLarge(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelLarge!,
    );
  }
}

class LabelMedium extends StatelessWidget {
  const LabelMedium(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.labelMedium!);
  }
}

class LabelSmall extends StatelessWidget {
  const LabelSmall(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelSmall!,
    );
  }
}

class BodyLarge extends StatelessWidget {
  const BodyLarge(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge!,
    );
  }
}

class BodyMedium extends StatelessWidget {
  const BodyMedium(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium!);
  }
}

class BodySmall extends StatelessWidget {
  const BodySmall(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!,
    );
  }
}
