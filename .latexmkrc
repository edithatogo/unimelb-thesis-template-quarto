# .latexmkrc
#
# latexmk configuration file
#

# Use lualatex as the compiler
$latex = 'lualatex %O %S';
$pdflatex = 'lualatex %O %S';

# Use biber as the bibliography backend
$bibtex = 'biber %O %S';

# Add the template directory to TEXINPUTS
ensure_path('TEXINPUTS', 'template//');

# Add a rule for chktex
add_cus_dep('tex', 'chktexrc', 0, 'chktex');
sub chktex {
  system('chktex --nowarn 3,18,36 "' . $_[0] . '"');
}

# Add a rule for latexindent
add_cus_dep('tex', 'latexindent', 0, 'latexindent');
sub latexindent {
  system('latexindent -w -s -y "' . $_[0] . '"');
}

# Run chktex and latexindent on all tex files
@default_files = glob('example/*.tex');

# Set the output directory
$out_dir = 'example/out';