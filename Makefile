LATEX_COMPILER=pdflatex
LATEX_FLAGS=-shell-escape
BIB_COMPILER=bibtex

BASENAME=thesis
NAME=$(BASENAME).tex
	
BASENAME_CH1=chapter_1
BASEDIR_CH1=1_introduction/
NAME_CH1=$(BASEDIR_CH1)$(BASENAME_CH1).tex

all: pdf


pdf:
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(NAME)
	$(BIB_COMPILER) $(BASENAME)
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(NAME)
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(NAME)

chap1:
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH1) $(LATEX_FLAGS) $(NAME_CH1)
	$(BIB_COMPILER) $(BASEDIR_CH1)$(BASENAME_CH1)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH1) $(LATEX_FLAGS) $(NAME_CH1)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH1) $(LATEX_FLAGS) $(NAME_CH1)
		
clean:
	find . -name "*.aux" -o -name "*.bb" -o -name "*.bl" -o -name "*.lo" -o -name "*.lo" -o -name "*.soc" | xargs rm -f
	find . -name "*.nl" -o -name "*.ou" -o -name "*.to" -o -name "*.bc" -o -name "*.run.xml" | xargs rm -f
	find . -name "*.bbl" -o -name "*.blg" -o -name "*.fdb_latexmk" -o -name "*.fls" -o -name "*.log" | xargs rm -f
	find . -name "*.toc" -o -name "*.synctex.gz" -o -name "*.acn" -o -name "*.glo" -o -name "*.ist" | xargs rm -f
	find . -name "*.lof" -o -name "*.lot" -o -name "*.out" -o -name "*.acr" -o -name "*.alg" | xargs rm -f
	find . -name "*.glg" -o -name "*.gls" -o -name "*.glsdefs" -o -name "*.cb" -o -name "*.cb2" | xargs rm -f
