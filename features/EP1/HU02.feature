Feature: US02 - Iniciar sesión en la aplicación
Como dueño de un can, quiero iniciar sesión en la aplicación para ingresar desde cualquier dispositivo móvil.

Scenario Outline: Inicio correcto de sesión
Given que el dueño de un can se encuentra en la pantalla principal,
When el usuario selecciona el botón "Iniciar sesión" e ingresa su <Correo> y <Contraseña> con el que se registró,
And selecciona el botón "Iniciar sesión",
Then la aplicación muestra la pantalla del menú principal.

Examples: INPUT
| Correo                  | Contraseña |
| juan.perez@example.com  | Password123  |

Examples: OUTPUT
| Mensaje                |
| Menú principal de la aplicación |

Scenario Outline: Ingreso erróneo de dato
Given que el dueño de un can se encuentra en la pantalla de inicio de sesión,
When el usuario ingresa mal su <Correo> o <Contraseña> con el que se registró,
And selecciona el botón "Iniciar sesión",
Then la aplicación muestra un mensaje de error y pide volver a ingresar sus datos.

Examples: INPUT
| Correo                  | Contraseña |
| juan.perez@example.com  | WrongPass123  |

Examples: OUTPUT
| Mensaje                |
| Error: correo o contraseña incorrectos. Intente nuevamente. |

Scenario Outline: Iniciar sesión sin haberse registrado
Given que el dueño de un can se encuentra en la pantalla de inicio de sesión,
When el usuario ingresa su <Correo> y <Contraseña> sin haberse registrado,
And selecciona el botón "Iniciar sesión",
Then la aplicación muestra un mensaje diciendo que no se encontró la cuenta.

Examples: INPUT
| Correo                  | Contraseña |
| noexiste@example.com    | Password123  |

Examples: OUTPUT
| Mensaje                |
| Error: no se encontró la cuenta. |
