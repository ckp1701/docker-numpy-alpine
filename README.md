### Alpine Docker Image for Numpy

This image provides a lightweight runtime environment for Numpy codebases. 
This image is constructed using the alpine base image at the time of build.

### Testing 
```bash
docker build . -t docker-numpy-alpine
docker run -it docker-numpy-alpine
```