//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Covid19WebApp
{
    using System;
    using System.Collections.Generic;
    
    public partial class FTE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FTE()
        {
            this.ContactTracings = new HashSet<ContactTracing>();
        }
    
        public long ID { get; set; }
        public string NRIC { get; set; }
        public string UserID { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Contact { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ContactTracing> ContactTracings { get; set; }
    }
}
