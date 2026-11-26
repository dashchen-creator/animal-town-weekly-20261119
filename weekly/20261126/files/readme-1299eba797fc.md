> 公网阅读副本。已有公开附件保留链接，工程内原件在对应项目档案查看。
> 原文 SHA-256 5cfa7ea4faf12d16164b5c849e00695398a99485716e10597127a8dd66bc9e33

# 证据与复验口径

| 记录 | 范围和结果 |
|---|---|
| `runtime.json`、`runtime.log`、`probe.gd` | 本次打包从当前工程重新建档，读取基础钱包、初始化棋盘、实际售价及目录，共 582 个棋子。枚举固定序列时模拟满足章节、设备发现前置，共 36 个固定单、6 个循环、14 个一次性副单。枚举记录用于核值。 |
| `fresh-and-legacy.log` | 本次在独立空存档运行随包的正式回归测试，结果无失败项。 |
| `orders-bench.log`、`orders-skip.log`、`old-save.log` | 同一数值方案的历史自动路线与旧档验证。借蛛网一线在 IN07 收到 116 金，之后在为 BK08 攒钱时体力为 0；跳过捷径一线到 BK10，最低 6 体力。旧档长椅保留，原库存触发单未出现，钱包核对一致。 |
| `stone-new.log`、`stone-ui.log`、`stone-reload.log`、两张 PNG | 当前盖布交互修改的 Windows 游戏窗口验证。点选与重复拖动不发奖；揭开只入队 1 个，下一组正常合成和重新登录均不增发。领取后棋盘 1 个，队列 0 个。 |

**在目标工程复跑**　把 Windows 的 `APPDATA`、`LOCALAPPDATA`、`ANIMALTOWN_TEST_APPDATA` 在测试进程内指向同一独立空目录。每条独立路线用不同目录。从目标工程的 `client/` 启动 Godot，使用 `--headless --path . --script res://tests/test_flambe_opening_economy.gd`。如需重新导出运行快照，另开空目录运行 `--headless --path . --script "交接目录/qa/probe.gd" -- "快照输出路径.json"`。

订单路线脚本为 `orders-route.gd`，使用 `-- --paced --bench` 或 `-- --paced --alternate --skip-chair --miss-upper` 两组参数。万能石用例先跑 `stone-prepare.gd`（参数 `-- --paced`）生成正常新档进度，再用同一存档以图形模式运行 `stone-ui.gd`（参数 `-- "已有截图输出目录"`），退出后再带 `-- "同一截图目录" --reload` 重进。历史记录与本次重跑的结果在表中分别标注。
