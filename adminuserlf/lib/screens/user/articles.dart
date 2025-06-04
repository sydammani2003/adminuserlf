import 'package:adminuserlf/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';



class ArticleDetail extends StatelessWidget {
  final String title;
  final String markdownContent;

  const ArticleDetail({
    super.key,
    required this.title,
    required this.markdownContent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Usingcolors.bgcolor,
      ),
      body: Markdown(
        data: markdownContent,
        styleSheet: MarkdownStyleSheet(
          h1: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          p: const TextStyle(fontSize: 16),
          listBullet: const TextStyle(fontSize: 20),
        ),
        bulletBuilder: (index, style) {
          // Always use an outline-style bullet symbol
          return const Text(
            '◦',
            style: TextStyle(fontSize: 20),
          );
        },
      ),
    );
  }
}


class ArticleCard extends StatelessWidget {
  final String title;
  final String description;
  final String markdownContent;

  const ArticleCard({
    super.key,
    required this.title,
    required this.description,
    required this.markdownContent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleDetail(
                title: title,
                markdownContent: markdownContent,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> articles = [
      {
        'title': 'Getting Started with Flutter',
        'description': 'Learn the basics of Flutter development',
        'markdownContent': '''
# Getting Started with Flutter

Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.

## Why Flutter?

Flutter offers several advantages:

1. **Fast Development**
   - Hot Reload feature
   - Rich set of pre-built widgets
   - Cross-platform development

2. **Expressive UI**
   - Beautiful Material Design
   - Cupertino widgets
   - Rich motion APIs

3. **Native Performance**
   - Compiled to native code
   - Direct access to platform features

## Setting Up Your Environment

To get started with Flutter:

1. Download the Flutter SDK
2. Install your preferred IDE (VS Code or Android Studio)
3. Set up your devices or emulators
4. Run 'flutter doctor' to verify your installation

## Your First Flutter App

Here's a simple example:

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

## Next Steps

- Explore Flutter widgets
- Learn about state management
- Practice building layouts
- Try different packages
'''
      },
      {
        'title': 'State Management in Flutter',
        'description': 'Understanding different state management approaches',
        'markdownContent': '''
# State Management in Flutter

State management is a crucial aspect of Flutter development. Let's explore various approaches.

## Types of State

1. **Ephemeral State**
   - Local to a single widget
   - Managed using setState()
   - Simple to implement

2. **App State**
   - Shared across widgets
   - Requires proper state management solution
   - More complex to handle

## Popular Solutions

### Provider
Provider is a wrapper around InheritedWidget to make them easier to use and more reusable.

### Bloc
Business Logic Component pattern separates business logic from UI.

### Riverpod
A modern approach to state management, solving common Provider issues.

## Example Implementation

```dart
class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
```

## Best Practices

1. Choose the right solution for your needs
2. Keep state management simple
3. Follow architectural patterns
4. Test your state management logic
'''
      },
    ];

    return Scaffold(
      backgroundColor: Usingcolors.bgcolor,
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ArticleCard(
            title: articles[index]['title']!,
            description: articles[index]['description']!,
            markdownContent: articles[index]['markdownContent']!,
          );
        },
      ),
    );
  }
}
