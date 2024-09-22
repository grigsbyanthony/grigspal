# grigspal<a href="https://github.com/grigsbyanthony/grigspal"><img src="man/assets/sillygooplogo.png" align="right" height="100" /></a>
[![R Programming](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)](https://www.r-project.org/about.html)
[![R Programming](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white
)]([https://www.r-project.org/about.html](https://github.com/grigsbyanthony))

## ❓ Overview
[`grigspal`](#start) is an R library of quirky color palettes for data visualization in packages like ggplot2. It's effectively just a fun collection of color combinations I find make for visually interesting figures (bar plots, line plots, heatmaps, PCoA, etc.).

## 🔧 Installation
### ⚙️ Dependencies
``` r
# You'll want to make sure you have some of this packages depenencies installed if you don't already have them:
install.packages("ggplot2") # For plotting the palette previews
install.packages("ggthemes") # For the custom theme used in plottign the palette previews
```
### 🔗 Package retrieval
``` r
# You can get the most up-to-date version of this package using the following command:
devtools::install_git("https://github.com/grigsbyanthony/grigspal")
```
## 💻 Usage
You can pull the colors from a specific palette with the `get_palette()` function:
``` r
# To get and store the "redvsblue" palette
colors <- get_palette("redvsblue")
```
You can preview palettes by the total number of colors comprising the palette with the `palette_peek()` function:
``` r
# To look at palettes consisting of three (3) colors
palette_peek(3)
```
<img src="man/assets/3example.png" alt="An example of the ggplot2 output from `palette_peek(3)` when performed."/>

## 🎨 Palettes
Some examples of the palettes included in this package are:
### 📊 Two (2) colors

| Name                                                                                                                            | Palette                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `"bnw"`                      | <img src="man/assets/palette swatches/bnw.png" width="50%"/>                       |
| `"monochrome_binary"`                      | <img src="man/assets/palette swatches/monochrome_binary.png" width="50%"/>                       |
| `"monochrome_binary2"`                      | <img src="man/assets/palette swatches/monochrome_binary2.png" width="50%"/>                       |
| `"bearandhoney"`                      | <img src="man/assets/palette swatches/bearandhoney.png" width="50%"/>                       |
| `"blueberries"`                      | <img src="man/assets/palette swatches/blueberries.png" width="50%"/>                       |
| `"greengold"`                      | <img src="man/assets/palette swatches/greengold.png" width="50%"/>                       |
| `"lavendercinnamon"`                      | <img src="man/assets/palette swatches/lavendercinnamon.png" width="50%"/>                       |
| `"redvsblue"`                      | <img src="man/assets/palette swatches/redvsblue.png" width="50%"/>                       |
| `"redvsblue2"`                      | <img src="man/assets/palette swatches/redvsblue2.png" width="50%"/>                       |
| `"redvsblue3"`                      | <img src="man/assets/palette swatches/redvsblue3.png" width="50%"/>                       |
| `"salmonandbroccoli"`                      | <img src="man/assets/palette swatches/salmonandbroccoli.png" width="50%"/>                       |
| `"simpletwo"`                      | <img src="man/assets/palette swatches/simpletwo.png" width="50%"/>                       |
| `"simpletwo2"`                      | <img src="man/assets/palette swatches/simpletwo2.png" width="50%"/>                       |
| `"simpletwo3"`                      | <img src="man/assets/palette swatches/simpletwo3.png" width="50%"/>                       |
| `"simpletwo4"`                      | <img src="man/assets/palette swatches/simpletwo4.png" width="50%"/>                       |
| `"simpletwo5"`                      | <img src="man/assets/palette swatches/simpletwo5.png" width="50%"/>                       |
| `"simpletwo6"`                      | <img src="man/assets/palette swatches/simpletwo6.png" width="50%"/>                       |
| `"simpletwo7"`                      | <img src="man/assets/palette swatches/simpletwo7.png" width="50%"/>                       |
| `"simpletwo8"`                      | <img src="man/assets/palette swatches/simpletwo8.png" width="50%"/>                       |
| `"buckeyes"`                      | <img src="man/assets/palette swatches/buckeyes.png" width="50%"/>                       |
| `"goldandblue"`                      | <img src="man/assets/palette swatches/goldandblue.png" width="50%"/>                       |
| `"seashell"`                      | <img src="man/assets/palette swatches/seashell.png" width="50%"/>                       |
| `"twoblue"`                      | <img src="man/assets/palette swatches/twoblue.png" width="50%"/>                       |
| `"twoblue2"`                      | <img src="man/assets/palette swatches/twoblue2.png" width="50%"/>                       |
| `"weirdtrees"`                      | <img src="man/assets/palette swatches/weirdtrees.png" width="50%"/>                       |
| `"weirdtrees2"`                      | <img src="man/assets/palette swatches/weirdtrees2.png" width="50%"/>                       |
| `"woody"`                      | <img src="man/assets/palette swatches/woody.png" width="50%"/>                       |
| `"woody2"`                      | <img src="man/assets/palette swatches/woody2.png" width="50%"/>                       |

### 📊 Three (3) colors
| Name                                                                                                                            | Palette                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `"bnw_three"`                      | <img src="man/assets/palette swatches/bnw_three.png" width="50%"/>                       |
| `"monochrome_trio"`                      | <img src="man/assets/palette swatches/monochrome_trio.png" width="50%"/>                       |
| `"monochrome_trio2"`                      | <img src="man/assets/palette swatches/monochrome_trio2.png" width="50%"/>                       |
| `"monochrome_trio3"`                      | <img src="man/assets/palette swatches/monochrome_trio3.png" width="50%"/>                       |
| `"simple"`                      | <img src="man/assets/palette swatches/simple.png" width="50%"/>                       |
| `"simple2"`                      | <img src="man/assets/palette swatches/simple2.png" width="50%"/>                       |
| `"simple3"`                      | <img src="man/assets/palette swatches/simple3.png" width="50%"/>                       |
| `"simple4"`                      | <img src="man/assets/palette swatches/simple4.png" width="50%"/>                       |
| `"simple5"`                      | <img src="man/assets/palette swatches/simple5.png" width="50%"/>                       |
| `"simple6"`                      | <img src="man/assets/palette swatches/simple6.png" width="50%"/>                       |
| `"bass"`                      | <img src="man/assets/palette swatches/bass.png" width="50%"/>                       |
| `"beachwood"`                      | <img src="man/assets/palette swatches/beachwood.png" width="50%"/>                       |
| `"drab"`                      | <img src="man/assets/palette swatches/drab.png" width="50%"/>                       |
| `"guinea"`                      | <img src="man/assets/palette swatches/guinea.png" width="50%"/>                       |
| `"lake"`                      | <img src="man/assets/palette swatches/lake.png" width="50%"/>                       |
| `"pickle"`                      | <img src="man/assets/palette swatches/pickle.png" width="50%"/>                       |
| `"rby"`                      | <img src="man/assets/palette swatches/rby.png" width="50%"/>                       |
| `"royalty"`                      | <img src="man/assets/palette swatches/royalty.png" width="50%"/>                       |
| `"sundown"`                      | <img src="man/assets/palette swatches/sundown.png" width="50%"/>                       |
| `"trout"`                      | <img src="man/assets/palette swatches/trout.png" width="50%"/>                       |
| `"waterandsand"`                      | <img src="man/assets/palette swatches/waterandsand.png" width="50%"/>                       |

### 📊 Four (4) colors
| Name                                                                                                                            |                                                                                                                   |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `"bnw_four"`                      | <img src="man/assets/palette swatches/bnw_four.png" width="50%"/>                       |
| `"blorangefour"`                      | <img src="man/assets/palette swatches/blorangefour.png" width="50%"/>                       |
| `"basicfour"`                      | <img src="man/assets/palette swatches/basicfour.png" width="50%"/>                       |
| `"drabfour"`                      | <img src="man/assets/palette swatches/drabfour.png" width="50%"/>                       |
| `"fishyfour"`                      | <img src="man/assets/palette swatches/fishyfour.png" width="50%"/>                       |
| `"fourscore"`                      | <img src="man/assets/palette swatches/fourscore.png" width="50%"/>                       |
| `"freakyfour"`                      | <img src="man/assets/palette swatches/freakyfour.png" width="50%"/>                       |
| `"lightfour"`                      | <img src="man/assets/palette swatches/lightfour.png" width="50%"/>                       |
| `"michiganfour"`                      | <img src="man/assets/palette swatches/michiganfour.png" width="50%"/>                       |
| `"midwestwoodsfour"`                      | <img src="man/assets/palette swatches/midwestwoodsfour.png" width="50%"/>                       |
| `"monochrome_quad"`                      | <img src="man/assets/palette swatches/monochrome_quad.png" width="50%"/>                       |
| `"palekingfour"`                      | <img src="man/assets/palette swatches/palekingfour.png" width="50%"/>                       |
| `"seafoamfour"`                      | <img src="man/assets/palette swatches/seafoamfour.png" width="50%"/>                       |
| `"simplefour"`                      | <img src="man/assets/palette swatches/simplefour.png" width="50%"/>                       |
| `"simplefour2"`                      | <img src="man/assets/palette swatches/simplefour2.png" width="50%"/>                       |
| `"strangefour"`                      | <img src="man/assets/palette swatches/strangefour.png" width="50%"/>                       |
| `"vibrantfour"`                      | <img src="man/assets/palette swatches/vibrantfour.png" width="50%"/>                       |

### 📊 Twelve (12) colors

| Name                                                                                                                            | Palette                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `"basicbundle3"`                      | <img src="man/assets/palette swatches/basicbundle3.png" width="50%"/>                       |
| `"basicbundle4"`                      | <img src="man/assets/palette swatches/basicbundle4.png" width="50%"/>                       |
| `"basicbundle5"`                      | <img src="man/assets/palette swatches/basicbundle5.png" width="50%"/>                       |
| `"basicbundle6"`                      | <img src="man/assets/palette swatches/basicbundle6.png" width="50%"/>                       |
| `"basicbundle7"`                      | <img src="man/assets/palette swatches/basicbundle7.png" width="50%"/>                       |
| `"basicbundle8"`                      | <img src="man/assets/palette swatches/basicbundle8.png" width="50%"/>                       |

### 📊 Eighteen (18) colors 

|Name   |  Palette   |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `"basicbundle"`                      | <img src="man/assets/palette swatches/basicbundle.png" width="50%"/>                       |
| `"basicbundle2"`                      | <img src="man/assets/palette swatches/basicbundle2.png" width="50%"/>                       |
