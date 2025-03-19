package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	// Project name
	var projectName string
	fmt.Print("Project name: ")
	fmt.Scanln(&projectName)

	fmt.Printf("Generating project '%s'...\n", projectName)

	// Create dir
	os.MkdirAll(fmt.Sprintf("%s/cmd/%s", projectName, projectName), os.ModePerm)
	os.MkdirAll(fmt.Sprintf("%s/internal", projectName), os.ModePerm)
	os.MkdirAll(fmt.Sprintf("%s/pkg", projectName), os.ModePerm)
	os.MkdirAll(fmt.Sprintf("%s/scripts", projectName), os.ModePerm)

	// Init go.mod
	cmd := exec.Command("go", "mod", "init", projectName)
	cmd.Dir = projectName
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error initializing Go module:", err)
		return
	}

	fmt.Println("Folders created. Project initialized.")
}
