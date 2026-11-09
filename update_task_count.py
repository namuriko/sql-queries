from pathlib import Path
import re

readme_path = Path("README.md")

# Считаем файлы с решениями
task_files = sorted(Path(".").glob("req_*.sql"))

task_count = len(task_files)

# Читаем README
content = readme_path.read_text(encoding="utf-8")

# Обновляем количество задач
content = re.sub(
    r"Количество решённых задач:\*\* \d+",
    f"Количество решённых задач:** {task_count}",
    content
)

# Обновляем список решений
task_list = "\n".join(
    f"| {file.stem.split('_')[1]} | [{file.name}]({file.name}) |"
    for file in task_files
)

content = re.sub(
    r"(?<=## Список решений\n).*",
    task_list,
    content,
    flags=re.DOTALL
)

# Сохраняем README
readme_path.write_text(content, encoding="utf-8")