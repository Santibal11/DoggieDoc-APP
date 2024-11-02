Feature: US01 - Registro en la aplicación
Como dueño de un can, quiero registrarme en la aplicación para guardar mi información.

Scenario Outline: Crear cuenta correctamente
Given que el dueño de un can se encuentra en la pantalla de inicio de sesión,
When el usuario selecciona "Regístrate" e ingresa sus <Datos>,
And selecciona el botón "Crear cuenta",
Then la aplicación muestra un mensaje de confirmación de cuenta creada correctamente.

Examples: INPUT
| Datos                                                           |
| Nombre: Juan Pérez, Email: juan@example.com, Contraseña: 12345  |

Examples: OUTPUT
| Mensaje                                  |
| Cuenta creada correctamente              |

Scenario Outline: Registrar datos del can
Given que el dueño de un can se encuentra en la pantalla de confirmación de creación de cuenta,
When el usuario selecciona el botón "Siguiente" e ingresa los <Datos del Can>,
And selecciona el botón "Aceptar",
Then la aplicación muestra el menú principal de la aplicación.

Examples: INPUT
| Datos del Can                              |
| Nombre: Fido, Edad: 3 años, Raza: Labrador |

Examples: OUTPUT
| Mensaje                                    |
| Menú principal de la aplicación         vfvdfgvfdgtdfgdetgerg   |
