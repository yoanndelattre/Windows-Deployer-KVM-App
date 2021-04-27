build:
	apt update
	apt upgrade -y
	apt install -y --no-install-recommends git nodejs npm golang
	cd /app
	go mod download
	git clone https://github.com/yoanndelattre/Windows-Deployer-KVM-Web.git /app/Windows-Deployer-KVM-Web
	cd /app/Windows-Deployer-KVM-Web
	npm install
	npm run build
	mv /app/Windows-Deployer-KVM-Web/build /app/static
	cd /app
	go get -u github.com/gobuffalo/packr/packr
	export GOPATH=$HOME/go
	export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
	packr
	GOOS=windows GOARCH=amd64 go build -o output/Windows-Deployer-Windows-x86_64.exe main.go
	GOOS=darwin GOARCH=amd64 go build -o output/Windows-Deployer-Darwin-x86_64 main.go
	GOOS=darwin GOARCH=arm64 go build -o output/Windows-Deployer-Darwin-arm64 main.go
	GOOS=linux GOARCH=amd64 go build -o output/Windows-Deployer-Linux-x86_64 main.go
	GOOS=linux GOARCH=arm64 go build -o output/Windows-Deployer-Linux-arm64 main.go