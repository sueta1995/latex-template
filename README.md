## latex-template
Шаблон для отчетов и РПЗ МГТУ LaTEX.

## Environment
### Операционная система: Ubuntu 20.04 и выше

### texlive
```bash
sudo apt update
sudo apt install -y texlive-latex-recommended texlive-latex-extra texlive-lang-cyrillic cm-super
```

### Система сборки latexmk
```bash
sudo apt update
sudo apt install latexmk
```

### Набор для работы с библиографией biber
```bash
sudo apt update
sudo apt install biber
```

### Система сборки make
```bash
sudo apt update
sudo apt install make
```

## Dependencies

LaTEX-класс bmstu. Установка через:
```bash
git clone https://github.com/Orianti/bmstu-latex-class.git
cd bmstu-latex-class/
mkdir -p $(kpsewhich -var-value TEXMFHOME)/tex/latex/ && cp -R bmstu $_
```

## Build and run
```bash
make
```

## Authors
Китаев Т.А.
