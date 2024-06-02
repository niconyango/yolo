# Project description

The project has `node` for backend,`react` for frontend and `MongoDB` for database. Both interfaces are available in docker images which are to be containerized in docker and then orchestrated using kubernetes.

# Set up process

# Tech stack

- `Docker`: this is to aid in contenerization of `frontend`,`backend` and `database`.
- `Kubernetes`: this if for orchestration.
- `kubectl`: `cli` tool to enable us communicate with `kubernetes`.

With the environment set and requirements met, below commands helps achieve the desired objectives.

- `kubectl apply -f mongopv.yaml`
- `kubectl apply -f mongopvc.yaml`
- `kubectl apply -f mongo.yaml`
- `kubectl apply -f mongo-service.yaml`
- `kubectl apply -f backend-deployment.yaml`
- `kubectl apply -f backend-service.yaml`
- `kubectl apply -f frontend-deployment.yaml`
- `kubectl apply -f frontend-service.yaml`
