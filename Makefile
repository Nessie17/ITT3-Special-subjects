
GIT_DATE := $(shell date -d $$(date -d @$$(git log -1 --format=%ct) +"%Y%m%d") +%s)

all: SS1_VMware_esxi.pdf SS2_AWS.pdf

SS1_VMware_esxi.pdf: projects/*.md weekly_plans/ww??.md template/template.tex
	weekly_plans/merge_weeks_ss1.sh
	@echo using timestamp $(GIT_DATE)
	SOURCE_DATE_EPOCH=$(GIT_DATE)  \
	SOURCE_DATE_EPOCH_TEX_PRIMITIVES=1 \
	pandoc  \
	  --from         markdown       \
	  --to           latex          \
	  --template     template/template.tex   \
	  --out          SS1_VMware_esxi.tex \
	  projects/SS1_VMware_esxi.md  \
	  weekly_plans/ww_ss1_merged.md \
	  projects/Mandatory_elements.md  \
	  projects/End-of-SS_report.md
	SOURCE_DATE_EPOCH=$(GIT_DATE)  \
	SOURCE_DATE_EPOCH_TEX_PRIMITIVES=1 \
	# rerun is needed
	xelatex SS1_VMware_esxi.tex
	xelatex SS1_VMware_esxi.tex

SS2_AWS.pdf: projects/*.md weekly_plans/ww??.md template/template.tex
	weekly_plans/merge_weeks_ss2.sh
	@echo using timestamp $(GIT_DATE)
	SOURCE_DATE_EPOCH=$(GIT_DATE)  \
	SOURCE_DATE_EPOCH_TEX_PRIMITIVES=1 \
	pandoc  \
	  --from         markdown       \
	  --to           latex          \
	  --template     template/template.tex   \
	  --out          SS2_AWS.tex \
	  projects/SS2_AWS.md  \
	  weekly_plans/ww_ss2_merged.md \
	  projects/Mandatory_elements.md  \
	  projects/End-of-SS_report.md
	SOURCE_DATE_EPOCH=$(GIT_DATE)  \
	SOURCE_DATE_EPOCH_TEX_PRIMITIVES=1 \
	# rerun is needed
	xelatex SS2_AWS.tex
	xelatex SS2_AWS.tex
