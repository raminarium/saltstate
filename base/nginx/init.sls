nginx-repository:
  pkg.installed:
    - name: epel-release

nginx:
  pkg.installed:
    - name: nginx

nginx-extras:
  pkg.installed:
    - name: nginx-extras

nginx.conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/files/nginx.conf