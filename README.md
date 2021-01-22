# Nitrokey's User Documentation

## Tips and Conventions

- Write filenames in lower case and use dashes ("-") instead of spaces.

- For content which is identical for different models or operating  systems, use `include` to avoid duplication of files. Locate those  instructions not in but next to the operating system folders.

- Add a subfolder with the numbered image files for each guide.

- Avoid plain URLs in text but use hyperlinks instead.

- Relative paths (also included and double included) are always evaluated from the path of the final including page. Images within pages that are included elsewhere must therefore always be specified with an absolute path starting with `/` which stands for the root directory of the document.

- More information about RST:

  https://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html

  https://docutils.sourceforge.io/rst.html