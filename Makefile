PATH := ../node_modules/.bin:$(PATH)

ASSET_DIR = assets

SITE_LESS_DIR = ${ASSET_DIR}/less
SITE_CSS_DIR = ${ASSET_DIR}/css

SITE_LESS = ${SITE_LESS_DIR}/site/site.less
SITE_CSS_MIN = ${SITE_CSS_DIR}/site.min.css


build:
	@echo "Compiling Less files"

	@mkdir -p ${SITE_CSS_DIR}
	lessc --compress ${SITE_LESS} > ${SITE_CSS_MIN}



default: build


.PHONY: build
