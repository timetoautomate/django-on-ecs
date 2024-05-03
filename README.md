### Initial folder and files required

```sh
.
├── Dockerfile
├── django-example
│   └── requirements.txt
└── docker-compose.yml
```

### Build container with requirements.txt

`docker build -t django-example .`

### Run container with mounted volume in /bin/sh

`docker run -it --rm --name django-example -v .:/app django-example /bin/sh`

#### Create Django project and app

```
# cd django-example/
# django-admin startproject django_example
# cd django_example/
# django-admin startapp hockey
```