#!/bin/bash

# ===========================================
# Deploy Script - Personal Trainer Web
# ===========================================

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}=========================================${NC}"
echo -e "${GREEN}  Personal Trainer Web - Deploy Script  ${NC}"
echo -e "${GREEN}=========================================${NC}"

# Check if docker is running
if ! docker info > /dev/null 2>&1; then
    echo -e "${RED}Error: Docker is not running${NC}"
    exit 1
fi

# Parse arguments
ACTION=${1:-deploy}

case $ACTION in
    build)
        echo -e "${YELLOW}Building Docker image...${NC}"
        docker compose -f docker-compose.prod.yml build --no-cache
        echo -e "${GREEN}Build completed!${NC}"
        ;;
    
    deploy)
        echo -e "${YELLOW}Deploying application...${NC}"
        
        # Stop existing container if running
        docker compose -f docker-compose.prod.yml down 2>/dev/null || true
        
        # Build and start
        docker compose -f docker-compose.prod.yml build
        docker compose -f docker-compose.prod.yml up -d
        
        echo -e "${GREEN}Deployment completed!${NC}"
        echo -e "${YELLOW}Checking container status...${NC}"
        docker compose -f docker-compose.prod.yml ps
        ;;
    
    stop)
        echo -e "${YELLOW}Stopping application...${NC}"
        docker compose -f docker-compose.prod.yml down
        echo -e "${GREEN}Application stopped!${NC}"
        ;;
    
    restart)
        echo -e "${YELLOW}Restarting application...${NC}"
        docker compose -f docker-compose.prod.yml restart
        echo -e "${GREEN}Application restarted!${NC}"
        ;;
    
    logs)
        echo -e "${YELLOW}Showing logs...${NC}"
        docker compose -f docker-compose.prod.yml logs -f
        ;;
    
    status)
        echo -e "${YELLOW}Container status:${NC}"
        docker compose -f docker-compose.prod.yml ps
        echo ""
        echo -e "${YELLOW}Container health:${NC}"
        docker inspect --format='{{.State.Health.Status}}' personal-trainer-web 2>/dev/null || echo "Container not found"
        ;;
    
    shell)
        echo -e "${YELLOW}Opening shell in container...${NC}"
        docker exec -it personal-trainer-web /bin/sh
        ;;
    
    *)
        echo -e "${YELLOW}Usage: $0 {build|deploy|stop|restart|logs|status|shell}${NC}"
        echo ""
        echo "Commands:"
        echo "  build   - Build Docker image without cache"
        echo "  deploy  - Build and deploy application"
        echo "  stop    - Stop application"
        echo "  restart - Restart application"
        echo "  logs    - Show application logs"
        echo "  status  - Show container status"
        echo "  shell   - Open shell in container"
        exit 1
        ;;
esac
