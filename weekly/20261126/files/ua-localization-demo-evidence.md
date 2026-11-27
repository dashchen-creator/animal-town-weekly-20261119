# 同段样片 · 英文原片与简中适配

本次为公开周报制作了一段原创动画，用商业化试用的 AdLocalizationKit 1.1.0 实际处理。两版各 4 秒、96 帧，动作与画面时间点一致。

- **文字**　招牌从「BAKERY IS OPEN」换成「面包店开门了」。
- **图片**　右下角绿旗换成红灯笼。两张图均为本次制作，目标图作为已选素材输入工具。
- **配音**　先听英文，再听普通话。两边分别使用预设合成声，工具把原对白换成普通话声轨。
- **口型**　根据普通话发声强弱调整了 74 帧的嘴部开合。样片展示有限开合调整，精细发音仍需另审。

[并排对比 MP4](ua-localization-demo-en-zh.mp4) · [英文原片 MP4](ua-localization-original-en.mp4) · [简中实际导出 MP4](ua-localization-output-zh.mp4) · [商业化小组试用记录](ua-localization-trial-20261127.md)

工具校验确认显示时刻一致。英文原片 SHA-256 为 `0306ac5772d51bb90725f44b0fca2152fa9a6ba8f7d5b65cf34342308d1ccf44`。简中成片 SHA-256 为 `d9693220a0ed72e382d07cbdcf42b004d775cdeb8bf44201092f41ec225dceba`。
