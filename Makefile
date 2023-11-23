deploy:
	kubectl apply -f namespace.yaml
	kubectl apply -f shipping-service.yaml
	kubectl apply -f order-service.yaml
	kubectl apply -f istio-gateway.yaml
	kubectl	apply -f rabbitmq-deployment.yaml
	kubectl apply -f rabbitmq-service.yaml

.PHONY: deploy