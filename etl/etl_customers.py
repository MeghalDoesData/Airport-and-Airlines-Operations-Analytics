import sys
from awsglue.utils import getResolvedOptions

args = getResolvedOptions(sys.argv, [])

print("Running Customers ETL Job")
