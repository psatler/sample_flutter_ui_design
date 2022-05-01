import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetBookFlutter extends StatelessWidget {
  const WidgetBookFlutter({Key? key}) : super(key: key);

  static const String routeName = '/widgetbook';

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'widgets',
          folders: [
            WidgetbookFolder(
              name: 'Folder name',
              folders: [],
            ),
          ],
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'elevated',
                  builder: (context) => ElevatedButton(
                    onPressed: () {},
                    child: const Text('Widgetbook'),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
      devices: [
        Apple.iPhone11,
        Apple.iPhone13,
        Samsung.s10,
        Samsung.s21ultra,
        Desktop.desktop1080p,
        Desktop.desktop4k,

        // Defining a device ourselves
        Device.mobile(
          name: 'My Custom Mobile Device',
          resolution: Resolution.dimensions(
            nativeWidth: 350,
            nativeHeight: 500,
            scaleFactor: 2,
          ),
        ),
      ],
      appInfo: AppInfo(
        name: 'My example widgetbook',
      ),
      textScaleFactors: const [
        1,
        2,
      ],
    );
  }
}
