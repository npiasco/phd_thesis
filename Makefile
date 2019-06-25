LATEX_COMPILER=pdflatex
LATEX_FLAGS=-shell-escape
BIB_COMPILER=bibtex

BASENAME=thesis
NAME=$(BASENAME).tex
	
BASENAME_CH1=chapter_1
BASEDIR_CH1=1_introduction/
NAME_CH1=$(BASEDIR_CH1)$(BASENAME_CH1).tex

BASENAME_CH2=chapter_2
BASEDIR_CH2=2_visual_based_localization/
NAME_CH2=$(BASEDIR_CH2)$(BASENAME_CH2).tex

BASENAME_CH3=chapter_3
BASEDIR_CH3=3_side_modality_learning_for_localisation/
NAME_CH3=$(BASEDIR_CH3)$(BASENAME_CH3).tex

BASENAME_CH4=chapter_4
BASEDIR_CH4=4_pose_refinement/
NAME_CH4=$(BASEDIR_CH4)$(BASENAME_CH4).tex

BASENAME_CH5=chapter_5
BASEDIR_CH5=5_conclusion/
NAME_CH5=$(BASEDIR_CH5)$(BASENAME_CH5).tex

all: pdf

chaps: chap1 chap2 chap3 chap4 chap5

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
	
chap2:
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH2) $(LATEX_FLAGS) $(NAME_CH2)
	$(BIB_COMPILER) $(BASEDIR_CH2)$(BASENAME_CH2)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH2) $(LATEX_FLAGS) $(NAME_CH2)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH2) $(LATEX_FLAGS) $(NAME_CH2)
	
chap3:
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH3) $(LATEX_FLAGS) $(NAME_CH3)
	$(BIB_COMPILER) $(BASEDIR_CH3)$(BASENAME_CH3)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH3) $(LATEX_FLAGS) $(NAME_CH3)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH3) $(LATEX_FLAGS) $(NAME_CH3)

chap4:
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH4) $(LATEX_FLAGS) $(NAME_CH4)
	$(BIB_COMPILER) $(BASEDIR_CH4)$(BASENAME_CH4)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH4) $(LATEX_FLAGS) $(NAME_CH4)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH4) $(LATEX_FLAGS) $(NAME_CH4)

chap5:
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH5) $(LATEX_FLAGS) $(NAME_CH5)
	$(BIB_COMPILER) $(BASEDIR_CH5)$(BASENAME_CH5)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH5) $(LATEX_FLAGS) $(NAME_CH5)
	$(LATEX_COMPILER) -output-directory=$(BASEDIR_CH5) $(LATEX_FLAGS) $(NAME_CH5)		
		
clean:
	find . -name "*.aux" -o -name "*.bb" -o -name "*.bl" -o -name "*.lo" -o -name "*.lo" -o -name "*.soc" | xargs rm -f
	find . -name "*.nl" -o -name "*.ou" -o -name "*.to" -o -name "*.bc" -o -name "*.run.xml" -o -name "*.nlo" | xargs rm -f
	find . -name "*.bbl" -o -name "*.blg" -o -name "*.fdb_latexmk" -o -name "*.fls" -o -name "*.log" | xargs rm -f
	find . -name "*.toc" -o -name "*.synctex.gz" -o -name "*.acn" -o -name "*.glo" -o -name "*.ist" | xargs rm -f
	find . -name "*.lof" -o -name "*.lot" -o -name "*.out" -o -name "*.acr" -o -name "*.alg" -o -name "*.brf" | xargs rm -f
	find . -name "*.glg" -o -name "*.gls" -o -name "*.glsdefs" -o -name "*.cb" -o -name "*.cb2" | xargs rm -f
