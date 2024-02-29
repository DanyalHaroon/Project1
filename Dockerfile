# Base image with Go environment
FROM golang

# Set working directory
WORKDIR /home/app

# Copying Go source code
COPY . .

# Installing dependencies using go mod
RUN go mod download

# Building the Go application
RUN go build -o main .

# Exposing the port my Go app listens to
EXPOSE 4040

# Command to run the application
CMD ["./main"]

