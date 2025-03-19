# Go Base Starter

<br>

## How it works ? 

The application will generate a base Go project.


<br>

## Exemples:

#### ✔️: 
``` shell
  wget -qO- https://raw.githubusercontent.com/Rodr1goTavares/Go-project-starter/refs/heads/main/go-base.sh | bash

  Project name: my-go-project
```

## With structure this uses ?

### Here's the typical structure for a Go project:

```
  my-go-project/
├── cmd/
│   └── myapp/
│       └── main.go           # Entry point of the application
├── internal/
│   └── mymodule/
│       └── mymodule.go       # Code that should not be imported by other modules
├── pkg/
│   └── mylib/
│       └── mylib.go          # Reusable packages and libraries
├── go.mod                    # Go module file
├── go.sum                    # Go checksum file
└── README.md                 # Project documentation
```
More information on the project structure can be found in the following resources:

. [Golang Standards Project Layout](https://github.com/golang-standards/project-layout)

. [Go Modules Layout Documentation](https://go.dev/doc/modules/layout)
