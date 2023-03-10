//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebAPI
{
    using System;
    using System.Collections.Generic;
    
    public partial class PMTask
    {
        public long ID { get; set; }
        public long AssetID { get; set; }
        public long TaskID { get; set; }
        public long PMScheduleTypeID { get; set; }
        public Nullable<System.DateTime> ScheduleDate { get; set; }
        public Nullable<long> ScheduleKilometer { get; set; }
        public Nullable<bool> TaskDone { get; set; }
    
        public virtual Asset Asset { get; set; }
        public virtual PMScheduleType PMScheduleType { get; set; }
        public virtual Task Task { get; set; }
    }
}
