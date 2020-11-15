Ansibleを使ってrailsの開発環境を作成するプロジェクトです。
rubyはrbenvを使ってインストールをしています。

ディレクトリ構造は以下の通りになっています。
```
rails
├── LICENSE.txt
├── README.md
├── ansible.cfg ← インストールユーザ名が記載されています
├── inventory
│   └── hosts.ini ← インストール先のホストのIPアドレスが記載されています
├── rails.yml
└── roles
    ├── rails
    │   ├── tasks
    │   │   └── main.yml
    │   └── vars
    │       └── main.yml ←　インストールするrailsのバージョンが記載されています
    └── rbenv
        ├── ansible-playbook rails.yml -e "ansible_user=xxxxx ruby_version=x.x.x rails_version=x.x.x.x"
        │   └── main.yml
        └── vars
            └── main.yml ←　インストールするrubyのバージョンが記載されています
```

- 一時的にrubyのバージョンを変更する場合は、「ansible-playbook rails.yml -e "ruby_version=xxx"と引数でバージョンを渡す事で実現できます。
- 一時的にrailsのバージョンを変更する場合は、「ansible-playbook rails.yml -e "rails_version=xxx"と引数でバージョンを渡す事で実現できます。
- 一時的にインストールユーザを変更する場合は、「ansible-playbook rails.yml -e "ansible_user=xxx"と引数でバージョンを渡す事で実現できます。
※ 上記の3つは同時に使用する事ができます
　 例：ansible-playbook rails.yml -e "ansible_user=xxxx ruby_version=xxxx rails_version=xxxxx"

rails5系をインストールする場合には下記の通り
```
デフォルトのrubyのバージョンは、2.5.8です。
デフォルトのrailsのバージョンは、5.2.4.4です。


yum -y install git
git clone -b rails5.x https://github.com/mitani-darwin/rails.git
cd rails
ansible-playbook rails.yml
```

