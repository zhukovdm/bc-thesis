# bc-thesis

To build thesis execute `make thesis`, the generated file is stored at `./out/thesis.pdf`.

To build thesis, abstracts, and poster at once:

```bash
make
```

## Validation

Pull the image:

```bash
docker pull ghcr.io/mff-cuni-cz/cuni-thesis-validator:latest
```

Run the validation from the `./out/` folder:

```bash
docker run --rm -v $PWD:/thesis ghcr.io/mff-cuni-cz/cuni-thesis-validator verify /thesis/thesis.pdf |grep validationReports
```

## Conversions

svg to pdf:

```bash
inkscape file.svg --export-pdf=file.pdf
```

pdf to png:

```bash
convert file.pdf file.png
```

## Credits

The source code in this repository is based on the following templates.

- https://mj.ucw.cz/vyuka/bc/
- https://www.mff.cuni.cz/studium/bcmgr/prace/vzor-bp.zip
- https://github.com/exaexa/better-mff-thesis
- https://github.com/exaexa/simple-mff-poster
- https://github.com/mff-cuni-cz/cuni-thesis-validator
