# SSH Key Management

## Generating SSH Keys

# Create a new key pair
aws ec2 create-key-pair \
  --key-name MyPythonAppKey \
  --query 'KeyMaterial' \
  --output text > MyPythonAppKey.pem

# Set secure permissions
chmod 400 MyPythonAppKey.pem

Required Key

This project requires an EC2 key pair named: MyPythonAppKey