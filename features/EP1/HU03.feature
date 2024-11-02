Feature: US03 - Editar perfil
Como dueño de un can, quiero contar con un perfil para almacenar mi información y la de mi can.

Scenario Outline: Ingresar a la pantalla de perfil
Given que el dueño de un can se encuentra en la pantalla del menú principal,
When selecciona el ícono de perfil,
Then el usuario visualiza los botones “Mis datos” y “Datos de mi can”.

Examples: OUTPUT
| Botones visibles                       |
| Mis datos, Datos de mi can             |

Scenario Outline: Editar información del usuario
Given que el dueño de un can se encuentra en la pantalla del perfil,
When selecciona el botón “Mis datos” y selecciona el botón “Editar”,
Then el usuario puede cambiar los datos que desee.

Examples: INPUT
| Datos del usuario                      |
| Nombre: Juan Pérez, Email: juan@example.com |

Examples: OUTPUT
| Mensaje                                |
| Datos actualizados correctamente       |

Scenario Outline: Editar información del can
Given que el dueño de un can se encuentra en la pantalla del perfil,
When selecciona el botón “Datos de mi can” y selecciona el botón “Editar”,
Then el usuario puede cambiar los datos que desee de su can.

Examples: INPUT
| Datos del Can                          |
| Nombre: Fido, Edad: 3 años, Raza: Labrador |

Examples: OUTPUT
| Mensaje                                |
| Datos del can actualizados correctamente|
