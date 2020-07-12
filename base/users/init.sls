user_r_afshari:
  user.present:
    - name: r.afshari
    - fullname: Ramin Afshari
    - shell: /bin/bash
    - home: /home/r.afshari
    - uid: 10001
    - gid_from_name: True
    - groups:
      - ramin

r_afshari_key:
  ssh_auth.present:
    - name: r.afshari
    - user: r.afshari
    - source: salt://users/keys/r.afshari.pub
