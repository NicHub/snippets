"""
WEASYPRINT INSTALLATION MACOS
https://doc.courtbouillon.org/weasyprint/stable/first_steps.html#macos
brew install python pango libffi
pip3 install weasyprint
weasyprint --info

EXAMPLES
https://www.programcreek.com/python/example/115974/weasyprint.HTML
"""
import weasyprint


def get_html_text():
    """ ___ """
    html_text = """<b>Sésame</b>
ouvre-toi !
"""
    return html_text


def get_html_template():
    """ ___ """
    html_template = """<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"><title>Exemple html2pdf avec Weasyprint</title>
</head>
<body>
    <pre>{}</pre>
</body>
</html>"""
    return html_template


def get_css_stylesheet():
    """ ___ """
    css_stylesheet = """
body * {
    font-family: times;
    color: tomato;
}
    """
    css_stylesheet = [weasyprint.CSS(string=css_stylesheet)]
    return css_stylesheet


def html2pdf_weasyprint(
        pdf_file_name,
        html_text,
        html_template,
        css_stylesheet):
    """ ___ """
    html_content = html_template.format(html_text)
    pdf_content = weasyprint.HTML(
        string=html_content).write_pdf(None, css_stylesheet)
    with open(pdf_file_name, "wb") as _f:
        _f.write(pdf_content)


if __name__ == "__main__":
    pdf_file_name = "html2pdf_weasyprint.pdf"
    html_text = get_html_text()
    html_template = get_html_template()
    css_stylesheet = get_css_stylesheet()
    html2pdf_weasyprint(
        pdf_file_name,
        html_text,
        html_template,
        css_stylesheet)
