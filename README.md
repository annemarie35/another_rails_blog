== README

# Objectifs de l'application

C'est un moteur de publications de souvenirs géolocalisés.
J'aimerais le faire évoluer vers un outil de data journalisme.
Voir le wiki https://github.com/annemarie35/another_rails_blog/wiki !

# ISSUES
- Travailler un peu sur le design ( https://www.rubyplus.com/)
- configurer le mailer
- configurer les permissions des users et des guests. Il faut peut-être ajouter la gem cancan
- mettre en place des tests permettant de gérer ces permissions

# INSTALLATION

- Git clone puis `bundle install` pour lancer l'installation des gems nécessaires au projet
- Lancer la commande `rake test` pour lancer les tests
- Ne pas oublier de faire un rake db:migrate pour lancer les migrations

- ce projet utilise postgresql, si vous n'avez pas de base de données installée sur votre ordinateur : voir le readme de https://github.com/simplonco/simplonline/blob/dev/README.md

- renommer .sampleenv en .env et modifier les données pour vos mots de passe et user
- Pour lancer le serveur `$ foreman start web` port 5000 ou `$ puma` si ça ne fonctionne pas

# DEPLOYEMENT HEROKU

L'application est en ligne sur Heroku https://a-blog-rails.herokuapp.com/
( besoin de la commande `$ heroku run rake db:migrate`voir le tuto en ligne https://devcenter.heroku.com/articles/getting-started-with-rails3)
