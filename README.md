# 基础组件示例

这是一个使用 Flutter 实现的基础组件演示项目，涵盖了常用的文本、按钮、图片、图标、单选/复选控件、输入框、进度指示器等基础组件的用法。
![](data:image/png;base64,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)

## 功能展示

- **文本及样式**：普通文本、加粗、斜体、颜色等
- **按钮**：ElevatedButton、OutlinedButton、TextButton
- **图片及ICON**：网络图片、内置图标
- **单选开关和复选框**：Switch、Checkbox、Radio
- **输入框及表单**：TextField
- **进度指示器**：LinearProgressIndicator、CircularProgressIndicator、Slider

## 运行方式

1. 安装 [Flutter](https://flutter.dev/docs/get-started/install)
2. 获取依赖：
   ```sh
   flutter pub get
   ```
3. 运行项目：
   ```sh
   flutter run
   ```

## 目录结构

- `lib/main.dart`：主程序入口及 UI 代码
- `android/`、`ios/`、`linux/`、`macos/`、`windows/`、`web/`：各平台相关工程文件

## 截图

> 可根据实际运行效果添加截图

## 相关资源

- [Flutter 官方文档](https://docs.flutter.dev/)
- [Flutter 组件手册](https://flutter.dev/docs/development/ui/widgets)

---

如需自定义或扩展功能，请直接修改 [`lib/main.dart`](lib/main.dart) 文件。
