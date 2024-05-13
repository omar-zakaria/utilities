# Multi-tenant

## Prisma
- There's a prisma library to manage multi-tenancy; it's a bit outdated. [prisma-multi-tenant](https://github.com/Errorname/prisma-multi-tenant)
- It uses the following command: `migrate up --create-db` which creates database if it doesn't exist and runs migrations.                                                                                                                                                                                                                                                     

## Good to know
- Implement isolation at the database level.
- Connect Client to specific database based on tenant subdomain
- Be wary, should you be implementing microservices, technically each microservice