# 小组 Flutter Web 展示页示例项目

这是配套“GitHub 协作与 Flutter Web 部署”案例的初始项目。组长可以把这个项目提交到 GitHub 仓库的 `main` 分支，6 名组员分别基于自己的任务分支提交 Pull Request。

## 本地运行

```bash
flutter pub get
flutter run
```

如果要用浏览器运行，可以选择 Chrome 或 web-server：

```bash
flutter run -d chrome
```

## 构建 Web 静态文件

把 `REPO_NAME` 替换成你的 GitHub 仓库名：

```bash
flutter build web --base-href /REPO_NAME/
```

构建完成后，静态网站文件位于：

```text
build/web/
```

这些文件可以发布到仓库的 `gh-pages` 分支。

## 小组分工

本小组共 7 人，包含 1 名组长和 6 名组员。

| 成员 | 负责内容 | 分支名 |
| --- | --- | --- |
| 组长 | 创建仓库、上传初始项目、审核所有 PR、构建 Flutter Web、发布 GitHub Pages | `main` |
| 组员 A | 修改 `projectTitle` 和 `projectSlogan`（首页标题与口号） | `member-a-title` |
| 组员 B | 修改 `members` 列表（真实姓名、角色、任务描述） | `member-b-members` |
| 组员 C | 修改 `features` 列表（项目功能描述） | `member-c-features` |
| 组员 D | 修改 `releaseNotes`（发布说明和访问地址） | `member-d-release` |
| 组员 E | 编写/完善 `README.md`（小组简介、使用说明、访问地址等） | `member-e-readme` |
| 组员 F | 本地运行 `flutter test` 全量验收，合并后协助组长执行部署命令并截图记录 | `member-f-test` |

## 组员任务入口

组员 A-D 主要修改 `lib/main.dart` 中的不同位置，组员 E 修改 `README.md`，组员 F 负责测试验收记录。

每名组员都应该在自己的分支上修改，提交 commit，然后向组长发起 Pull Request。
