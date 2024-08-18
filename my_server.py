import http.server

import os
from http.server import HTTPServer, SimpleHTTPRequestHandler
from jinja2.environment import Environment

env = Environment(autoescape=False)
# Example usage to call custom Python code
# env.filters["my_func"] = my_func


def read_file(current_dir, file_name):
    full_file_path = os.path.join(current_dir, file_name)
    if not os.path.isfile(full_file_path):
        return f"MISSING file: {file_name}"
    with open(full_file_path) as file:
        content = file.read()
        return content


def render():
    current_dir = os.path.dirname(__file__)
    code_dir = os.path.join(current_dir, 'code')
    template = read_file(current_dir,"template.html")
    included_files = ['main_cpp', 'CMakeLists_txt']

    data = {value: read_file(code_dir, value.replace('_','.')) for value in included_files}
    for  key in data:
        data[key] = data[key].replace('<', '&lt').replace('>', '&gt')


    j2_template = env.from_string(template)
    html = j2_template.render(data, trim_blocks=True, zip=zip, env=env)
    with open(os.path.join(current_dir, 'index.html'), 'w') as f:
        f.write(html)


class MyHTTPRequestHandler(SimpleHTTPRequestHandler):

    def do_GET(self):
        # if asking for index, re-redner the file and write to the dist directory
        if self.path == '/' or self.path == '/?print-pdf':
            self.path = '/index.html'
            render()
        http.server.SimpleHTTPRequestHandler.do_GET(self)

httpd = HTTPServer(('', 8000), MyHTTPRequestHandler)
httpd.serve_forever()
