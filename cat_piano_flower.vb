Public Class CommunityGardensForAll

'Declare global variables
Dim gardenName As String 
Dim gardenLocation As String 
Dim gardenSize As Integer 
Dim numberOfVolunteers As Integer
Dim volunteerName As String 
Dim volunteerEmail As String
Dim volunteerPhone As String

Sub Main()

'Prompt user to input Garden Name
Console.WriteLine("Please Enter Garden Name:")
 gardenName = Console.ReadLine()

'Prompt user to input Garden Location
Console.WriteLine("Please Enter Garden Location:")
 gardenLocation = Console.ReadLine()

'Prompt user to input Garden Size
Console.WriteLine("Please Enter Garden Size(In Acres):")
 gardenSize = Convert.ToInt32(Console.ReadLine())

'Prompt user to input Number of Volunteers
Console.WriteLine("Please Enter Number of Volunteers:")
 numberOfVolunteers = Convert.ToInt32(Console.ReadLine())

For x As Integer = 0 To numberOfVolunteers - 1

'Prompt user to input Volunteer Name
Console.WriteLine("Please Enter Name of Volunteer #" & x + 1 & ":")
 volunteerName = Console.ReadLine()

'Prompt user to input Volunteer Email
Console.WriteLine("Please Enter Email of Volunteer #" & x + 1 & ":")
 volunteerEmail = Console.ReadLine()

'Prompt user to input Volunteer Phone Number
Console.WriteLine("Please Enter Phone of Volunteer #" & x + 1 & ":")
 volunteerPhone = Console.ReadLine()

Next 

'Call CreateGarden() function
CreateGarden(gardenName, gardenLocation, gardenSize, numberOfVolunteers, volunteerName, volunteerEmail, volunteerPhone)
End Sub

Sub CreateGarden(ByVal gName As String, ByVal gLocation As String, ByVal gSize As Integer, ByVal vNumber As Integer, ByVal vName As String, ByVal vEmail As String, ByVal vPhone As String)

Dim conn As New SqlConnection("connection string here")

Dim cmd As New SqlCommand 
cmd.Connection = conn 
cmd.CommandType = CommandType.Text 
conn.Open()

'Insert Garden Information
cmd.CommandText = "INSERT INTO Gardens (GardenName, GardenLocation, GardenSize) VALUES (@GardenName, @GardenLocation, @GardenSize)"
cmd.Parameters.AddWithValue("@GardenName", gName)
cmd.Parameters.AddWithValue("@GardenLocation", gLocation)
cmd.Parameters.AddWithValue("@GardenSize", gSize)
cmd.ExecuteNonQuery()

'Insert Volunteer Information
For x As Integer=0 To vNumber - 1

cmd.CommandText = "INSERT INTO Volunteers (VolunteerName, VolunteerEmail, VolunteerPhone) VALUES (@VolunteerName, @VolunteerEmail, @VolunteerPhone)"
cmd.Parameters.AddWithValue("@VolunteerName", vName)
cmd.Parameters.AddWithValue("@VolunteerEmail", vEmail)
cmd.Parameters.AddWithValue("@VolunteerPhone", vPhone)
cmd.ExecuteNonQuery()

Next 

conn.Close() 
End Sub

End Class