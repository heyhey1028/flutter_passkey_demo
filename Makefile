# Firebase Functions URLs (can be overridden by environment variables)
DEV_FUNCTIONS_URL ?= https://your-functions-url.cloudfunctions.net

# Firebase project IDs
DEV_PROJECT_ID ?= your-project-id

.PHONY: run run-staging run-prod setup-firebase deploy-functions deploy-functions-staging deploy-functions-prod

# Run Flutter app with development configuration
run:
	cd flutter_passkey_demo && flutter run --dart-define=PASSKEY_API_BASE_URL=$(DEV_FUNCTIONS_URL)

# Setup Firebase configuration
setup-firebase:
	./scripts/set-firebase-config.sh

# Deploy Firebase Functions
deploy-functions:
	@echo "Deploying functions to development environment..."
	cd functions && npm install && npm run build && firebase use $(DEV_PROJECT_ID) && firebase deploy --only functions

# Run both setup and app for each environment
setup-and-run: setup-firebase deploy-functions run

# Help command
help:
	@echo "Available commands:"
	@echo "  make run              - Run app with development configuration"
	@echo "  make run-staging      - Run app with staging configuration"
	@echo "  make run-prod         - Run app with production configuration"
	@echo "  make setup-firebase   - Setup Firebase configuration"
	@echo "  make setup-and-run    - Setup Firebase and run app (development)"
	@echo "  make setup-and-run-staging - Setup Firebase and run app (staging)"
	@echo "  make setup-and-run-prod    - Setup Firebase and run app (production)"
	@echo ""
	@echo "Firebase Functions commands:"
	@echo "  make deploy-functions        - Deploy functions to development"
	@echo "  make deploy-functions-staging - Deploy functions to staging"
	@echo "  make deploy-functions-prod    - Deploy functions to production"
	@echo ""
	@echo "Environment variables:"
	@echo "  DEV_FUNCTIONS_URL      - Development Firebase Functions URL"
	@echo "  STAGING_FUNCTIONS_URL  - Staging Firebase Functions URL"
	@echo "  PROD_FUNCTIONS_URL     - Production Firebase Functions URL"
	@echo "  DEV_PROJECT_ID         - Development Firebase project ID"
	@echo "  STAGING_PROJECT_ID     - Staging Firebase project ID"
	@echo "  PROD_PROJECT_ID        - Production Firebase project ID" 