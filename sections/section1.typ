= 1. 目的

  レーザ光源とスリットを用いて、光の干渉、回折現象を観察する。そしてその結果を理論値と比較することで、現象の理解を図る。また、数値計算ソフトウェアOctaveを用いて様々なスリットにおける光の干渉、回折現象をシミュレーションする。

= 2. 実験原理

  光の干渉、回折現象は、光の波動性によって生じる現象である。波において、2つ以上の波が一点で重なる時、その点での光の振幅は、個々の波が足し合わされた振幅になる現象が干渉である。ただし光が干渉するには、2つの波の波長が等しく、位相差が一定に保たれており、少なくともある時間は振幅一定の合成振動をする場合にのみ干渉するという特徴がある。それに対し、障害物等がある際に、波が直進せずにその障害物の幾何学的影の部分に回り込むような動きをする現象が回折である。
  
  次に@fig:theory のような状況を考える。光源Qからでた光で、半径$1$のところの光を$A = A_0 sin omega t$とすると、光源から距離$a$離れた波面Eでは、

  $ A = A_0 / a sin(omega t - (2 pi) / lambda a) $

  となる。次に、PM間の距離を$r$とすると、Pから出た光のMにおける振幅は、

  $ A = alpha / r A_0 / a sin[omega t - (2 pi) / lambda ( a + r )] $

  ここで、$alpha$は光の方向によって変わるが、ここでは、$alpha = 1$とする。そして、干渉を考えた際の$M$における振幅は、

  $ A(M) = integral_E A_0 / (a r) sin[omega t - (2 pi) / lambda (a + r)] d e $

  となる。スリットの幅が小さいことを考えると、$A_0/(a r) tilde.eq A_0 / (a b)$となる。また、振幅の比のみを今後考えるために、$A_0/a b = 1$とする。ここで、@fig:theory の状況を2次元として考える。P、Mの座標をそれぞれ$(xi, -b + zeta)$、$(x, 0)$とすると、

  $ r = sqrt((x - xi)^2 + (b - zeta)^2) $

  となり、波面E上の座標の式は、

  $ xi^2 + (a + zeta)^2 = a^2 $

  とすると、最終的に$r$は、

  $ r = sqrt(x^2 + b^2 - 2(a + b)zeta - 2 x xi) $ <eq:r>

  となる。ここで、$zeta$が十分小さいとき、$(5)$式より$zeta = - xi^2 / 2a$となるため、これを踏まえて式@eq:r をテイラー展開すると、

  $ r = b(1 + x^2 / (2 b^2)) - ((x xi)/b - (a + b) / (2 a b) xi^2) + dots = overline(epsilon) + epsilon(xi) $ <eq:r2>

  となる。これを用いると、$A(M)$は、

  $ A(M) &= integral_E sin[omega t - (2 pi) / lambda (a + overline(epsilon) + epsilon(xi))] d e \
  &= C dot sin[omega t - (2 pi) / lambda (a + overline(epsilon))] + S dot cos[omega t - (2 pi) / lambda (a + overline(epsilon))] \

  C &= integral_E cos (2 pi)/lambda ((x xi) / b - (a + b) / (2 a b) xi^2) d e \
  S &= integral_E sin (2 pi)/lambda ((x xi) / b - (a + b) / (2 a b) xi^2) d e 
  $ <eq:AM>

  となり、光強度は$|A(M)|^2 = C^2 + S^2$となる
  次に、@fig:theory2 のような状況を考える。この場合は、E'面の積分を考えれば良い。PをE'上にとった時、波面E'の式は$xi^2 + (b-zeta)^2 = b^2$となり、PM間の距離を$r'$とすると、$r' = sqrt((x - xi)^2 + (b - zeta)^2)$となるため、

  $
  a + r &= a + b + r - b =  a + b + sqrt((x - xi)^2 + (b - zeta)^2) - b \
   &tilde.eq (a + b + x^2/(2b)) - (x xi) / b
  $

  となる。$epsilon = (2 pi)/lambda dot (x xi) / b = k x xi$と置けるので、式@eq:AM は、

  $
  C = integral_E cos k x xi d e \
  S = integral_E sin k x xi d e \
  C + i S = integral_E exp(i k x xi) d e
  $ <eq:AM2>

  となる。よって、式@eq:AM2 と、$|A(M)|^2 = C^2 + S^2$より、回折像が開口部Sのフーリエ変換になることがわかる。

  #figure(
  image("/figs/theory_fourie.png", width: 90%),
  caption: [光源Qの回折像(参照: @text2024b2)]
  ) <fig:theory>

  #figure(
  image("/figs/theory_fourie2.png", width: 90%),
  caption: [光源Qのフラウンホーファー回折像(参照: @text2024b2)]
  ) <fig:theory2>
