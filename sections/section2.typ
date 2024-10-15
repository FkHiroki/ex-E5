#import "@preview/codelst:2.0.0": sourcecode
= 2. 実験結果

= 課題(1) 
  課題(1)では一様乱数を発生させて、その平均と分散、度数分布を求めた。まず、実行したプログラムの実行結果を@fig:result に示す。ここで、このプログラムでは、乱数を発生させる回数を$30,000$回としている。

#figure(
  caption: [課題(1): 実行結果],
sourcecode(
  frame: block.with(
    stroke: 1pt + gray,
    inset: (x: 10pt, y: 5pt),
    radius: 5pt,
    fill: luma(96%)
  )
)[
#raw(read("../figs/result.txt"))
]
) <fig:result>

  これをグラフにプロットし、度数分布を求めた結果を@fig:distrb に示す。@fig:result、@fig:distrb から、それぞれの区間での度数が、理論値（$6000$）との誤差が$80$以下になっており、発生させた乱数が一様乱数になっていることが確認できる。

#figure(
image("../figs/hist.png", width: 90%),
caption: [課題(1): 度数分布のグラフ],
) <fig:distrb>



  次に、同じプログラム乱数生成法のプログラムを用いて、乱数の発生回数を$1,000$回から$100$万回まで、$1,000$回ずつ増やして、それぞれの平均と分散を求め、その時の平均と分散の値をグラフにプロットした。その結果を@fig:distrb-ave と@fig:distrb-var に示す。
  
#figure(
image("../figs/distrb-ave.png", width: 60%),
caption: [課題(1): 平均のグラフ],
) <fig:distrb-ave>

#figure(
image("../figs/distrb-var.png", width: 60%),
caption: [課題(1): 分散のグラフ],
) <fig:distrb-var>

  @fig:distrb-ave から、乱数の発生回数が増えるにつれて、平均の値が$0.5$に収束していることがわかる。また、@fig:distrb-var から、乱数の発生回数が増えるにつれて、分散の値が$0.083$付近に収束していることがわかる。



= 課題(2) 
  課題(2)では、buffonの針問題をシミュレーションするプログラムを実行した。このプログラムでは乱数を$3$万回発生させ、buffonの針問題の理論を用いて、円周率$pi$の値を計算した。その結果を@fig:buffon_result に示す。

  #figure(
    caption: [課題(2) $pi$ の計算結果],
  sourcecode(
    frame: block.with(
      stroke: 1pt + gray,
      inset: (x: 10pt, y: 5pt),
      radius: 5pt,
      fill: luma(96%)
    )
  )[
  #raw(read("../figs/result2.txt"))
  ]
  ) <fig:buffon_result>

  また、このプログラムを用いて、乱数の発生回数を$1,000$回から$100$万回まで、$1,000$回ずつ増やして、それぞれの$pi$の値を計算し、その時の$pi$の値をグラフにプロットした。その結果を@fig:buffon に示す。
  @fig:buffon_result から、乱数の発生回数が増えるにつれて、$pi$の値がある一定の値に収束していることがわかる。

#figure(
image("../figs/buffon.png", width: 60%),
caption: [課題(2): $pi$ への収束の様子],
) <fig:buffon>

= 課題(3) 求積問題によるπの値

== (3)-1: ⼊⾨的モンテカルロ法によりπの値を求める

  入門的モンテカルロ法を用いたプログラムを実行して、πの値を計算した。この時、乱数発生の試行回数を$30,000$、$100,000$、$1,000,000$、$10,000,000$、$100,000,000$、$300,000,000$回で実行した。その結果を@fig:monte_result に示す。
  
  #figure(
    caption: [課題(3)-1: πの値の計算結果],
  sourcecode(
    frame: block.with(
      stroke: 1pt + gray,
      inset: (x: 10pt, y: 5pt),
      radius: 5pt,
      fill: luma(96%)
    )
  )[
  #raw(read("../figs/crudedata.txt"))
  ]
  ) <fig:monte_result>

== (3)-2: 当たり外れのモンテカルロ法によりπの値を求める

  次に、当たり外れのモンテカルロ法を用いたプログラムを実行して、πの値を計算した。この時も乱数発生の試行回数を$30,000$、$100,000$、$1,000,000$、$10,000,000$、$100,000,000$、$300,000,000$回で実行した。その結果を@fig:hit_result に示す。

  #figure(
    caption: [課題(3)-2: πの値の計算結果],
  sourcecode(
    frame: block.with(
      stroke: 1pt + gray,
      inset: (x: 10pt, y: 5pt),
      radius: 5pt,
      fill: luma(96%)
    )
  )[
  #raw(read("../figs/hitdata.txt"))
  ]
  ) <fig:hit_result>

  そして、@fig:monte_result と@fig:hit_result の結果からそれぞれの絶対誤差を計算し、グラフにプロットすることで、それぞれのモンテカルロ法の精度を比較した。その結果を@fig:monte_hit_comp に示す。

  #figure(
  image("../figs/pi_comp.png", width: 90%),
  caption: [課題(3): モンテカルロ法の比較],
  ) <fig:monte_hit_comp>

  @fig:monte_hit_comp から、どちらの手法も初めは回数が増えるにつれて精度が向上しているが、試行回数が$10^5$を超えてからは、精度の向上がほとんど見られず、誤差が一定になっている。また、$10^9$の時以外は、入門的モンテカルロ法の方が当たり外れのモンテカルロ法よりも精度が高いことがわかる。

= 課題(4) モンテカルロシミュレーション

== (4)-1: ランダムウォーク

  ここでは、ランダムウォークをシミュレーションするプログラムを実行した。まず、今回のランダムウォークでは、$1$ステップの移動距離を$1$とし、$1$回のシミュレーションで$10$回の移動を行った。初めに、表計算ソフトを用いて、今回の状況の確率分布の理論式から位置の確率分布を求めた。その結果を@fig:randomwalk_theory に示す。

  #figure(
  image("../figs/randwalk_theo.png", width: 90%),
  caption: [課題(4)-1: ランダムウォークの理論値],
  ) <fig:randomwalk_theory>

  次に、ランダムウォークのシミュレーションをするプログラムを試行回数$100$万回で実行し、その時の位置の確率分布をグラフとして可視化した。その結果を@fig:randomwalk に示す。そして、理論値と実験値の比較を@fig:randomwalk_comp に示す。@fig:randomwalk_comp から、理論値と実験値のプロットがほとんど重なっており、プログラムの精度の良さが確認できる。

  #figure(
  image("../figs/randwalk_exp.png", width: 90%),
  caption: [課題(4)-1: ランダムウォークの実験値],
  ) <fig:randomwalk>

  #figure(
  image("../figs/randwalk_comp.png", width: 90%),
  caption: [課題(4)-1: ランダムウォークの理論値と実験値の比較],
  ) <fig:randomwalk_comp>

\

== (4)-2: 二項分布に従う確率分布

  ここでは、「全住⺠の5%がある感染症に罹患しており、その中から無作為に500⼈を抽出する。ただし住⺠は500⼈よりずっと多いとする。このとき、抽出された集団の中に罹患者が 30⼈以上いる確率はどれくらいか。」という問題を考え、その確率を求めるプログラムを実行した。まず、(4)-1と同様に、表計算ソフトを用いて、この問題の確率分布の理論式から位置の確率分布を求めた。ここで、求めた値は患者数が$0~29$人の時までである。その結果を@fig:binomial_theory に示す。

  #figure(
  image("../figs/patients_theo.png", width: 90%),
  caption: [課題(4)-2: 二項分布の理論値],
  ) <fig:binomial_theory>


  次に、試行回数を$100$、$1,000$、$1$万、$10$万、$100$万、$1,000$万、$1$億回としてプログラムを実行し、その時の確率を計算し、その確率の値をグラフにプロットした。ここでも求めた値は患者数が$0~29$人の時までである。また、プログラム上で、患者数の期待値を計算させた。まず、期待値の計算結果を@tab:binomial_expectation に示す。この表から、試行回数が増えるにつれて、期待値が理論値である$25 (500 times 0.05)$に収束していることがわかる。
  次に、確率の値をグラフにプロットした結果を@fig:binomial に示す。この時、試行回数が$1$億回の時の確率の値を用いた。そして、理論値と実験値の比較を@fig:binomial_comp に示す。@fig:binomial_comp から、理論値と実験値のプロットが、確率が小さいところ(患者数が$15$以下)ではほぼ完全に重なっており、確率が大きいところでは、理論値と実験値のプロットが少しのズレがあるが、ほぼ一致していることがわかる。

#figure(
caption: [課題(4)-2: 二項分布の期待値の計算結果],
table(
columns: 3,
stroke: (none),
table.header(
[試行回数],[期待値],[期待値の絶対誤差] 
),
table.hline(),
[100], [24.400], [0.600],
[1,000], [24.880], [0.120],
[$1$万], [24.989], [0.011],
[$10$万], [24.979], [0.021],
[$100$万], [24.993], [0.007],
[$1,000$万], [24.998], [0.002],
[$1$億], [25.000], [0.000],
table.hline(),
)
) <tab:binomial_expectation>


#figure(
image("../figs/patients_exp.png", width: 90%),
caption: [課題(4)-2: 二項分布の実験値],
) <fig:binomial>

#figure(
image("../figs/patients_comp.png", width: 90%),
caption: [課題(4)-2: 二項分布の理論値と実験値の比較],
) <fig:binomial_comp>

  




