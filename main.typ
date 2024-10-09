// MIT No Attribution
// Copyright 2024 Shunsuke Kimura

#import "libs/rsj-conf/lib.typ": rsj-conf
#show: rsj-conf.with(
//   // title: [Typst を使った国内学会論文の書き方 \ - 国内学会予稿集に似せたフォーマットの作成 - ], 
//   // authors: [◯ 著者姓1 著者名1，著者姓2 著者名2(○○○大学)，著者姓3 著者名3 (□□□株式会社)],
//   // abstract: [#lorem(80)],
  bibliography: bibliography("refs.bib", full: false),
)

#import "@preview/sourcerer:0.2.1": code
// URL リンクにアンダーラインを入れる
// #show link: underline




#include "sections/section1.typ"
#include "sections/section2.typ"
#include "sections/section3.typ"