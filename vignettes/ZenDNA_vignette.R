## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(collapse = T, comment = "#>")
options(tibble.print_min = 4L, tibble.print_max = 4L)
set.seed(1014)
#rmarkdown::pdf_document

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("s172084/ZenDNA")

## ---- eval = FALSE------------------------------------------------------------
#  dna_seq <- create_dna(300)

## ---- eval = FALSE------------------------------------------------------------
#  rna_sequence <- create_rna(dna_seq)

## ---- eval = FALSE------------------------------------------------------------
#  codon_produced <- create_codon(rna_sequence)

## ---- eval = FALSE------------------------------------------------------------
#  polypeptide_sequence <- create_polypeptide(c("AUG", "CAA", "CGA", "UCA"))
#  polypeptide_sequence

## ---- eval = FALSE------------------------------------------------------------
#  distrib_plot <- find_aa_distribution("HEGGHNRSRSSRTTSLKEET")

