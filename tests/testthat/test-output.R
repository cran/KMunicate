KM <- survival::survfit(survival::Surv(rectime, censrec) ~ hormon, data = brcancer)
time_scale <- seq(0, max(brcancer$rectime), by = 365)

testthat::test_that("Output is a ggplot — multiple arms", {
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale), class = "gg")
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale), class = "ggplot")
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .alpha = 0.5), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .xlab = "New lab who dis?"), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .rel_heights = c(1, 1, 1)), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .theme = ggplot2::theme_bw()), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .reverse = TRUE), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .ff = "Courier"), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .color_scale = ggplot2::scale_color_discrete()), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .fill_scale = ggplot2::scale_fill_discrete()), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .linetype_scale = ggplot2::scale_linetype_discrete()), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .annotate = ggplot2::annotate(geom = "text", x = 100, y = 0.5, label = "Text")), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .risk_table = "KMunicate"), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .risk_table = "survfit"), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .risk_table = NULL), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .size = 3), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .legend_position = c(0.5, 0.5)), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .legend_position = "none"), class = c("gg", "ggplot"))
})

KM <- survival::survfit(survival::Surv(rectime, censrec) ~ 1, data = brcancer)
time_scale <- seq(0, max(brcancer$rectime), by = 365)

testthat::test_that("Output is a ggplot — single arms", {
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale), class = "gg")
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale), class = "ggplot")
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .alpha = 0.5), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .xlab = "New lab who dis?"), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .rel_heights = c(1, 1, 1)), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .theme = ggplot2::theme_bw()), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .reverse = TRUE), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .ff = "Courier"), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .color_scale = ggplot2::scale_color_discrete()), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .fill_scale = ggplot2::scale_fill_discrete()), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .linetype_scale = ggplot2::scale_linetype_discrete()), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .annotate = ggplot2::annotate(geom = "text", x = 100, y = 0.5, label = "Text")), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .risk_table = "KMunicate"), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .risk_table = "survfit"), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .risk_table = NULL), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .size = 3), class = c("gg", "ggplot"))

  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .legend_position = c(0.5, 0.5)), class = c("gg", "ggplot"))
  testthat::expect_s3_class(object = KMunicate(fit = KM, time_scale = time_scale, .legend_position = "none"), class = c("gg", "ggplot"))
})
