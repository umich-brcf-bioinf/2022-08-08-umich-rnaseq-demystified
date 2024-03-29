# if (!requireNamespace("BiocManager", quietly = TRUE))
#     install.packages("BiocManager")
# BiocManager::install(c("biomaRt","DESeq2"), update=FALSE, ask=FALSE)
# #
# missing <- setdiff(c("tidyr", "ggplot2", "pheatmap", "ggrepel", "formattable", "RColorBrewer", "matrixStats", "dplyr", "biomaRt", "DESeq2"), rownames(installed.packages()))
# 
# if (!length(missing)) { 
#   cat("Ready for Computational Foundations workshop\n")
#   } else {
#     cat("PROBLEM: could not install:", missing, "\n")
#   }  
# install.packages("pheatmap")
# install.packages("ggrepel")
# install.packages("formattable")
# install.packages("tidyr")
# install.packages("RColorBrewer")
# install.packages("matrixStats")
# install.packages("dplyr")
# }

#setwd("~/git/2022-08-08-umich-rnaseq-demystified")

library(rmarkdown)

render('source/workshop_setup/preworkshop_checklist.md', output_dir='html/workshop_setup/')
render('source/workshop_setup/setup_instructions.md', output_dir='html/workshop_setup/')
render('source/workshop_setup/setup_instructions_advanced.md', output_dir='html/workshop_setup/')

render_site('source/index.md')
render_site('source/breakout_exercises.md')
render_site('source/Module00_Introduction.md')
render_site('source/Module01_Warming_Up.md')
render_site('source/Module02a_QC.md')
render_site('source/Module02b_Cutadapt_MoreQC.md')
render_site('source/Module02b_breakout01_ex.md')
render_site('source/Module02b_breakout01_sol.md')
render_site('source/Module03_Reference_Genomes.md')
render_site('source/Module04_Alignment.md')
render_site('source/Module04_breakout02_ex.md')
render_site('source/Module04_breakout02_sol.md')
render_site('source/Module05a_MultiQC_and_Count_Matrix.md')
render_site('source/Module05a_breakout03_ex.md')
render_site('source/Module05a_breakout03_sol.md')
render_site('source/Module05b_Additional_Details.md')
render_site('source/Module05b_breakout04_ex.md')
render_site('source/Module05b_breakout04_sol.md')

render_site('source/Module06_DEAnalysisSetup.Rmd')
render_site('source/Module07_DESeq2Init.Rmd')
render_site('source/Module08_DESeq2DE.Rmd')
render_site('source/Module09_SampleQCViz.Rmd')
render_site('source/Module09a_breakout.Rmd')
render_site('source/Module10_DEComparisons.Rmd')
render_site('source/Module11_DEVisualizations.Rmd')
render_site('source/Module11a_breakout.Rmd')
render_site('source/Module11X_BonusContent.Rmd')

render_site('source/Module99_Wrap_up.md')

#clean_site(preview=TRUE)
