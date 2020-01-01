using System;

namespace Mcd.Admin.Data.Dto
{
    public class Employee
    {
        public string Id { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string FullName { get; set; }

        public string Contact { get; set; }

        public string Position { get; set; }
        
        public DateTime DateJoined { get; set; }

        public DateTime LastModified { get; set; }
    }
}
