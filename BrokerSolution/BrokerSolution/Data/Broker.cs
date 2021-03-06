
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------


namespace BrokerSolution.Data
{

using System;
    using System.Collections.Generic;
    
public partial class Broker
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Broker()
    {

        this.Client = new HashSet<Client>();

        this.Contract = new HashSet<Contract>();

    }


    public int ID { get; set; }

    public string Surname { get; set; }

    public Nullable<int> RoleBroker { get; set; }

    public string Login { get; set; }

    public string Password { get; set; }



    public virtual Role Role { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Client> Client { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Contract> Contract { get; set; }

}

}
