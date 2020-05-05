# Apache HTACCESS on Docker (Alpine Linux Image)

## Save Dockerfile on a folder Ex: Apache
**Caution: Only one dockerfile per folder**

### Generate image

docker build -t `<name>` .

`<name>` = Ex: apache or your_docker_hub_name/apache:1.0

### Running Container

docker run -d -p `<local port>`:80 `<name>`

`<local port>` = Ex 8080

### If don't generate image, get from docker hub

docker run -d -p `<local port>`:80 paulocorreia/alpine_apache:1.0

### Open Browser
`http://localhost:<local port>`

Default user is **sample**
Default password is **test**

If `<local port>` is 80 you can omit

If ask for user and password and before you type the default you see "It works on Docker HTACCESS!" is OK