MAKE_DOT_PY = "make_dot.py"

PAPERS_JSON = "papers.json"
PAPERS_DOT  = "papers.dot"
PAPERS_PNG  = "papers.png"


dot:
	python3 $(MAKE_DOT_PY) $(PAPERS_JSON) $(PAPERS_DOT)

png:
	dot -Tpng -o$(PAPERS_PNG) $(PAPERS_DOT)

open:
	open $(PAPERS_PNG)

all: dot png open
