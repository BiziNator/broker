
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
    
public partial class Client
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Client()
    {

        this.Contract = new HashSet<Contract>();

    }


    public int ID { get; set; }

    public string Surname { get; set; }

    public string Name { get; set; }

    public string Patronymic { get; set; }

    public Nullable<int> IdBroker { get; set; }



    public virtual Broker Broker { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Contract> Contract { get; set; }

}

}
