// タイトル

#align(center, text(18pt, "量子コンピューティング アニーリング レポート")) \

#align(right, text(12pt, "62217149 福原博樹"))

// = [A1-1]

//   $ E(s_1,s_2) = -J_(1,2) s_1 s_2 - h_1 s_1 - h_2 s_2, space s_i in {-1, 1} \
//     E_("QUBO") = a_1 x_1 + a_2 x_2 + b_(1,2) x_1 x_2 + "const", space x in {0, 1} \
//     x_i = (1 - s_i) / 2, space <=> space s_i = 1 - 2 x_i \ $
//   $ E(x_1,x_2) &= -J_(1,2) (1 - 2 x_1) (1 - 2 x_2) - h_1 (1 - 2 x_1) - h_2 (1 - 2 x_2) \
//     &= 2(J_(1,2) + h_1) x_1 + 2(J_(1,2) + h_2) x_2 - 4 J_(1,2) x_1 x_2 + "const" \
//     therefore a_1 &= 2(J_(1,2) + h_1), space a_2 = 2(J_(1,2) + h_2), space b_(1,2) = -4 J_(1,2) \ $

= [A2-2] 問題: 数独

