# Introduction
projekt vznikl ze několika důvodů. Hlavní důvod bylo omezení používání více
platform na ukládání projektu a jelikož většina porojektu už byla na GitHubu,
tak nejsnažší řešení bylo použít tuto platformu. `odf` ani `docx` nejsou textové
formáty, takže ty sem nepatři, místo toho byl zvolen LaTeX, se kterým se chtěl
autor stejně naučit.

předem upozorňuji, že tohle je můj první LaTeXový dokument, takže zdrojáky asi
nebudou úplně košér.

#### výhody:
 - snadné verzování
 - multiplatformní( užasnej microsoftí template dělal blbosti v libreoffice)
 - míň překlepů a hrubek oproti ofiko vzoru

#### nevýhody:
 - na školních pc nejde projekt kompilovat

# Building
v repositáři je MakeFile na buildění example projektu, dá se snadno modifikovat na cokoliv jiného.

```
make
make clean
```

when using class from outside of repository, you have to use correct paths in documentclass and gprahicspath

```LaTeX
\documentclass[12pt,a4paper]{PathToRepository/SPSTemplate}
\graphicspath{{path/to/repo/}}{{path/to/other/pictures/}}
```

# SPSTemplate class usage
pro vytvoření několika úvodních stránek(titulní stránka až anotace) je potřeba
zadat používané parametry

pri vymysleni nazvu se museli obejit vsechny uz predem dane LaTeXu interni slova


| reference  | obsah                            |
|------------|----------------------------------|
| creator    | Jméno autora projektu            |
| temacz     | název maturitního projektu česky |
| tema       | název MP anglicky                |
| supervisor | jméno vedoucího DMP              |
| vyuziti    | použití práce                    |
| usage      | použití práce anglicky           |
| abstrakt   | referát; stručný výtah           |
| abstrakten | brief summary                    |
| klicovas   | klíčová slova česky              |
| keywords   |  klíčová slova anglicky          |
| podekovani | vedoucímu, rodičům, firmě....    |

usage:
```LaTeX
\reference{obsah}

% poté stačí zavolat v documentu

\makebeginning

```
