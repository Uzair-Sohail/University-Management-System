import connection

#backend


class db:
    def studentData(self):
        con = connection.connect("students")
        cur = con.cursor()
        cur.execute(
            "CREATE TABLE IF NOT EXISTS student(id INTEGER PRIMARY KEY,StdID text, Firstname text, Surname text, DoB text,Age text, Gender text,Address text,Mobile text)")
        con.commit()
        con.close()


    def addStdRec(StdID, Firstname, Surname, DoB, Age, Gender, Address, Mobile):
        con = connection.connect("project")
        cur = con.cursor()
        #add_user = '''(INSERT INTO DB.tbluser (username, department, startyear, currentpos, link) VALUES (%s, %s, %s, %s, %s))''' % data_user
        # cur.execute("INSERT INTO student (student_id, fname, lname, dob, gender, address, mobile) VALUES (?,?,?,?,?,?,?) ", (StdID, Firstname, Surname, DoB, Gender, Address, Mobile))
        cur.execute("INSERT INTO student (student_id, fname, lname, dob, gender, address, mobile, date_of_join, grade, phone) VALUES (" + StdID + ",'" + Firstname + "','" + Surname + "','" + DoB + "','" + Gender + "','" + Address + "','" + Mobile + "','2000-01-01', 1,'" + Age + "') ")
                    #, (StdID, Firstname, Surname, DoB, Gender, Address, Mobile))
        con.commit()
        con.close()


    def viewData(self):
        con = connection.connect("project")
        cur = con.cursor()
        cur.execute("SELECT student_id, fname, lname, dob, phone, gender, address, mobile FROM student")
        rows = cur.fetchall()
        con.close()
        return rows


    def deleteRec(id):
        con = connection.connect("project")
        cur = con.cursor()
        cur.execute("DELETE FROM student WHERE student_id="+str(id))
        con.commit()
        con.close()


    def searchData(StdID = "", Firstname="", Surname="", DoB="", Age="", Gender="", Address="", Mobile=""):
        con = connection.connect("project")
        cur = con.cursor()
        # print("SELECT student_id, fname, lname, dob, phone, gender, address, mobile FROM student WHERE  fname like '%" + Firstname + "%' OR lname like '%" + Surname + "%'")
        cur.execute(
            "SELECT student_id, fname, lname, dob, phone, gender, address, mobile FROM student WHERE fname like '%" + Firstname + "%'")

            #(StdID, Firstname, Surname, DoB, Age, Gender, Address, Mobile))
        rows = cur.fetchall()
        con.close()
        return rows


    def dataUpdate(id, Firstname="", DoB="", Gender = "", Address="", Mobile=""):
        con = connection.connect("project")
        cur = con.cursor()
        # print("UPDATE student SET  fname='" + Firstname + "', DoB='" + DoB + "',address='" + Address + "',Mobile='" + Mobile + "' WHERE student_id=" + id + "")
        cur.execute("UPDATE student SET  fname='" + Firstname + "', DoB='" + DoB + "',address='" + Address + "',Mobile='" + Mobile + "', gender = '" + Gender + "' WHERE student_id=" + id + "")
                    #(StdID, Firstname, Surname, DoB, Age, Gender, Address, Mobile, id))

        con.commit()
        con.close()


#db.studentData()
