#Defining constants for the project
ORGANIZATION_NAME = 'Community Gardens for All'
IDEAL_LOCATION = 'Urban Centers'
NUM_REQUIRED_VOLUNTEERS = 5

#Setting Up the Community Garden
#Creating the garden space
def create_garden_space(location):
    '''This function creates the actual garden space. It takes in a location argument 
    and sets up the space in the desired location.'''
    #Code to create the garden space
    
#Recruiting Volunteers
def recruit_volunteers(num):
    '''This function recruits volunteers to help work in the garden. It takes in a number 
    that indicates the number of volunteers that are needed.'''
    #Code to recruit volunteers

#Developing Planting Plan
def develop_planting_plan():
    '''This function creates a plan for what plants will be planted and when.'''
    #Code to develop planting plan

#Initiating Planting
def initiate_planting():
    '''This function initiates the planting of the garden according to the planting plan.'''
    #Code to initiate planting

#Creating Maintenance Schedule
def create_maintenance_schedule():
    '''This function creates a regular maintenance schedule for the garden.'''
    #Code to create maintenance schedule

#Promoting Garden
def promote_garden():
    '''This function promotes the garden to the local community to encourage people 
    to visit and get involved in the project.'''
    #Code to promote the garden

#Main Function
def main():
    #Creating the garden space
    create_garden_space(IDEAL_LOCATION)
    
    #Recruiting volunteers
    recruit_volunteers(NUM_REQUIRED_VOLUNTEERS)
    
    #Developing planting plan
    develop_planting_plan()
    
    #Initiating planting
    initiate_planting()
    
    #Creating maintenance schedule
    create_maintenance_schedule()
    
    #Promoting garden
    promote_garden()
    
    print('Project {} has been completed!'.format(ORGANIZATION_NAME))

#Calling main function
if __name__ == '__main__':
    main()