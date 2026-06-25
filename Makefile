# ----------------------------
# Paths
# ----------------------------
NOTEBOOK_DIR := notebooks
REPORT_DIR := reports
SITE_DIR := _site

IPYNB := $(wildcard $(NOTEBOOK_DIR)/*.ipynb)

# ----------------------------
# Default target
# ----------------------------
all: sync render

# ----------------------------
# Sync ipynb → qmd
# ----------------------------
sync:
	@echo "🔄 Syncing notebooks → qmd..."
	@mkdir -p $(REPORT_DIR)
	@for f in $(IPYNB); do \
		echo "  -> $$f"; \
		jupytext --to qmd "$$f" --output $(REPORT_DIR)/; \
	done

# ----------------------------
# Render Quarto site
# ----------------------------
render:
	@echo "📊 Rendering Quarto site..."
	quarto render

# ----------------------------
# Clean build artifacts
# ----------------------------
clean:
	@echo "🧹 Cleaning output..."
	rm -rf $(SITE_DIR)

# ----------------------------
# Debug / sanity check
# ----------------------------
status:
	@echo "📁 Notebooks:"
	@ls -1 $(NOTEBOOK_DIR)
	@echo ""
	@echo "📁 Reports:"
	@ls -1 $(REPORT_DIR)