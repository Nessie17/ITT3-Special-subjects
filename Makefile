all: SS1_VMware_esxi.pdf

SS1_VMware_esxi.pdf: projects/SS1_VMware_esxi.md template/template.tex
	pandoc                          \
	  --from         markdown       \
	  --to           latex          \
	  --template     template/template.tex   \
	  --out          SS1_VMware_esxi.pdf \
	  --latex-engine xelatex        \
          --variable="skip-toc=true"   \
	  projects/SS1_VMware_esxi.md
