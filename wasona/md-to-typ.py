import re
import sys

header = """#import "../template.typ": *

#show: template
"""


def format(md):
    md = re.sub(r"\{\/\*((.|\n)*?)\*\/\}", "", md)
    md = re.sub(r"#", "=", md)
    md = re.sub("--", "---", md)
    md = re.sub(r"\n\* ", "\n+ ", md)
    md = re.sub(
        r"<Word sl=\"(.*?)\" m=\"(.*?)\" />",
        'word("REPLACE", "\\1", "\\2"),',
        md,
    )
    md = re.sub(
        r"<Sentence sl=\"(.*?)\" m=\"(.*?)\" />",
        'sentence("REPLACE", "\\1", "\\2"),',
        md,
    )
    md = md.replace("<List>", "#list((").replace("</List>", "))")

    md = re.sub(r"\*\*\*(.*?)\*\*\*", "#strong[emph[\\1]]", md)
    md = re.sub(r"\*\*(.*?)\*\*", "#strong[\\1]", md)
    md = re.sub(r"\*(.*?)\*", "#emph[\\1]", md)
    md = re.sub(r"\n\n+", "\n\n", md)

    return md


for path in sys.argv[1:]:
    with open(f"en/{path}.md") as f:
        md = f.read()
    with open(f"en/{path}.typ", "w") as f:
        f.write(header)
        f.write(format(md))
        print(f"formatted en/{path}.typ")
