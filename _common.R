# example R options set globally
options(width = 60)
options(bookdown.render.file_scope = FALSE)
# example chunk options set globally
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  echo = TRUE
  )
knitr::opts_chunk$set(out.height = "\\textheight",  out.width = "\\textwidth",
                      out.extra = "keepaspectratio=true")
knitr::opts_chunk$set(fig.margin = TRUE)
include_svg = function(path) {
  if (knitr::is_latex_output()) {
    output = xfun::with_ext(path, 'pdf')
    # you can compare the timestamp of pdf against svg to avoid conversion if necessary
    system2('rsvg-convert', c('-f', 'pdf', '-a', '-o', shQuote(c(output, path))))
  } else {
    output = path
  }
  knitr::include_graphics(output)
}
celsius_to_kelvin = function(celsius) {
  celsius + 2.7315e2
}
SPECIFIC_HEAT_CAPACITY_OF_WATER <- 4.0939e3
HEAT_OF_FUSION_OF_ICE <- 3.335E5
TEMPERATURE_OF_FUSION_OF_ICE <- 2.7315E2
