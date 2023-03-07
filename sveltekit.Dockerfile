FROM denoland/deno:ubuntu
SHELL ["/bin/bash", "-c"]

COPY ./demo-app/build/ /demo-app-build/

CMD ["deno", "run", "--allow-env", "--allow-read", "--allow-net", "/demo-app-build/index.js"]
