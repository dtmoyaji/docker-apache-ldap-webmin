# APACHE_LDAP_WEBMIN
簡易的に作成したユーザー認証機構を持たないWebサービスに、外部からアクセスできるようにするため、
LDAP認証を組み込んだapacheと、管理環境のwebminを提供するプロジェクトです。

LDAPサーバーは別途用意してある前提で作っています。

今のところ、中にサイトを格納するための構成にしています。プロキシで使う場合は適宜設定を編集してください。
そのうちこのプロジェクトで対応するかもしれません。

Webminは日本語に設定してあるので、必要に応じて切り替えてください。

# インストール
etc/sites-available/000-default.conf.sampleのLDAP認証設定を変更し、000-default.confに名前を変更した後、docker compose buildしてください。

.env内のパラメータを変更すると、それぞれポート番号を変更することができます。
webminには UID/PASS は root/root を初期値としていますので、.env内のパスワードを変更してください。

