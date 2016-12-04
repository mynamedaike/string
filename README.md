<!-- README.md is generated from README.Rmd. Please edit that file -->
### string

This package is complementary to stringr package. It includes three functions: `string_insert`, `string_cut` and `string_replace`. `string_insert` inserts a string to another string at a given position. `string_cut` cuts a substring between two given positions from a string. `string_replace` replaces a substring between two given positions in a string with another string.

### Installation

``` r
devtools::install_github("mynamedaike/string")
```

### Quick demo

Import string library

``` r
library(string)
```

string\_insert inserts a string to another string at a given position

``` r
a <- "apple pear "
b <- "banana "
string_insert(a, b, as.integer(0))
#> [1] "banana apple pear "
string_insert(a, b, as.integer(6))
#> [1] "apple banana pear "
string_insert(a, b, as.integer(11))
#> [1] "apple pear banana "
```

string\_cut cuts a substring between two given positions from a string

``` r
a <- "apple banana pear "
string_cut(a, as.integer(1), as.integer(6))
#> [1] "banana pear "
string_cut(a, as.integer(7), as.integer(13))
#> [1] "apple pear "
string_cut(a, as.integer(14), as.integer(18))
#> [1] "apple banana "
```

string\_replace replaces a substring between two given positions in a string with another string

``` r
a <- "apple banana pear "
b <- "orange"
string_replace(a, b, as.integer(1), as.integer(5))
#> [1] "orange banana pear "
string_replace(a, b, as.integer(7), as.integer(12))
#> [1] "apple orange pear "
string_replace(a, b, as.integer(14), as.integer(17))
#> [1] "apple banana orange "
```
