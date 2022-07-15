---
title: Exam title
course:
  short: Short course name
  long: Long course name
date: Date / deadline
answers: false # set to true to show answers
# include-in-header:
#   text: |
#     \renewcommand{\solutiontitle}{\noindent\textbf{Solution:}\par\noindent}
#     \pointsinrightmargin
#     \qformat{\textbf{Question \thequestion}\quad (\totalpoints\ \points)\hfill}
# classoption: twoside,american,french,addpoints,most,usenames,dvipsnames,answers

---

_q{2} This is the first question.

:::solution
Solution to the first question.
:::

_q This is the second question.

:::parts
_p{1} This question has parts!

::: solution
And parts can have solutions too.
:::

_p{2} Multiple parts are possible.

::: solution
And each one gets a solution!
:::

<!-- don't forget to close the :::parts -->

:::
