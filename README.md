
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ZenDNA

<!-- badges: start -->
<!-- badges: end -->

The goal of ZenDNA is to outline the Central Dogma of Molecular Biology.

## Installation

You can install the development version of ZenDNA like so:

``` r
install.packages("devtools")
devtools::install_github("s172084/ZenDNA")
```

### Data: the_codon_table

``` r
data("the_codon_table")
```

To explore the basic data manipulation verbs of ZenDNA, we’ll use the
dataset `the_codon_table`. This dataset comes from the [The Genetic
Codes](https://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi?chapter=tgencodes#SG1),
and is documented in `the_codon_table`

``` r
dim(the_codon_table)
#> [1]  1 64
the_codon_table
#>   UUU UCU UAU UGU UUC UCC UAC UGC UUA UCA UAA UGA UUG UCG UAG UGG CUU CCU CAU
#> 1   F   S   Y   C   F   S   Y   C   L   S   _   _   L   S   _   W   L   P   H
#>   CGU CUC CCC CAC CGC CUA CCA CAA CGA CUG CCG CAG CGG AUU ACU AAU AGU AUC ACC
#> 1   R   L   P   H   R   L   P   Q   R   L   P   Q   R   I   T   N   S   I   T
#>   AAC AGC AUA ACA AAA AGA AUG ACG AAG AGG GUU GCU GAU GGU GUC GCC GAC GGC GUA
#> 1   N   S   I   T   K   R   M   T   K   R   V   A   D   G   V   A   D   G   V
#>   GCA GAA GGA GUG GCG GAG GGG
#> 1   A   E   G   V   A   E   G
```

## Overview

ZenDNA is a package regarding the Central Dogma of Molecular Biology.

ZenDNA provides a consistent set of verbs that help you solve the most
common molecular biology challenges.

-   `create_dna()` generates a random sample of DNA.

-   `create_rna()` substitutes nucleotides in DNA to create RNA.

-   `create_codon()` makes codons based on the RNA sequence.

-   `create_polypeptide()` makes polypeptides based on the codon
    sequence.

-   `find_aa_distribution()` makes a histogram of the distribution of
    counts of amino acids in a polypeptide.

-   `the_codon_table` Codon to Amino Acid table.

You can learn more about the functions in `vignette(ZenDNA)`.

If you are new to ZenDNA, the best place to start is this github
repository.

(If you’re trying to generate a protein sequence from a DNA sequence,
see `vignette(ZenDNA)`)

## Usage

**Synthesize DNA with** `create_dna()`

The first verb is `create_dna()`. It creates a string of DNA

``` r
dna_seq <- create_dna(300)
```

------------------------------------------------------------------------

**Transcribe RNA with** `create_rna()`

The second verb is `create_rna()`. It creates a string of RNA

``` r
rna_sequence <- create_rna(dna_seq)
```

------------------------------------------------------------------------

**Start Initiation and Elongation of RNA with** `create_codon()`

The third verb is `create_codon()`. It creates separate strings of
codons

``` r
codon_produced <- create_codon(rna_sequence)
```

------------------------------------------------------------------------

**Protein structure creation with** `create_polypeptide()`

The fourth verb is `create_polypeptide()`. It creates a polypeptide
sequence from the codons.

``` r
polypeptide_sequence <- create_polypeptide(c("AUG", "CAA", "CGA", "UCA"))
polypeptide_sequence
```

------------------------------------------------------------------------

**Find the distribution of amino acids in the polypeptide with**
`find_aa_distribution()`

The fifth verb is `find_aa_distribution()`. It plots a histogram of the
distribution of amino acids in the polypeptide.

``` r
distrib_plot <- find_aa_distribution("HEGGHNRSRSSRTTSLKEET")
```

<img src="man/figures/README-unnamed-chunk-10-1.png" width="60%" style="display: block; margin: auto auto auto 0;" />

------------------------------------------------------------------------

## Getting help

If you encounter a clear bug, please file an issue with a minimal
reproducible example on GitHub. For questions and other discussion,
please email `s172084@dtu.dk`

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
