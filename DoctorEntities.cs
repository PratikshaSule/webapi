using System;
using System.Collections.Generic;
using System.Text;
using PatientManagementSystemEntities;

namespace PatientManagementSystemEntities
{
    public class DoctorEntities
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string DoctorID { get; set; }
        public string Gender { get; set; }
        public int Phone { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string Profession{ get; set; }
        public string Education { get; set; }
    }
}
