import random
import time

ERRORS_LIST = ["401","403","404","501","502","503","504"]
SUCCESS_LIST = ["200"]*100
HTTP_STATUS_LIST = ERRORS_LIST+SUCCESS_LIST
USERS_LIST = ["Omer","Dan","Osnat","Shira","Idan","Avi","Eli","Arnit","Coral","Yair","Ira","Dominos Pizza","Small Business"]
BUSINESS_LIST = ["Dominos Pizza","Small Business"]
AMOUNT_LIST = range(1,3600)


def main():

	while True:
		status = random.choice(HTTP_STATUS_LIST)
		user = random.choice(USERS_LIST)
		is_business = False
		if (user in BUSINESS_LIST):
			is_business = True
		amount = random.choice(AMOUNT_LIST)
		print (user, is_business, status, amount)
		time.sleep(30)
		
if __name__ == "__main__":
	main()
