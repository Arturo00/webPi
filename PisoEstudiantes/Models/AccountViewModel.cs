using System.ComponentModel.DataAnnotations;

namespace PisoEstudiantes.Models
{
        public class LoginViewModel
        {
            [Required]
            [EmailAddress]
            [Display(Name = "Correo electrónico")]
            public string Email { get; set; }

            [Required]
            [DataType(DataType.Password)]
            [Display(Name = "Contraseña")]
            public string Password { get; set; }

            [Display(Name = "¿Recordar cuenta?")]
            public bool RememberMe { get; set; }
        }

        public class RegisterViewModel
        {
            [Required]
            [Display(Name = "Nombre")]
            public string Name { get; set; }

            [Required]
            [Display(Name = "Apellidos")]
            public string Surname { get; set; }

            [Required]
            [EmailAddress]
            [Display(Name = "Correo electrónico")]
            public string Email { get; set; }

            public string Age { get; set; }
            public string Leaseholder { get; set; }
            public string Gender { get; set; }

            [Required]
            [DataType(DataType.PhoneNumber)]
            [Display(Name = "Teléfono")]
            public string Phone { get; set; }

            [Required]
            [DataType(DataType.Password)]
            [Display(Name = "Contraseña")]
            public string Password { get; set; }

            [Required]
            [DataType(DataType.Password)]
            [Display(Name = "Confirmar contraseña")]
            public string ConfirmPassword { get; set; }

        }
}