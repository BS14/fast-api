local:
	@echo "Creating a Image."
	docker build -t fastapiapp:latest .
	docker stop fastapi_local && docker rm fastapi_local
	docker run -d -p 8080:8080 --name fastapi_local fastapiapp:latest 

say_goodbye:
	@echo "Good Bye!!"