# APACHE_LDAP_WEBMIN
簡易的に作成したユーザー認証機構を持たないWebサービスに、外部からアクセスできるようにするため、
LDAP認証を組み込んだapacheと、管理環境のwebminを提供するプロジェクトです。

LDAPサーバーは別途用意してある前提で作っています。

# インストール
etc/apache2/sites-available/000-default.conf内のLDAP認証設定を変更したあと、docker compose buildしてください。

.env内のパラメータを変更すると、それぞれポート番号を変更することができます。

