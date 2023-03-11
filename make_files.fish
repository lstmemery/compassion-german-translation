#! /usr/bin/fish

function render_docx
    quarto render notebooks/analysis_template.qmd -P data:../results/$argv[1].feather -P model:../models/$argv[2].json -t docx --output $argv[2].docx
    mv $argv[2].docx output
end

render_docx socs_o_tidy socs_o_one_factor
render_docx socs_o_tidy socs_o_five_factor
render_docx socs_o_tidy socs_o_hierarchical
render_docx socs_s_tidy socs_s_one_factor
render_docx socs_s_tidy socs_s_five_factor
render_docx socs_s_tidy socs_s_hierarchical