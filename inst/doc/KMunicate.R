## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  out.width = "75%",
  fig.align = "center",
  dpi = 200
)

## -----------------------------------------------------------------------------
data("brcancer", package = "KMunicate")
str(brcancer)

## ----setup--------------------------------------------------------------------
library(KMunicate)

## ----fit----------------------------------------------------------------------
fit <- survfit(Surv(rectime, censrec) ~ 1, data = brcancer)
fit

## ----time_scale---------------------------------------------------------------
ts <- seq(0, max(brcancer$rectime), length.out = 5)
ts

## ----p1, fig.height = 6, fig.width = 6----------------------------------------
KMunicate(fit = fit, time_scale = ts)

## ----fit2---------------------------------------------------------------------
fit2 <- survfit(Surv(rectime, censrec) ~ hormon, data = brcancer)
fit2

## ----p2, fig.height = 6 * sqrt(2), fig.width = 6------------------------------
KMunicate(fit = fit2, time_scale = ts)

## ----p3, fig.height = 6 * sqrt(2), fig.width = 6------------------------------
KMunicate(fit = fit2, time_scale = ts, .theme = ggplot2::theme_minimal())

## ----p4, fig.height = 6 * sqrt(2), fig.width = 6------------------------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .color_scale = ggplot2::scale_color_brewer(type = "qual", palette = "Set2"),
  .fill_scale = ggplot2::scale_fill_brewer(type = "qual", palette = "Set2")
)

## ----p5, fig.height = 6 * sqrt(2), fig.width = 6------------------------------
KMunicate(fit = fit2, time_scale = ts, .alpha = 0.1)

## ----p6, fig.height = 6 * sqrt(2), fig.width = 6------------------------------
KMunicate(fit = fit2, time_scale = ts, .xlab = "New Label (Time in Days, Actually)")

## ----p7, fig.height = 6 * sqrt(2), fig.width = 6------------------------------
KMunicate(fit = fit2, time_scale = ts, .rel_heights = c(1, 1, 1))

## ----better-plot, fig.height = 6 * sqrt(2), fig.width = 6---------------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .theme = ggplot2::theme_minimal(),
  .xlab = "Time (in days)",
  .color_scale = ggplot2::scale_color_brewer(type = "qual", palette = "Set2"),
  .fill_scale = ggplot2::scale_fill_brewer(type = "qual", palette = "Set2")
)

## ----size, fig.height = 6 * sqrt(2), fig.width = 6----------------------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .size = 2
)

## ----linetype_scale, fig.height = 6 * sqrt(2), fig.width = 6------------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .linetype_scale = ggplot2::scale_linetype_manual(values = c("dotted", "dashed"))
)

## ----legend_position, fig.height = 6 * sqrt(2), fig.width = 6-----------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .reverse = TRUE,
  .legend_position = c(0, 1)
)

## ----legend_position_none, fig.height = 6 * sqrt(2), fig.width = 6------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .reverse = TRUE,
  .legend_position = "none"
)

## ----annotate, fig.height = 6 * sqrt(2), fig.width = 6------------------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .annotate = ggplot2::annotate(geom = "text", x = 365, y = 0.5, label = "Some annotation")
)

## ----labels, fig.height = 6 * sqrt(2), fig.width = 6--------------------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .xlab = "New Label, X Axis",
  .ylab = "New Label, Y Axis",
  .title = "New Title Who Dis"
)

