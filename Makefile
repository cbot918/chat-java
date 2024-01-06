
SERVER_ENTRY=GameServer
CLIENT_ENTRY=GamePlatform

server: server-build
	java -cp bin $(SERVER_ENTRY)

server-build: server/$(SERVER_ENTRY).java
	javac -cp server -d bin server/*.java

client: client-build
	java -cp bin $(CLIENT_ENTRY)

client-build:	client/$(CLIENT_ENTRY).java
	javac -cp client -d bin client/*.java


.PHONY: server server-build
.SILENT: server server-build