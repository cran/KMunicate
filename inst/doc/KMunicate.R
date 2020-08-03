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

## ----fonts, warning = FALSE, message = FALSE----------------------------------
library(extrafont)
# extrafont::font_import()
extrafont::loadfonts()

## ----p8, fig.height = 6 * sqrt(2), fig.width = 6------------------------------
KMunicate(fit = fit2, time_scale = ts, .ff = "Times New Roman")

## ----better-plot, fig.height = 6 * sqrt(2), fig.width = 6---------------------
KMunicate(
  fit = fit2,
  time_scale = ts,
  .theme = ggplot2::theme_minimal(base_family = "Roboto Condensed"),
  .xlab = "Time (in days)",
  .color_scale = ggplot2::scale_color_brewer(type = "qual", palette = "Set2"),
  .fill_scale = ggplot2::scale_fill_brewer(type = "qual", palette = "Set2"),
  .ff = "Roboto Condensed"
)

