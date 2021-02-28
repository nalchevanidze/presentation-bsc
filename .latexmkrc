$pdflatex = "xelatex %O %S";
$pdf_mode = 1;
$dvi_mode = 0;
$postscript_mode = 0;
$out_dir = '.build';

@default_files = ('main.tex');

$success_cmd = "cp \".build/main.pdf\" \"out/Presentation of Bachelor thesis Daviti Nalchevanidze.pdf\"";