# R/grigspal.R
# Necessary packages
library(ggplot2)
library(ggthemes)
library(scales)

# Custom theme for my previews
theme_Publication <- function(base_size=14, base_family="helvetica") {
  if (!requireNamespace("ggthemes", quietly = TRUE)) {
    stop("Package 'ggthemes' is required but is not installed. Please install it.")
  }
  if (!requireNamespace("grid", quietly = TRUE)) {
    stop("Package 'grid' is required but is not installed. Please install it.")
  }

  ggthemes::theme_foundation(base_size=base_size, base_family=base_family) +
  theme(plot.title = element_text(face = "bold",
                                    size = rel(1.2), hjust = 0.5),
          text = element_text(),
          panel.background = element_rect(colour = NA),
          plot.background = element_rect(colour = NA),
          panel.border = element_rect(colour = NA),
          axis.title = element_text(face = "bold",size = rel(1)),
          axis.title.y = element_text(angle=90,vjust =2),
          axis.title.x = element_text(vjust = -0.2),
          axis.text = element_text(),
          axis.line = element_line(colour="black"),
          axis.ticks = element_line(),
          panel.grid.major = element_line(colour="#f0f0f0"),
          panel.grid.minor = element_blank(),
          legend.key = element_rect(colour = NA),
          legend.position = "bottom",
          legend.direction = "horizontal",
          legend.key.size= unit(0.2, "cm"),
          legend.margin = margin(0, 0, 0, 0),
          legend.title = element_text(face="italic"),
          plot.margin=unit(c(10,5,5,5),"mm"),
          strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
          strip.text = element_text(face="bold")
  )

}

#' Get a color palette
#'
#' Retrieves a color palette by name.
#'
#' @param palette_name A character string specifying the name of the palette.
#' @return A vector of colors corresponding to the specified palette.
#' @export
get_palette <- function(palette_name) {
  palettes <- list(
    bnw = c("#000000","#ffffff"),
    monochrome_binary = c("#000000","#f5f5f5"),
    monochrome_binary2 = c("#3d3d3d","#efefef"),
    redvsblue = c("#ab4b52","#3199d7"),
    redvsblue2 = c("#9d2933","#23284f"),
    redvsblue3 = c("#9f0000","#00009f"),
    simpletwo = c("#009e9e","#009e00"),
    simpletwo2 = c("#9e004f","#009e9e"),
    simpletwo3 = c("#009e00","#9e004f"),
    simpletwo4 = c("#944914","#149449"),
    simpletwo5 = c("#941445","#149463"),
    simpletwo6 = c("#231494","#859414"),
    simpletwo7 = c("#1d1f6e","#6e1d1f"),
    simpletwo8 = c("#6e1d1f","#005700"),
    blueberries = c("#766ec8","#891446"),
    greengold = c("#3a6960","#b78727"),
    salmonandbroccoli = c("#D95030","#089a7c"),
    lavendercinnamon = c("#b784a7","#cda67a"),
    bearandhoney = c("#826644","#e49e00"),
    buckeyes = c("#a6a9a8","#A42A2E"),
    weirdtrees = c("#86a339","#c89c5c"),
    weirdtrees2 = c("#627051","#6a4c2a"),
    twoblue = c("#94ccde","#1b457e"),
    twoblue2 = c("#0d2b52","#5172b5"),
    seashell = c("#e7d0ca","#2e454b"),
    goldandblue = c("#ff9505","#003366"),
    woody = c("#703e3f", "#9a4204"),
    woody2 = c("#8c4736", "#2d1818"),
    bnw_three = c("#000000","#666666","#ffffff"),
    monochrome_trio = c("#3d3d3d", "#898989", "#d5d5d5"),
    monochrome_trio2 = c("#222222", "#6e6e6e", "#d4d4d4"),
    monochrome_trio3 = c("#080808", "#545454", "#a0a0a0"),
    simple = c("#4bb446", "#464bb4", "#b4464b"),
    simple2 = c("#af46b4", "#b4af46", "#46b4af"),
    simple3 = c("#b47846", "#46b478", "#7846b4"),
    simple4 = c("#009f9f", "#9f009f", "#9f9f00"),
    simple5 = c("#9e004f", "#4f9e00", "#004f9e"),
    simple6 = c("#944914","#149449", "#491494"),
    guinea = c("#00755e", "#fbab00", "#9d2933"),
    drab = c("#46623a", "#c89c5c", "#844524"),
    waterandsand = c("#2099ae", "#c19d95", "#322b4f"),
    lake = c("#f9cf65", "#729165", "#705a79"),
    royalty = c("#d998a0", "#b784a7", "#641939"),
    pickle = c("#af9c25", "#176917", "#545412"),
    beachwood = c("#e4a863", "#0052a3", "#603b2a"),
    trout = c("#e57e60", "#f6d58f", "#363f2e"),
    bass = c("#758a4e", "#f2e4b5", "#c26767"),
    rby = c("#c9352d", "#254485", "#e49e00"),
    sundown = c("#df4234", "#264641", "#627948"),
    bnw_four = c("#000000","#666666","#b3b3b3","#ffffff"),
    monochrome_quad = c("#3a3a3a", "#6d6d6d", "#b9b9b9", "#ececec"),
    simplefour = c("#009f9f", "#4f009f", "#9f0000", "#4f9f00"),
    simplefour2 = c("#9e004f", "#9e9e00", "#009e4f", "#00009e"),
    fourscore = c("#e84c45", "#e1bd27", "#346f64", "#c97300"),
    basicfour = c("#c4342d", "#22325e", "#895b8d", "#f5bd1f"),
    drabfour = c("#f8d061", "#b5b35c", "#9e473c", "#1e5281"),
    strangefour = c("#f2e4b5", "#475c46", "#b5423c", "#b4aa50"),
    vibrantfour = c("#3f4bbc", "#f5bd1f", "#14644d", "#ebc600"),
    fishyfour = c("#f6e4b9", "#992900", "#616100", "#006100"),
    lightfour = c("#94b9d6", "#b9e4cc", "#ff6127", "#f1e895"),
    seafoamfour = c("#38568f", "#008059", "#f1e895", "#bbef99"),
    freakyfour = c("#e03d00", "#30c54e", "#ffd700", "#004d1f"),
    palekingfour = c("#b9d1e4", "#c77074", "#a98700", "#00c4c7"),
    michiganfour = c("#ebc600", "#5200eb", "#f5f500", "#001466"),
    midwestwoodsfour = c("#af5718", "#616100", "#ebc600", "#000099"),
    blorangefour = c("#005166", "#eb9800", "#f5ce00", "#2e004d"),
    basicbundle = c("#bd0000","#bd005e","#005ebd","#00bdbd","#00bd5e","#bd5e00",
                    "#00bd00","#0000bd","#bdbd00","#bd00bd","#f00000","#8a0000",
                    "#ff2424","#570000","#ff5757","#240000","#ff8a8a","#000000"),
    basicbundle2 = c("#f59e00","#f52300","#2500f5","#0057f5","#00d0f5","#d1f500",
                     "#00f59e","#9e00f5","#57f500","#f50057","#ffb329","#c27d00",
                     "#ffc55c","#8f5c00","#ffd78f","#5c3b00","#ffe9c2","#291a00"),
    basicbundle3 = c("#008000","#408000","#800040","#800080","#400080","#008040",
                     "#000080","#800000","#008080","#808000","#00b300","#004d00"),
    basicbundle4 = c("#4682b4","#46b4af","#b4ae46","#b47846","#b4464b","#464bb4",
                     "#b44682","#82b446","#7846b4","#46b478","#689bc4","#38678f"),
    basicbundle5 = c("#82b446","#b4af46","#ae46b4","#7846b4","#464bb4","#4bb446",
                     "#4682b4","#b44682","#46b478","#b47846","#9bc468","#678f38"),
    basicbundle6 = c("#4682b4","#46b4af","#b4ae46","#b47846","#b4464b","#464bb4",
                     "#b44682","#82b446","#7846b4","#46b478","#689bc4","#38678f"),
    basicbundle7 = c("#b4464b","#b44682","#4682b4","#46b4af","#46b477","#b47846",
                     "#4bb446","#464bb4","#b4af46","#af46b4","#c4686d","#8f383c"),
    basicbundle8 = c("#4bb446","#82b446","#b44682","#af46b4","#7746b4","#46b478",
                     "#464bb4","#b4464b","#46b4af","#b4af46","#6dc468","#3c8f38")
  )
  # palette_name = name of the palette
  if (is.null(palettes[[palette_name]])) {
    warning(paste("Palette", palette_name, "not found. Returning default palette."))
    return(c("#000000", "#FFFFFF")) # Making black and white the default here
  }

  return(palettes[[palette_name]])
}

#' Peek at a Color Palette
#'
#' Displays a preview of a color palette with a specified number of colors.
#'
#' @param palette_name A character string specifying the name of the palette to preview.
#' @param num_colors An integer specifying the number of colors to display from the palette.
#' @return A plot showing the specified number of colors from the palette.
#' @export
palette_peek <- function(num_colors) {
  palettes <- list(
    bnw = c("#000000","#ffffff"),
    monochrome_binary = c("#000000","#f5f5f5"),
    monochrome_binary2 = c("#3d3d3d","#efefef"),
    redvsblue = c("#ab4b52","#3199d7"),
    redvsblue2 = c("#9d2933","#23284f"),
    redvsblue3 = c("#9f0000","#00009f"),
    simpletwo = c("#009e9e","#009e00"),
    simpletwo2 = c("#9e004f","#009e9e"),
    simpletwo3 = c("#009e00","#9e004f"),
    simpletwo4 = c("#944914","#149449"),
    simpletwo5 = c("#941445","#149463"),
    simpletwo6 = c("#231494","#859414"),
    simpletwo7 = c("#1d1f6e","#6e1d1f"),
    simpletwo8 = c("#6e1d1f","#005700"),
    blueberries = c("#766ec8","#891446"),
    greengold = c("#3a6960","#b78727"),
    salmonandbroccoli = c("#D95030","#089a7c"),
    lavendercinnamon = c("#b784a7","#cda67a"),
    bearandhoney = c("#826644","#e49e00"),
    buckeyes = c("#a6a9a8","#A42A2E"),
    weirdtrees = c("#86a339","#c89c5c"),
    weirdtrees2 = c("#627051","#6a4c2a"),
    twoblue = c("#94ccde","#1b457e"),
    twoblue2 = c("#0d2b52","#5172b5"),
    seashell = c("#e7d0ca","#2e454b"),
    goldandblue = c("#ff9505","#003366"),
    woody = c("#703e3f", "#9a4204"),
    woody2 = c("#8c4736", "#2d1818"),
    bnw_three = c("#000000","#666666","#ffffff"),
    monochrome_trio = c("#3d3d3d", "#898989", "#d5d5d5"),
    monochrome_trio2 = c("#222222", "#6e6e6e", "#d4d4d4"),
    monochrome_trio3 = c("#080808", "#545454", "#a0a0a0"),
    simple = c("#4bb446", "#464bb4", "#b4464b"),
    simple2 = c("#af46b4", "#b4af46", "#46b4af"),
    simple3 = c("#b47846", "#46b478", "#7846b4"),
    simple4 = c("#009f9f", "#9f009f", "#9f9f00"),
    simple5 = c("#9e004f", "#4f9e00", "#004f9e"),
    simple6 = c("#944914","#149449", "#491494"),
    guinea = c("#00755e", "#fbab00", "#9d2933"),
    drab = c("#46623a", "#c89c5c", "#844524"),
    waterandsand = c("#2099ae", "#c19d95", "#322b4f"),
    lake = c("#f9cf65", "#729165", "#705a79"),
    royalty = c("#d998a0", "#b784a7", "#641939"),
    pickle = c("#af9c25", "#176917", "#545412"),
    beachwood = c("#e4a863", "#0052a3", "#603b2a"),
    trout = c("#e57e60", "#f6d58f", "#363f2e"),
    bass = c("#758a4e", "#f2e4b5", "#c26767"),
    rby = c("#c9352d", "#254485", "#e49e00"),
    sundown = c("#df4234", "#264641", "#627948"),
    bnw_four = c("#000000","#666666","#b3b3b3","#ffffff"),
    monochrome_quad = c("#3a3a3a", "#6d6d6d", "#b9b9b9", "#ececec"),
    simplefour = c("#009f9f", "#4f009f", "#9f0000", "#4f9f00"),
    simplefour2 = c("#9e004f", "#9e9e00", "#009e4f", "#00009e"),
    fourscore = c("#e84c45", "#e1bd27", "#346f64", "#c97300"),
    basicfour = c("#c4342d", "#22325e", "#895b8d", "#f5bd1f"),
    drabfour = c("#f8d061", "#b5b35c", "#9e473c", "#1e5281"),
    strangefour = c("#f2e4b5", "#475c46", "#b5423c", "#b4aa50"),
    vibrantfour = c("#3f4bbc", "#f5bd1f", "#14644d", "#ebc600"),
    fishyfour = c("#f6e4b9", "#992900", "#616100", "#006100"),
    lightfour = c("#94b9d6", "#b9e4cc", "#ff6127", "#f1e895"),
    seafoamfour = c("#38568f", "#008059", "#f1e895", "#bbef99"),
    freakyfour = c("#e03d00", "#30c54e", "#ffd700", "#004d1f"),
    palekingfour = c("#b9d1e4", "#c77074", "#a98700", "#00c4c7"),
    michiganfour = c("#ebc600", "#5200eb", "#f5f500", "#001466"),
    midwestwoodsfour = c("#af5718", "#616100", "#ebc600", "#000099"),
    blorangefour = c("#005166", "#eb9800", "#f5ce00", "#2e004d"),
    basicbundle = c("#bd0000","#bd005e","#005ebd","#00bdbd","#00bd5e","#bd5e00",
                    "#00bd00","#0000bd","#bdbd00","#bd00bd","#f00000","#8a0000",
                    "#ff2424","#570000","#ff5757","#240000","#ff8a8a","#000000"),
    basicbundle2 = c("#f59e00","#f52300","#2500f5","#0057f5","#00d0f5","#d1f500",
                     "#00f59e","#9e00f5","#57f500","#f50057","#ffb329","#c27d00",
                     "#ffc55c","#8f5c00","#ffd78f","#5c3b00","#ffe9c2","#291a00"),
    basicbundle3 = c("#008000","#408000","#800040","#800080","#400080","#008040",
                     "#000080","#800000","#008080","#808000","#00b300","#004d00"),
    basicbundle4 = c("#4682b4","#46b4af","#b4ae46","#b47846","#b4464b","#464bb4",
                     "#b44682","#82b446","#7846b4","#46b478","#689bc4","#38678f"),
    basicbundle5 = c("#82b446","#b4af46","#ae46b4","#7846b4","#464bb4","#4bb446",
                     "#4682b4","#b44682","#46b478","#b47846","#9bc468","#678f38"),
    basicbundle6 = c("#4682b4","#46b4af","#b4ae46","#b47846","#b4464b","#464bb4",
                     "#b44682","#82b446","#7846b4","#46b478","#689bc4","#38678f"),
    basicbundle7 = c("#b4464b","#b44682","#4682b4","#46b4af","#46b477","#b47846",
                     "#4bb446","#464bb4","#b4af46","#af46b4","#c4686d","#8f383c"),
    basicbundle8 = c("#4bb446","#82b446","#b44682","#af46b4","#7746b4","#46b478",
                     "#464bb4","#b4464b","#46b4af","#b4af46","#6dc468","#3c8f38")
  )

  available_palettes <- lapply(palettes, length)
  # ' num_colors = the number of colors in a palette
  if (num_colors %in% available_palettes) {
    selected_palettes <- palettes[available_palettes == num_colors]
  } else {
    larger_palettes <- palettes[available_palettes >= num_colors]
    if (length(larger_palettes) == 0) {
      warning("No palette with at least that many colors found.")
      return(NULL)
    }
    selected_palettes <- lapply(larger_palettes, function(palette) palette[1:num_colors])
  }

  palette_df <- do.call(rbind, lapply(names(selected_palettes), function(palette_name) {
    colors <- selected_palettes[[palette_name]]
    data.frame(
      palette_name = rep(palette_name, length(colors)),
      color = colors,
      position = seq_along(colors)
    )
  }))

  palette_df$palette_name <- factor(palette_df$palette_name, levels = unique(palette_df$palette_name))

  ggplot(palette_df, aes(x = position, y = palette_name, fill = color)) +
    geom_tile(color = NA, width = 1, height = 1) +
    scale_fill_identity() +
    theme_Publication() +
    labs(x = "", y = "", title = paste("Color Palettes with", num_colors, "Colors")) +
    theme(
      axis.text.y = element_text(size = 10),
      axis.text.x = element_blank(),
      axis.ticks.x = element_blank(),
      panel.grid = element_blank(),
      plot.margin = margin(0, 0, 0, 0),
      legend.position = "none"
    )
}

### Examples!
# colors <- get_palette("redvsblue")

# palette_peek(2)  # Displays palettes with 2 colors
# palette_peek(3)  # Displays palettes with 3 colors
# palette_peek(9) # Displays palettes with at least 9 colors!!!
