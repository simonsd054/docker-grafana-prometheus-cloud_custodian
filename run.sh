python -m venv .venv
source .venv/bin/activate
source env.sh
pip install prometheus_client c7n pandas
echo $ACCESS_KEY
echo $SECRET_KEY
echo $S3_BUCKET
AWS_ACCESS_KEY_ID=$ACCESS_KEY AWS_SECRET_ACCESS_KEY=$SECRET_KEY custodian run -s s3://$S3_BUCKET/iam-role/{policy_name} --region ap-southeast-2 iam-role.yml
sleep 10
python roles.py