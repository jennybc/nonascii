
# nonascii

<!-- badges: start -->
<!-- badges: end -->

The goal of nonascii is to run some experiments with `R CMD check` and package data that contains non-ASCII strings.

`R CMD build` followed by `R CMD check` shows:

```
* checking data for non-ASCII characters ... NOTE
  Note: found 352 marked UTF-8 strings
```

To be clear, this is one of those `NOTE`s that you can actually ignore, i.e. it's not a sign of something that needs to be fixed.

By default, `devtools::check()` does not show the note, because the default is `cran = TRUE`, which triggers `--as-cran`, which (ironically) suppresses this note.

You can surface it with:

``` r
check(cran = FALSE, env_vars = c("_R_CHECK_PACKAGE_DATASETS_SUPPRESS_NOTES_" = "false"))
```

Good place to read more in the R source:

<https://github.com/wch/r-source/blob/f6737799b169710006b040f72f9abc5e09180229/src/library/tools/R/QC.R#L4672>
