//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Livraria.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Autor
    {
        public Autor()
        {
            this.AutorLivro = new HashSet<AutorLivro>();
        }
    
        public int IdAutor { get; set; }
        [Required(ErrorMessage = "Insira o nome do autor!", AllowEmptyStrings = false)]
        public string NomeAutor { get; set; }
    
        public virtual ICollection<AutorLivro> AutorLivro { get; set; }
    }
}
