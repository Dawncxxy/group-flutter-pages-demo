# 小组 Flutter Web 展示页

7 人小组基于 Flutter 框架开发的团队展示页面，使用 GitHub Fork + Pull Request 模式协作，最终通过 GitHub Pages 发布为可公开访问的 Web 站点。

| | 地址 |
|------|------|
| GitHub 仓库 | [https://github.com/RouX-O/group-flutter-pages-demo](https://github.com/RouX-O/group-flutter-pages-demo) |
| 在线访问 | [https://roux-o.github.io/group-flutter-pages-demo/](https://roux-o.github.io/group-flutter-pages-demo/) |

---

## 目录

- [背景](#背景)
- [小组成员与分工](#小组成员与分工)
- [安装](#安装)
- [用法](#用法)
- [如何贡献](#如何贡献)
- [维护者](#维护者)
- [致谢](#致谢)
- [许可证](#许可证)

---

## 背景

本项目是 GitHub 协作与 Flutter Web 部署的教学案例。小组每位成员负责修改页面中的不同内容区块，在自己独立的分支上提交代码，通过 Pull Request 由组长审核后合并到主分支。最终由组长将 Flutter 项目构建为 Web 静态文件，部署到 GitHub Pages。

### 页面模块

页面包含 4 个模块：

| 模块 | 内容 | 负责成员 |
|------|------|----------|
| 首页标题区（Hero） | 项目标题 `projectTitle` 与口号 `projectSlogan` | 组员 A 王小梅 |
| 成员介绍 | 7 位成员的姓名、角色、任务分工卡片列表 | 组员 B 唐一甜 |
| 项目功能 | 项目功能说明的列表 | 组员 C 刘昱泽 |
| 发布说明 | 部署方式与访问地址 | 组员 D 张蕴洁 |

### 技术栈

| 技术 | 说明 |
|------|------|
| **Flutter** | 跨平台 UI 框架，本项目使用 Web 构建 |
| **Dart** | Flutter 的编程语言 |
| **Material Design 3** | Flutter 内置的 UI 设计语言（`useMaterial3: true`） |
| **GitHub** | 代码托管、分支管理、Pull Request 审核 |
| **GitHub Pages** | 静态网页托管服务，通过 `gh-pages` 分支发布 |

### 项目依赖

- `flutter`（SDK）
- `cupertino_icons: ^1.0.8`
- `flutter_test`（SDK，用于单元测试）
- `flutter_lints: ^6.0.0`（代码规范检查）

> Flutter SDK 版本要求：`>=3.11.0 <4.0.0`

### 项目结构

```
group-flutter-pages-demo/
├── lib/
│   └── main.dart              # 项目主入口，所有页面内容在此修改
├── test/
│   └── widget_test.dart        # 基础冒烟测试
├── web/
│   ├── favicon.png             # 网站图标
│   ├── index.html              # Web 入口 HTML 文件
│   └── icons/                  # PWA 图标资源
├── android/                    # Android 平台配置（本案例以 Web 为主）
├── pubspec.yaml                # 项目配置与依赖声明
├── pubspec.lock                # 依赖版本锁定文件
├── analysis_options.yaml       # Dart 静态分析规则
└── README.md                   # 项目说明文档
```

---

## 小组成员与分工

本小组共 7 名成员（含组长），基于 Flutter Web 技术构建了一个小组展示页面。项目使用 GitHub 进行协作开发：每位组员在自己的分支上完成各自负责的内容，通过 Pull Request 提交给组长审核，组长合并后统一构建并部署到 GitHub Pages。

| 角色 | 姓名 | 负责内容 | 分支名 |
|------|------|----------|--------|
| 组长 | 蒋亿乐 | 创建仓库、维护 main 分支、审核 PR、发布 GitHub Pages | `main` |
| 组员 A | 王小梅 | 修改首页标题和项目口号 | `member-a-title` |
| 组员 B | 唐一甜 | 整理小组成员介绍与任务分工 | `member-b-members` |
| 组员 C | 刘昱泽 | 整理项目功能列表 | `member-c-features` |
| 组员 D | 张蕴洁 | 记录发布说明和访问地址 | `member-d-release` |
| 组员 E | 杨晨曦 | 编写 README 项目说明 | `member-e-readme` |
| 组员 F | 于昕冉 | 本地测试验收与协助部署 | `member-f-test` |

---

## 安装

### 前置条件

- Flutter SDK >= 3.11.0（[安装指引](https://docs.flutter.cn/get-started/install)）
- Git
- Chrome 浏览器（用于 Web 调试）

### 步骤

```bash
# 1. 克隆仓库
git clone https://github.com/RouX-O/group-flutter-pages-demo.git
cd group-flutter-pages-demo

# 2. 安装依赖
flutter pub get

# 3. 启动 Web 开发服务器
flutter run -d chrome
```

---

## 用法

### 在浏览器中访问

运行 `flutter run -d chrome` 后，Flutter 会自动打开 Chrome 浏览器并加载页面。

### 修改页面内容

所有页面内容在 `lib/main.dart` 中定义：

```dart
// 组员 A 王小梅 修改：首页标题与口号
static const String projectTitle = '星火小组 Flutter Web 展示页';
static const String projectSlogan = '用 GitHub 协作完成一次真实的小组项目发布';

// 组员 B 唐一甜 修改：小组成员与分工
static const List<TeamMember> members = [ ... ];

// 组员 C 刘昱泽 修改：项目功能列表
static const List<String> features = [ ... ];

// 组员 D 张蕴洁 修改：发布说明
static const List<String> releaseNotes = [ ... ];
```

### 构建与部署

```bash
# 构建 Web 静态文件
flutter build web --base-href /group-flutter-pages-demo/

# 构建产物位于 build/web/ 目录
# 将 build/web/ 的内容推送到 gh-pages 分支即可发布到 GitHub Pages
```

---

## 如何贡献

本项目采用 Fork + Pull Request 模式协作：

1. **Fork** 本仓库到你的 GitHub 账号
2. 从 `main` 创建你的功能分支（如 `member-a-title`）
3. 在分支上完成你的修改并提交
4. 推送到你 Fork 的仓库
5. 向本仓库 `main` 分支发起 **Pull Request**
6. 组长审核后合并

提交 Issue 请访问：[Issues 页面](https://github.com/RouX-O/group-flutter-pages-demo/issues)

---

## 维护者

- [@蒋亿乐](https://github.com/RouX-O) — 组长，仓库管理员

---

## 致谢

- [standard-readme](https://github.com/RichardLitt/standard-readme) — 本 README 遵循的文档规范
- [flutterchina.club](https://flutterchina.club) — Flutter 中文学习资源

---

## 许可证

[MIT](LICENSE) © 2026 星火小组
