#!/usr/bin/env python3

"""Lists all states from the database hbtn_0e_0_usa.

Usage:
    ./0-select_states.py <mysql username> <mysql password> <database name>
"""

import sys
import MySQLdb

def main():
    """Connects to the database and retrieves all states from the states table."""
    try:
        db = MySQLdb.connect(
            user=sys.argv[1], passwd=sys.argv[2], db=sys.argv[3], host="localhost", port=3306)
        cursor = db.cursor()
        cursor.execute("SELECT * FROM states")
        states = cursor.fetchall()
        for state in states:
            print(state)
    except MySQLdb.Error as e:
        print("Error connecting to the database:", e)
        sys.exit(1)
    finally:
        db.close()

if __name__ == "__main__":
    main()
