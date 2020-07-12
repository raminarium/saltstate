user_a_farhadi:
  user.present:
    - name: a.farhadi
    - fullname: Aidin Farhadi
    - shell: /bin/bash
    - home: /home/a.farhadi
    - uid: 10002
    - gid_from_name: True
    - groups:
      - ramin

a_farhadi_key:
  ssh_auth.present:
    - name: a.farhadi
    - user: a.farhadi
    - source: salt://users/keys/a.farhadi.pub
