resume: pdf png

pdf:
	pdflatex Katrina_Viray_Resume.tex
	start Katrina_Viray_Resume.pdf &
	rm -f *.aux *.log *.toc *.blg *.out *.bbl

png:
	magick -density 300 "Katrina_Viray_Resume.pdf" -quality 100 "Katrina_Viray_Resume.png"
	magick "Katrina_Viray_Resume.png" -background white -flatten "Katrina_Viray_Resume.png"
	rm -f Katrina_Viray_Resume-*.png