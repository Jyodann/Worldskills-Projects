//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TPQR_Session4_9_1_2020
{
    using System;
    using System.Collections.Generic;
    
    public partial class Assign_Training
    {
        public int trainingId { get; set; }
        public int moduleIdFK { get; set; }
        public string userIdFK { get; set; }
        public System.DateTime startDate { get; set; }
        public int progress { get; set; }
    
        public virtual Training_Module Training_Module { get; set; }
        public virtual User User { get; set; }
    }
}
