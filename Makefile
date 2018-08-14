all: SS1_VMware_esxi.pdf

SS1_VMware_esxi.pdf: projects/*.md weekly_plans/ww??.md template/template.tex
	weekly_plans/merge_weeks.sh
	pandoc                          \
	  --from         markdown       \
	  --to           latex          \
	  --template     template/template.tex   \
	  --out          SS1_VMware_esxi.pdf \
	  --latex-engine xelatex        \
          --variable="skip-toc=true"   \
	  projects/SS1_VMware_esxi.md  \
		weekly_plans/ww_ss1_merged.md \
	  projects/Mandatory_elements.md  \
	  projects/End-of-SS_report.md
