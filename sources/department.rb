require 'json'
require 'rest_client'

class Department < SourceAdapter
  def initialize(source) 
    @base = 'http://osiris03441.osiris.net:60199/GetAllDepartments.ashx'
    super(source)
  end
 
  def login
    # TODO: Login to your data source here if necessary
  end
 
  def query(params=nil)
    parsed = JSON.parse(RestClient.get("#{@base}").body)
    @result = {}
      
      parsed.each do |item|
        @result[item["DepartmentId"]] = item
      end
  end
 
  def sync
    # Manipulate @result before it is saved, or save it 
    # yourself using the Rhoconnect::Store interface.
    # By default, super is called below which simply saves @result
    super
  end
 
  def create(create_hash)
   # res = RestClient.post(@base, :Department => create_hash)
    
   # JSON.parse(RestClient.get("#{res.headers[:locations]}").body)["Department"]["DepartmentId"]
  end
 
  def update(update_hash)
    # TODO: Update an existing record in your backend data source
    raise "Please provide some code to update a single record in the backend data source using the update_hash"
  end
 
  def delete(delete_hash)
    # TODO: write some code here if applicable
    # be sure to have a hash key and value for "object"
    # for now, we'll say that its OK to not have a delete operation
    # raise "Please provide some code to delete a single object in the backend application using the object_id"
  end
 
  def logoff
    # TODO: Logout from the data source if necessary
  end
end