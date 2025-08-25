#!/bin/bash
# scripts/setup.sh
echo "🚀 Setting up Python DevOps Demo Project"

# Create keys directory (outside repo)
echo "📁 Create keys directory (outside repository)"
mkdir -p ../devops-keys
echo "🔐 Store your MyPythonAppKey.pem in ../devops-keys/"

echo "✅ Setup complete! Read docs/security/ssh-keys.md for key management."

#Make it executable:
chmod +x scripts/setup.sh