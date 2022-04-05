brew install swiftlint
brew install pre-commit

pre-commit uninstall
pre-commit clean
pre-commit gc
pre-commit install
pre-commit install-hooks
pre-commit --version