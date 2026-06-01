# 组员F - 测试验收记录

## 基本信息

| 项目 | 内容 |
| --- | --- |
| 测试执行人 | 组员 F（于昕冉） |
| 测试日期 | 2026-06-01 |
| 测试环境 | Windows, Flutter SDK 3.6.2, Dart SDK 3.6.2 |
| 测试分支 | `member-f-test`（基于 main 最新合并版本） |
| 测试命令 | `flutter test` |
| 测试结果 | ✅ **7/7 全部通过** |

## 已合并 PR 清单

| PR # | 标题 | 作者 | 状态 |
| --- | --- | --- | --- |
| #1 | update team members and roles | t-1tian（唐一甜） | Merged |
| #2 | update project title and slogan | wxiaomei927（王小梅） | Merged |
| #3 | update project features | Yiuue-03（刘昱泽） | Merged |
| #4 | update release notes | zyj-better（张蕴洁） | Merged |
| — | README.md 更新 | 组长（蒋亿乐）/ 组员E | 已在 main 中 |

## 测试用例清单

### 1. AppBar 标题验收
- **测试内容**：验证 App 启动后 AppBar 显示正确标题
- **预期结果**：显示"小组项目展示"
- **实际结果**：✅ 通过

### 2. 组员A - 首页标题与口号
- **测试内容**：验证组员A修改后的标题和口号
- **预期结果**：标题为"GitHub 协作与 Flutter Web 部署展示页"，口号为"7人小组分工协作完成 GitHub 团队开发与 Flutter Web 部署"
- **实际结果**：✅ 通过

### 3. 组员B - 小组成员标题
- **测试内容**：验证"小组成员与分工"区域标题存在
- **预期结果**：显示"小组成员与分工"
- **实际结果**：✅ 通过

### 4. 组员B - 7位成员全部显示
- **测试内容**：验证所有7位成员的"角色：姓名"格式正确
- **预期结果**：组长：蒋亿乐、组员A：王小梅、组员B：唐一甜、组员C：刘昱泽、组员D：张蕴洁、组员E：杨晨曦、组员F：于昕冉
- **实际结果**：✅ 通过

### 5. 组员B - CircleAvatar 角色末字
- **测试内容**：验证每位成员头像 CircleAvatar 显示角色末字
- **预期结果**：长、A、B、C、D、E、F
- **实际结果**：✅ 通过

### 6. 组员C - 项目功能列表
- **测试内容**：验证功能列表区域标题和4条功能描述
- **预期结果**：
  - 标题："项目功能"
  - "展示小组项目主题与小组口号"
  - "展示七位成员的姓名、角色与任务分工"
  - "每位组员通过独立分支和 Pull Request 完成协作修改"
  - "使用 Flutter Web 构建并通过 GitHub Pages 对外发布"
- **实际结果**：✅ 通过

### 7. 组员D - 发布说明
- **测试内容**：验证发布说明区域标题和4条发布说明
- **预期结果**：
  - 标题："发布说明"
  - "源码统一维护在 main 分支，所有组员修改都通过 PR 合并。"
  - "组长使用 flutter build web 生成静态网页文件。"
  - "构建产物发布到 gh-pages 分支，并由 GitHub Pages 对外访问。"
  - "访问地址格式：https://RouX-O.github.io/group-flutter-pages-demo/"
- **实际结果**：✅ 通过

## 终端输出记录

```
00:00 +0: loading .../test/widget_test.dart
00:00 +0: 验收：App启动后 AppBar 标题正确
00:00 +1: 验收-组员A：首页标题为合并后版本
00:01 +2: 验收-组员B：小组成员与分工标题存在
00:01 +3: 验收-组员B：7位成员全部显示
00:01 +4: 验收-组员B：每位成员的 CircleAvatar 显示角色末字
00:01 +5: 验收-组员C：项目功能标题与内容
00:01 +6: 验收-组员D：发布说明标题与内容
00:01 +7: All tests passed!
```

## 截图说明

| 序号 | 截图内容 | 文件路径 | 说明 |
|------|---------|---------|------|
| 1 | `flutter test` 终端输出 | `docs/screenshots/flutter-test-pass.png` | 7/7 测试用例全部通过，显示 "All tests passed!" |
| 2 | GitHub Pages 页面（上部） | `docs/screenshots/github-pages-view-top.png` | 浏览器访问 https://roux-o.github.io/group-flutter-pages-demo/，展示标题、口号、小组成员与分工 |
| 3 | GitHub Pages 页面（下部） | `docs/screenshots/github-pages-view-bottom.png` | 展示项目功能列表、发布说明 |

### 截图内容描述

**图 1：flutter test 终端输出**
- 运行命令：`flutter test`
- 结果：7/7 测试用例全部通过
- 关键信息：`All tests passed!`

**图 2：GitHub Pages 页面 - 上部**
- 页面地址：https://roux-o.github.io/group-flutter-pages-demo/
- 展示内容：项目标题、口号、小组成员与分工

**图 3：GitHub Pages 页面 - 下部**
- 展示内容：项目功能列表、发布说明

## 验收结论

✅ 所有组员（A-D）通过 PR 合并到 main 的修改均已通过全量验收测试，页面各区域内容正确显示，`flutter test` 7/7 全部通过。
