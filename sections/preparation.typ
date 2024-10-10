// タイトル

#align(center, text(18pt, "E5 モンテカルロシミュレーション 予習課題")) \

#align(right, text(12pt, "62217149 福原博樹"))


= 1. result.txt の内容
\
#import "@preview/codelst:2.0.0": sourcecode

#sourcecode(
  frame: block.with(
    stroke: 1pt + gray,
    inset: (x: 10pt, y: 5pt),
    radius: 5pt,
    fill: luma(96%)
  )
)[
#raw(read("../figs/result.txt"))
]




= 2. 出力画像

#figure(
image("../figs/distrb-ave.png", width: 90%),
caption: [課題(1) 平均のグラフ],
) <fig:distrb-ave>

#figure(
image("../figs/distrb-var.png", width: 90%),
caption: [課題(1) 分散のグラフ],
) <fig:distrb-var>

#figure(
image("../figs/buffon.png", width: 90%),
caption: [課題(2) $pi$ への収束の様子],
) <fig:buffon>