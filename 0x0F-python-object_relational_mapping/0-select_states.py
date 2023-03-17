#!/usr/bin/env python3

"""
Lists all states from the database hbtn_0e_0_usa.

Usage:
    ./0-select_states.py <mysql username> <mysql password> <database name>
"""

import MySQLdb
import sys

if __name__ == "__main__":
    # Connect to the MySQL server running on localhost at port 3306
    db = MySQLdb.connect(
        host="localhost",
        port=3306,
        user=sys.argv[1],
        passwd=sys.argv[2],
        db=sys.argv[3])

    # Create a cursor object to execute queries
    cursor = db.cursor()

    # Execute the query to retrieve all states from the database and sort by id
    cursor.execute("SELECT * FROM states ORDER BY id ASC")

    # Fetch all the results and print them out
    for state in cursor.fetchall():
        print(state)

    # Close the database connection
    db.close()
