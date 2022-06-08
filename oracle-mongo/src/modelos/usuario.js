class Usuario {
  constructor({
    NOMBREUSUARIO,
    CONTRASENIA,
    NOMBREPUBLICO,
    BIOGRAFIA,
    FECHANACIMIENTO,
    FECHACREACION,
    MODORECUPERACION,
    TELEFONORECUPERACION,
    MAILRECUPERACION,
    FOTOURL,
    FOTOTIPO,
    FOTOTAMANIOMB,
    BANNERURL,
    BANNERTIPO,
    BANNERTAMANIOMB,
    SALDOBITS,
    NIVEL,
  }) {
      this.nombreUsuario = NOMBREUSUARIO;
      this.contrasenia = CONTRASENIA;
      this.nombrePublico = NOMBREPUBLICO;
      this.biografia = BIOGRAFIA;
      this.fechaNacimiento = FECHANACIMIENTO;
      this.fechaCreacion = FECHACREACION;
      this.modoRecuperacion = MODORECUPERACION;
      this.telefonoRecuperacion = TELEFONORECUPERACION;
      this.mailRecuperacion = MAILRECUPERACION;
      this.fotoUrl = FOTOURL;
      this.fotoTipo = FOTOTIPO;
      this.fotoTamanioMb = FOTOTAMANIOMB;
      this.bannerUrl = BANNERURL;
      this.bannerTipo = BANNERTIPO;
      this.bannerTamanioMB = BANNERTAMANIOMB;
      this.saldoBits = SALDOBITS;
      this.nivel = NIVEL;
  }
}

module.exports = { Usuario };
