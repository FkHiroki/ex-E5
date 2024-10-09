\
\
\
\

= 3. 実験方法

== 3.1. レーザー光による回折強度パターン

  今回は、レーザ光を用いて、スリットの回折強度パターンを観察することを実際には行わず、与えられた実験データをImageJを用いて解析することで、スリットの幅や個数による回折強度パターンの変化を観察した。まず、与えられた実験データには、3種類の幅の単スリットを用いた時のスリット画像とスクリーン画像の計6枚、幅やスリット間隔を変えた3種類のダブルスリットを用いた時のスリット画像とスクリーンの計6枚である。まず、単スリットの場合は、ImageJを用いてスリットの幅を測定し、また、精密な目盛りを顕微鏡で撮影した画像を用いて、pixel単位をm単位に変換した。次に、ImageJによってスクリーン画像の光強度のグラフを得た。光強度のグラフから、強度パターンの周期を測定し、理論値と比較を行った。また、ダブルスリットの場合も同様に、スリット間隔を測定し、スリット画像の光強度のグラフを得た。光強度のグラフから、強度パターンの周期を測定し、理論値と比較を行った。

  ここで理論値の求め方について考える。単スリットの場合、スリットを表現する関数$f(x)$は、
  
  $ f(x) = 1 space (|x| < a), space 0 space (|x| > a/2) $ <eq:slit>

  と表し、$f(x)$の値を光の透過率とする。ここで、$a$はスリットの幅である。次に、ダブルスリットの場合、スリットを表現する関数$f(x)$は、

  $ f(x) = 1 space (|x| < x_0 plus.minus a), space 0 space ("otherwise") $ <eq:double_slit>

  と表せる。実験原理で述べたように、スクリーン上にはスリットのフーリエ変換が現れる。単スリットの場合のフーリエ変換は式@eq:AM2 より、

  $ F(k) &= integral_(-infinity)^infinity f(x) e^(-i k x xi) d x \
    &= integral_(-a)^a e^(-i k x xi ) d x \
    &= - 1 / (i k xi) (e^(i k a xi) - e^(-i k a xi)) \
    &= 2 a dot sinc(a k xi) \
    &= 2 a dot sinc( (2 pi a) / (lambda b) xi ) $ <eq:slit_ft>

  となる。ここで、sinc関数は、$sinc(x) = sin(x) / x$である。また、ダブルスリットの場合のフーリエ変換は、式@eq:AM2 より、

  $ F(k) &= integral_(-infinity)^infinity f(x) e^(-i k x xi) d x \
    &= integral_(-x_0 - a)^(-x_0 + a) e^(-i k x xi ) d x + integral_(x_0 - a)^(x_0 + a) e^(-i k x xi ) d x \
    &= 2 a dot sinc(a k xi) e^(-i k x_0 xi) + 2 a dot sinc(a k xi) e^(i k x_0 xi) \
    &= 4 a dot sinc(a k xi) cos(k x_0 xi) \
    &= 4 a dot sinc( (2 pi a) / (lambda b) xi ) cos( (2 pi x_0) / (lambda b) xi )
    $ <eq:double_slit_ft>

  となる。よって、光強度の強度パターンの周期は、sinc関数によるものは、$(lambda  b) / (2 a)$、cos関数によるものは、$(lambda b) / (2 x_0)$である。これを用いて、実験データと理論値を比較した。


== 3.2. 回折強度パターンのシミュレーション

  フリーの数値計算ソフトウェア レーザ光源とスリットを用いて、いくつかのスリットを作成して、光の回折強度パターン、スクリーンに映し出される回折像のシミュレーションを行った。まず、Octave上で単スリット（幅$0.1$）を作成し、その回折強度パターンを計算させ、回折強度を表すグラフと回折像を表示させた。次に、スリットの幅を$0.2$に変更し、同様に回折強度パターンを計算させ、回折強度を表すグラフと回折像を表示させた。また、ダブルスリットの場合は、幅$0.1$、2つのスリット間隔を$0.8$に設定し、同様に回折強度パターンを計算させ、回折強度を表すグラフと回折像を表示させた。また、スリット間隔を$1.8$に変更し、同様に回折強度パターンを計算させ、回折強度を表すグラフと回折像を表示させた。最後に、四角い形状のスリット、オリジナルのスリットを作成し、同様のシミュレーションを行った。


= 4. 実験結果

== 4.1. レーザー光による回折強度パターン

  まず、ImageJを用いて与えられたスクリーン画像の光強度グラフを得た。得られた光強度グラフを@fig:SS1_pattern、@fig:SS2_pattern、@fig:SS3_pattern、@fig:DS1_pattern、@fig:DS2_pattern、@fig:DS3_pattern に示す。
  まず、単スリットの場合、スリット幅が狭いほど、回折強度パターンの周期が狭くなることが確認でき、これは式@eq:slit_ft のsincの位相成分から考えられる結果と一致している。また、ダブルスリットの場合、@fig:DS1_pattern と@fig:DS2_pattern を比較すると、スリット幅が広いほど、回折強度パターンの周期が狭くなることが確認でき、また、@fig:DS2_pattern と@fig:DS3_pattern を比較すると、スリット間隔が広いほど、小さい山の周期が狭くなることが確認できる。これらは、式@eq:double_slit_ft のsincとcosの位相成分から考えられる結果と一致していることがわかる。


  #figure(
  image("/figs/SS1_pattern.png", width: 50%),
  caption: [スリット幅が１番狭い単スリットの回折強度パターン]
  ) <fig:SS1_pattern>

  #figure(
  image("/figs/SS2_pattern.png", width: 50%),
  caption: [スリット幅が２番目に狭い単スリットの回折強度パターン]
  ) <fig:SS2_pattern>

  #figure(
  image("/figs/SS3_pattern.png", width: 50%),
  caption: [スリット幅が一番広い単スリットの回折強度パターン]
  ) <fig:SS3_pattern>

  #figure(
  image("/figs/DS1_pattern.png", width: 50%),
  caption: [ダブルスリットの回折強度パターン]
  ) <fig:DS1_pattern>

  #figure(
  image("/figs/DS2_pattern.png", width: 50%),
  caption: [スリット幅が広いダブルスリットの回折強度パターン]
  ) <fig:DS2_pattern>

  #figure(
  image("/figs/DS3_pattern.png", width: 50%),
  caption: [スリット幅が広く、スリット間隔が広いダブルスリットの回折強度パターン]
  ) <fig:DS3_pattern>

  そして、これらの図から、ImageJを用いて強度パターンの周期を測定し、理論値と比較した。まず、pixelをm単位に変換するための定規と目盛りの計測値、また用いた光の波長$lambda$、開口とスクリーンの距離$b$を@tab:measure に示す。

  #figure(
  caption: [実験に使用した定規と目盛りの計測値、光の波長、開口とスクリーンの距離],
  table(
  columns: 7,
  stroke: (none),
  table.hline(),
  table.header(
  [],
  [定規 /pixel], [定規 /cm], [目盛り /pixel], [目盛り /mm], [$lambda$ /nm], [$b$ /cm]
  ),
  table.hline(),
  [計測値], [$322.0$], [$5.0$], [$87.0$], [$0.1$], [$632.8$], [$96.5$],
  table.hline(),
  )
  ) <tab:measure>
  
  
  
  @tab:measure の定規を用いて強度パターンの周期を、目盛りを用いてスリットの幅、間隔をそれぞれm単位に直した。次に実験に使用されたスリット画像をImageJを用いて解析し、スリットの幅を測定した。ここで、ダブルスリットの場合、スリット幅を2つ測定できるため、その平均をスリット幅の測定値とする。また、2つのスリットの間隔も計測した。それら測定値を@tab:slit_with に示す。

  #figure(
  caption: [スリットの幅とスリット間隔の測定値],
  table(
  columns: 10,
  stroke: (none),
  table.vline(x: 1, start: 1),
  table.vline(x: 7, start: 1),
  table.hline(),
  table.header(
  [],
  table.cell(colspan: 6, [スリットの幅 $2a$]),
  table.cell(colspan: 3, [スリットの間隔 $2x_0$]),
  ),
  table.hline(),
  [], [SS1], [SS2], [SS3], [DS1], [DS2], [DS3], [DS1], [DS2], [DS3],
  [長さ /pixel], [$39.1$], [$75.1$], [$112.2$], [$50.5$], [$71.0$], [$72$], [$179.2$], [$203.0$], [$404.0$],
  [長さ / µm], [$44.9$], [$86.3$], [$129$], [$58.1$], [$81.6$], [$82.7$], [$206$], [$233$], [$464$], 
  table.hline(),
  )
  ) <tab:slit_with>  
  
  次に、強度パターンの周期の測定結果を@tab:pattern に示す。

  #figure(
  caption: [強度パターンの周期の測定結果],
  table(
  columns: 10,
  stroke: (none),
  table.vline(x: 1, start: 1),
  table.vline(x: 7, start: 1),
  table.hline(),
  table.header(
  [],
  table.cell(colspan: 6, "sincの周期"),
  table.cell(colspan: 3, "cosの周期"),
  ),
  table.hline(),
  [], [SS1], [SS2], [SS3], [DS1], [DS2], [DS3], [DS1], [DS2], [DS3],
  [長さ /pixel], [$95.5$], [$44.8$], [$30.3$], [$67.1$], [$46.7$], [$48.3$], [$17.5$], [$15.3$], [$8.67$],
  [長さ /mm], [$14.8$], [$6.96$], [$4.70$], [$10.4$], [$7.25$], [$7.50$], [$2.72$], [$2.37$], [$1.35$], 
  table.hline(),
  )
  ) <tab:pattern>

  @tab:slit_with 、@tab:pattern の結果から、単スリットの場合、スリット幅が狭いほど、sincの周期が狭くなることが確認できた。ダブルスリットの場合もスリット幅が広いほど、回折強度パターンの周期が狭くなることが確認できる。また、スリット間隔が広いほど、cosの周期が狭くなることが確認できた。次に、これらの周期の実験値を理論値と比較した。

  最後に、@tab:measure 、@tab:slit_with 、@tab:pattern の測定値を用いて、強度パターンの実験値と理論値を比較した結果を@tab:compare に示す。

  #figure(
  caption: [強度パターンの実験値と理論値の比較],
  table(
  columns: 10,
  stroke: (none),
  table.vline(x: 1, start: 1),
  table.vline(x: 7, start: 1),
  table.hline(),
  table.header(
  [],
  table.cell(colspan: 6, "sincの周期"),
  table.cell(colspan: 3, "cosの周期"),
  ),
  table.hline(),
  [], [SS1], [SS2], [SS3], [DS1], [DS2], [DS3], [DS1], [DS2], [DS3],
  [実験値 /mm], [$14.8$], [$6.96$], [$4.70$], [$10.4$], [$7.25$], [$7.50$], [$2.72$], [$2.37$], [$1.35$], 
  [理論値 /mm], [$13.6$], [$7.07$], [$4.74$], [$10.5$], [$7.48$], [$7.38$], [$2.97$], [$2.62$], [$1.32$], 
  [相対誤差 /%], [$8.97$], [$1.68$], [$0.81$], [$0.90$], [$3.11$], [$1.61$], [$8.38$], [$9.54$], [$2.31$],
  table.hline(),
  )
  ) <tab:compare>
 
  @tab:compare の結果から、実験値と理論値の相対誤差はどれも$10 %$以下に収まったことが確認できる。

== 4.2. 回折強度パターンのシミュレーション

  まず単スリットの場合で、Octaveを用いて出力した、作成したスリット、光の回折強度を表すグラフ、回折像を@fig:slit、@fig:slit_wave、@fig:slit_screen、@fig:slit_0.2、@fig:slit_0.2_wave、@fig:slit_0.2_screen に示す。


  #figure(
  image("/figs/slit.png", width: 40%),
  caption: [単スリット（幅: 0.1）]
  ) <fig:slit>

  #figure(  
  image("/figs/slit_wave.png", width: 60%),
  caption: [単スリットの関数]
  ) <fig:slit_wave>

  #figure(
  image("/figs/slit_screen.png", width: 40%),
  caption: [単スリットのスクリーン]
  ) <fig:slit_screen>

  #figure(
    image("/figs/slit_0.2.png", width: 40%),
    caption: [単スリット（幅: 0.2）]
  ) <fig:slit_0.2>

  #figure(
    image("/figs/slit_0.2_wave.png", width: 60%),
    caption: [単スリットの関数（幅: 0.2）]
  ) <fig:slit_0.2_wave>

  #figure(
    image("/figs/slit_0.2_screen.png", width: 40%),
    caption: [単スリットのスクリーン（幅: 0.2）]
  ) <fig:slit_0.2_screen>

  これらの結果から、シミュレーション上でも、スリット幅が大きくなると、回折強度パターンの周期が狭くなることが確認できる。次に、ダブルスリットの場合で、スリット間隔を変えた場合の結果を@fig:double_slit、@fig:double_slit_wave、@fig:double_slit_screen、@fig:double_slit_1.8、@fig:double_slit_1.8_wave、@fig:double_slit_1.8_screen に示す。

  #figure(
    image("/figs/double_slit.png", width: 40%),
    caption: [ダブルスリット（幅: 0.1, 間隔: 0.8）]
  ) <fig:double_slit>

  #figure(
    image("/figs/double_slit_wave.png", width: 60%),
    caption: [ダブルスリットの関数（幅: 0.1, 間隔: 0.8）]
  ) <fig:double_slit_wave>

  #figure(
    image("/figs/double_slit_screen.png", width: 40%),
    caption: [ダブルスリットのスクリーン（幅: 0.1, 間隔: 0.8）]
  ) <fig:double_slit_screen>

  #figure(
    image("/figs/double_slit_1.8.png", width: 40%),
    caption: [ダブルスリット（幅: 0.1, 間隔: 1.8）]
  ) <fig:double_slit_1.8>

  #figure(
    image("/figs/double_slit_1.8_wave.png", width: 60%),
    caption: [ダブルスリットの関数（幅: 0.1, 間隔: 1.8）]
  ) <fig:double_slit_1.8_wave>

  #figure(
    image("/figs/double_slit_1.8_screen.png", width: 40%),
    caption: [ダブルスリットのスクリーン（幅: 0.1, 間隔: 1.8）]
  ) <fig:double_slit_1.8_screen>

  これらの結果から、シミュレーション上でも、スリット間隔が大きくなると、小さい山の周期が狭くなることが確認できる。最後に、四角い形状のスリット、オリジナルのスリットの場合の結果を@fig:square_slit、@fig:square_slit_wave、@fig:square_slit_screen、@fig:icon_slit、@fig:icon_slit_wave、@fig:icon_slit_screen に示す。

  #figure(
    image("/figs/square_slit.png", width: 40%),
    caption: [四角い形状のスリット（幅: 0.1）]
  ) <fig:square_slit>

  #figure(
    image("/figs/square_slit_wave.png", width: 60%),
    caption: [四角い形状のスリットの関数（幅: 0.1）]
  ) <fig:square_slit_wave>

  #figure(
    image("/figs/square_slit_screen.png", width: 40%),
    caption: [四角い形状のスリットのスクリーン（幅: 0.1）]
  ) <fig:square_slit_screen>

  #figure(
    image("/figs/icon_slit.png", width: 40%),
    caption: [オリジナルのスリット（絵文字）]
  ) <fig:icon_slit>

  #figure(
    image("/figs/icon_slit_wave.png", width: 60%),
    caption: [オリジナルのスリットの関数（絵文字）]
  ) <fig:icon_slit_wave>

  #figure(
    image("/figs/icon_slit_screen.png", width: 40%),
    caption: [オリジナルのスリットのスクリーン（絵文字）]
  ) <fig:icon_slit_screen>



