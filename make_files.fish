#! /usr/bin/fish
quarto render notebooks/analysis_template.qmd -P data:../results/socs_o_tidy.feather -P model:../models/socs_o_one_factor.json -t docx --output socs_o_one_factor.docx
mv socs_o_one_factor.docx output