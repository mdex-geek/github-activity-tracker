# 🚀 GitHub Activity Tracker

A simple command-line tool that fetches and displays a user's recent GitHub activity, including push events, issue creations, repository stars, and more.
i am adding my exe file you can use to play with it
# 🚀 Project URL

[GitHub Activity Tracker](https://roadmap.sh/projects/github-user-activity)
## 📌 Features
- Fetches the latest public events from a GitHub user
- Displays commit counts for push events
- Identifies repository activities like issue creation, stars, forks, and more
- User-friendly CLI interface

## 📂 Project Structure
```
📦 github-activity-tracker
├── 📂 bin
│   ├── github_activity_cli.dart      # Entry point for the application
├── pubspec.yaml       # Dart package configuration
├── README.md          # Project documentation
```

## 🔧 Installation
### Prerequisites
- Install **Dart SDK**: [Download here](https://dart.dev/get-dart)

### Clone the Repository
```sh
git clone https://github.com/your-username/github-activity-tracker.git
cd github-activity-tracker
```

### Install Dependencies
```sh
dart pub get
```

### Compile to Executable
To create an `.exe` file (for Windows) or a binary for Linux/macOS:
```sh
dart compile exe bin/main.dart -o github_activity
```

### Run the Program
To run the script directly:
```sh
dart run bin/main.dart
```
Or, if compiled to an executable:
```sh
./github_activity  # On Linux/macOS
github_activity.exe  # On Windows
```

## 🎮 Usage
1. Run the program and enter your GitHub username when prompted.
2. The program fetches your latest activities and displays them in a human-readable format.

**Example Output:**
```
GitHub Activity - Enter your GitHub username: mdex-geek
- Pushed 3 commits to mdex-geek/task-tracker-cli
- Opened a new issue in mdex-geek/task-tracker-cli
- Starred mdex-geek/task-tracker-cli
```

## 🤝 Contributing
Contributions are welcome! Follow these steps to contribute:
1. **Fork** the repository
2. **Clone** your fork
   ```sh
   git clone https://github.com/your-username/github-activity-tracker.git
   ```
3. **Create a feature branch**
   ```sh
   git checkout -b feature-name
   ```
4. **Commit your changes**
   ```sh
   git commit -m "Added a new feature"
   ```
5. **Push to your fork**
   ```sh
   git push origin feature-name
   ```
6. **Submit a Pull Request** 🚀

## 📝 License
This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 🌟 Show Your Support
If you like this project, please ⭐ star the repository to show your support!

Happy coding! 🎉
