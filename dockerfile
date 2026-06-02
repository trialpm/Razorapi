FROM golang:1.21-alpine

WORKDIR /app

# Copy go mod files
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY main.go ./

# Build the app
RUN go build -o rajuapi main.go

# Run the app
CMD ["./rajuapi"]
