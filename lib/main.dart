import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '基础组件示例',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const BasicElementsDemo(),
    );
  }
}

class BasicElementsDemo extends StatefulWidget {
  const BasicElementsDemo({super.key});

  @override
  State<BasicElementsDemo> createState() => _BasicElementsDemoState();
}

class _BasicElementsDemoState extends State<BasicElementsDemo> {
  bool _switchValue = false;
  bool _checkboxValue = false;
  int _radioValue = 0;
  final TextEditingController _controller = TextEditingController();
  double _progress = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('第三章：基础组件')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 3.1 文本及样式
            const Text(
              '3.1 文本及样式',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('普通文本', style: TextStyle(fontSize: 16)),
            const Text('加粗文本', style: TextStyle(fontWeight: FontWeight.bold)),
            const Text(
              '红色斜体',
              style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),

            // 3.2 按钮
            const Text(
              '3.2 按钮',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('ElevatedButton'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('OutlinedButton'),
                ),
                const SizedBox(width: 8),
                TextButton(onPressed: () {}, child: const Text('TextButton')),
              ],
            ),
            const SizedBox(height: 16),

            // 3.3 图片及ICON
            const Text(
              '3.3 图片及ICON',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Image.network(
                  'https://ts1.tc.mm.bing.net/th/id/R-C.987f582c510be58755c4933cda68d525?rik=C0D21hJDYvXosw&riu=http%3a%2f%2fimg.pconline.com.cn%2fimages%2fupload%2fupc%2ftx%2fwallpaper%2f1305%2f16%2fc4%2f20990657_1368686545122.jpg&ehk=netN2qzcCVS4ALUQfDOwxAwFcy41oxC%2b0xTFvOYy5ds%3d&risl=&pid=ImgRaw&r=0',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 8),
                const Icon(Icons.favorite, color: Colors.pink, size: 40),
                const SizedBox(width: 8),
                const Icon(Icons.star, color: Colors.amber, size: 40),
              ],
            ),
            const SizedBox(height: 16),

            // 3.4 单选开关和复选框
            const Text(
              '3.4 单选开关和复选框',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: const Text('开关'),
              value: _switchValue,
              onChanged: (val) => setState(() => _switchValue = val),
            ),
            CheckboxListTile(
              title: const Text('复选框'),
              value: _checkboxValue,
              onChanged: (val) => setState(() => _checkboxValue = val ?? false),
            ),
            Row(
              children: [
                Radio<int>(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: (val) => setState(() => _radioValue = val ?? 0),
                ),
                const Text('选项A'),
                Radio<int>(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: (val) => setState(() => _radioValue = val ?? 1),
                ),
                const Text('选项B'),
              ],
            ),
            const SizedBox(height: 16),

            // 3.5 输入框及表单
            const Text(
              '3.5 输入框及表单',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: '请输入内容',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // 3.6 进度指示器
            const Text(
              '3.6 进度指示器',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            LinearProgressIndicator(value: _progress),
            const SizedBox(height: 8),
            CircularProgressIndicator(value: _progress),
            Slider(
              value: _progress,
              onChanged: (val) => setState(() => _progress = val),
            ),
          ],
        ),
      ),
    );
  }
}
