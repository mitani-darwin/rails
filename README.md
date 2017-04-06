chefを使ってrailsの開発環境を作成するプロジェクトです。
rubyはrbenvを使ってインストールをしています。

rails4系をインストールする場合には下記の通り
```
curl -O https://packages.chef.io/files/stable/chef/12.18.31/el/7/chef-12.18.31-1.el7.x86_64.rpm
rpm -ivh chef-12.18.31-1.el7.x86_64.rpm
yum -y install git
/opt/chef/embedded/bin/gem install knife-solo --no-ri --no-rdoc
git clone -b rails4.x https://github.com/mitani-darwin/rails.git
cd rails
sudo knife solo bootstrap root@127.0.0.1
```

rails5系をインストールする場合には下記の通り
```
curl -O https://packages.chef.io/files/stable/chef/12.18.31/el/7/chef-12.18.31-1.el7.x86_64.rpm
rpm -ivh chef-12.18.31-1.el7.x86_64.rpm
yum -y install git
/opt/chef/embedded/bin/gem install knife-solo --no-ri --no-rdoc
git clone -b rails5.x https://github.com/mitani-darwin/rails.git
cd rails
sudo knife solo bootstrap root@127.0.0.1
```
