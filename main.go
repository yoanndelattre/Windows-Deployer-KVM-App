package main

import (
	"fmt"
	"log"
	"net/http"
	"os/exec"
	"runtime"

	"github.com/gobuffalo/packr"
)

func openbrowser(url string) {
	var err error

	switch runtime.GOOS {
	case "linux":
		err = exec.Command("xdg-open", url).Start()
		log.Println("Linux browser open")
	case "windows":
		err = exec.Command("rundll32", "url.dll,FileProtocolHandler", url).Start()
		log.Println("Windows browser open")
	case "darwin":
		err = exec.Command("open", url).Start()
		log.Println("Mac browser open")
	default:
		err = fmt.Errorf("unsupported platform")
	}
	if err != nil {
		log.Fatal(err)
	}

}

func webServer() {
	static := packr.NewBox("./static")
	http.Handle("/", http.FileServer(static))
	log.Println("Server started: http://localhost:8080")
	http.ListenAndServe(":8080", nil)
}

func main() {
	openbrowser("http://localhost:8080")
	webServer()
}
