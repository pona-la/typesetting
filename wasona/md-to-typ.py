import re
from pathlib import Path

import yaml

header = """#import "../template.typ": *

#show: template
"""


def format(md):
    _, metadata, md = md.split("---", 2)
    metadata = yaml.safe_load(metadata)

    md = re.sub(r"\nimport .*", "", md)
    md = md.replace("<Practice exercises={frontmatter.practice} />", "")
    md = re.sub(r"\{\/\*((.|\n)*?)\*\/\}", "", md)
    md = re.sub(r"#", "=", md)
    md = re.sub("--", "---", md)
    md = re.sub(r"\n\* ", "\n+ ", md)
    md = re.sub("  \n", " \\\n", md)
    md = re.sub(
        r"<Word[ \n]+?sl=\"(.*?)\"[ \n]+?m=\"(.*?)\"[ \n]*?/>",
        'word("REPLACE", "\\1", "\\2"),',
        md,
    )
    md = re.sub(
        r"<Sentence[ \n]+?sl=\"(.*?)\"[ \n]+?m=\"(.*?)\"[ \n]*?/>",
        'sentence("REPLACE", "\\1", "\\2"),',
        md,
    )
    md = md.replace("<List>", "#list((").replace("</List>", "))")

    md = re.sub(r"\*\*\*(.*?)\*\*\*", "#strong[emph[\\1]]", md)
    md = re.sub(r"\*\*(.*?)\*\*", "#strong[\\1]", md)
    md = re.sub(r"\*(.*?)\*", "#emph[\\1]", md)
    md = re.sub(r"\n\n+", "\n\n", md)

    return f"\n\n= {metadata["title"]}{md}"


# for path in sys.argv[1:]:
for path in Path("en").glob("*.mdx"):
    with open(path) as f:
        md = f.read()
    with open(path.with_suffix(".typ"), "w") as f:
        f.write(header)
        f.write(format(md))
        print(f"formatted en/{path}.typ")
