using System;

namespace Mcd.Client.Data.Dto
{
    public class Beverage
    {
        public string Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public DateTime Created { get; set; }

        public DateTime LastModified { get; set; }
    }
}
