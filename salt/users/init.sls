users_ramin_user:
  user.present:
    - name: ramin 
    - home: /home/ramin
    - shell: /bin/bash
    - groups:
      - sudo
      - adm