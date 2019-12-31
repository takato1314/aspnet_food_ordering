using System;

namespace Mcd.Admin.Data.Dto
{
    public class Item
    {
        public string Id { get; set; }

        public string Name { get; set; }

        public string Type { get; set; }

        public string Description { get; set; }

        public DateTime Created { get; set; }

        public DateTime LastModified { get; set; }
    }
}
