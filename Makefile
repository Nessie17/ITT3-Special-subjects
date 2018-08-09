all: SS1_VMware_esxi.pdf

SS1_VMware_esxi.pdf: projects/*.md template/template.tex
	pandoc                          \
	  --from         markdown       \
	  --to           latex          \
	  --template     template/template.tex   \
	  --out          SS1_VMware_esxi.pdf \
	  --latex-engine xelatex        \
          --variable="skip-toc=true"   \
	  projects/SS1_VMware_esxi.md  \
	  projects/Mandatory_elements.md  \
	  projects/End-of-SS_report.md
