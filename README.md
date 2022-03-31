
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

## Overview

ZenDNA is a package regarding the Central Dogma of Molecular Biology.

ZenDNA provides a consistent set of verbs that help you solve the most
common molecular biology challenges.

-   `create_dna()` generates a random sample of DNA.

-   `create_rna()` substitutes nucleotides in DNA to create RNA.

-   `create_codon()` makes codons based on the RNA sequence.

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

## Getting help

If you encounter a clear bug, please file an issue with a minimal
reproducible example on GitHub. For questions and other discussion,
please email `s172084@dtu.dk`

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.