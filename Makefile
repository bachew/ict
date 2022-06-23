install: deps venv tmp

tmp:
	mkdir -p tmp

deps: tmp/deps-installed-0

tmp/deps-installed-0:
	sudo apt install python3 python3-venv
	touch tmp/deps-installed-0

clean:
	rm -fr venv tmp

venv:
	rm -fr venv
	python3 -m venv venv
	venv/bin/pip install -U pip
	venv/bin/pip install -U setuptools wheel
	venv/bin/pip install -r requirements.txt
