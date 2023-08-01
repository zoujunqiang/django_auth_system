#python manage.py collectstatic --noinput&&
python manage.py makemigrations&&
python manage.py migrate&&
#python manage.py runserver 0.0.0.0:8000
uwsgi --version
uwsgi --ini /var/www/html/auth_system/uwsgi.ini&&
tail -f /dev/null
exec "$@"
