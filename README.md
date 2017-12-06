
docker build -t cloud-native-go .

docker run --rm -p 8080:8080 cloud-native-go