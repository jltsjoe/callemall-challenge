# Text-Em-All Challenge Project

To execute the project:

1.- Please open the solution with VS2017 or later

2.- Create the stored procedure in the local School database where the project will connect to, script attached

3.- Change the connection string to the local School database in the Web.Config:

    <add name="LocalDB" providerName="System.Data.SqlClient" connectionString="Data Source=.\SQLEXPRESS;Initial Catalog=School;IntegrateSecurity=True;MultipleActiveResultSets=True"></add>
    
4.- Start the project

5.- End point to test Challenge 1: http://localhost:61210/api/students/GetGPA (or the server where the projectis deployed)

6.- End point to test Challenge 2: http://localhost:61210/api/students/MaxDistance/gbcjbdha (or other string), created as a http GET for accesibility and testability

I tried to keep the solution as simple as possible. This can be adapted to follow the existing coding standards in Text-Em-All.
