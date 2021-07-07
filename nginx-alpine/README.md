
# nginx Application template

The nginx template application demonstrates the simple nginx web server running.

## Port

Default port used for this app is 9070.



## Build
Use the following command to build the image for VHE09-10

```bash
vhc build --target vhx09-10 --unsigned   #for VHE09/VHE10 hub
```

## Deployment
Once the image has been built, you can deploy it to Veea hub
```bash
vhc hub image --create bin/nginx_template-arm64v8\:2.0.6.tar      #for VHE09/VHE10 hub
Creating image push for file [bin/nginx_template-arm64v8:2.0.6.tar] on <HUB-ID>:9000 (https://192.168.200.31:9000/images/push)...
 182.44 MB / 182.44 MB [================================================================================================] 100.00%
{"image_id": "b0e53297cc96ab52be46d36df0800fbc2bcb930406cc15b3e58ec54facc6197e"}

```

* **Creating container from image**

Use the following command to create a container:
```bash
vhc hub image --create_container b0e53297cc96ab52be46d36df0800fbc2bcb930406cc15b3e58ec54facc6197e
Creating container from image b0e53297cc96ab52be46d36df0800fbc2bcb930406cc15b3e58ec54facc6197e on <HUB-ID>:9000 (https://192.168.200.31:9000/images/b0e53297cc96ab52be46d36df0800fbc2bcb930406cc15b3e58ec54facc6197e/create_container)...
 351 B / 351 B [========================================================================================================] 100.00%
{
  "container_id": "fb2ca3b0b5a30e5edd99ed51bbd3d01a9b5d99b2f182def728eaaa220a43e489",
  "detached": false
}

```
    You will get a container-ID after creating container. Use that ID to start/stop/attach the container.

* **Start container**

Use the following command to start the container:

```bash
vhc hub container --start fb2ca3b0b5a30e5edd99ed51bbd3d01a9b5d99b2f182def728eaaa220a43e489
Starting container fb2ca3b0b5a30e5edd99ed51bbd3d01a9b5d99b2f182def728eaaa220a43e489 <HUB-ID>:9000 (https://192.168.200.31:9000/containers/fb2ca3b0b5a30e5edd99ed51bbd3d01a9b5d99b2f182def728eaaa220a43e489/start)...
Success
```

* **Attach container**

Use the following command to attach to the container:

```bash
    $ vhc hub container --attach fb2ca3b0b5a30e5edd99ed51bbd3d01a9b5d99b2f182def728eaaa220a43e489 "/bin/sh -il"
     Attaching to stdin/stdout/stderr on E10CCW0080C000000709:9001...
     Attaching to container fb2ca3b0b5a30e5edd99ed51bbd3d01a9b5d99b2f182def728eaaa220a43e489 <HUB-ID>:9000 (https://192.168.200.31:9000/containers/c4a2da5042b95f85cbfca8eb136ad9b390cafe380352606a6654d2dc2c99274a/attach)...
     Success
```


* Once the application is deployed and running on the veea hub, we can verify the running server with the following URL

    http://<Veeahub_IP_address>:9070/
