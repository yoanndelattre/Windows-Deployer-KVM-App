build:
	apt update && \
	apt upgrade -y && \
	DEBIAN_FRONTEND="noninteractive" apt install -y --no-install-recommends git nodejs npm && \
	git clone https://github.com/yoanndelattre/Windows-Deployer-KVM-Web.git /Windows-Deployer-KVM-Web && \
	cd /Windows-Deployer-KVM-Web && \
	npm install && \
	npm run build && \
	mv /Windows-Deployer-KVM-Web/build /app/static
	go get -u github.com/gobuffalo/packr/packr
	cd /app && go mod download && packr && \
	GOOS=windows GOARCH=amd64 go build -o output/Windows-Deployer-Windows-x86_64.exe /app/main.go && \
	GOOS=darwin GOARCH=amd64 go build -o output/Windows-Deployer-Darwin-x86_64 /app/main.go &&\
	GOOS=darwin GOARCH=arm64 go build -o output/Windows-Deployer-Darwin-arm64 /app/main.go && \
	GOOS=linux GOARCH=amd64 go build -o output/Windows-Deployer-Linux-x86_64 /app/main.go && \
	GOOS=linux GOARCH=arm64 go build -o output/Windows-Deployer-Linux-arm64 /app/main.go