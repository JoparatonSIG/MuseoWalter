module.exports = function (sequielize, DataTypes) {
  var Nivel = sequielize.define(
    'Nivel',
  {
    id: {
      type: DataTypes.BIGINT(11),
      primaryKey: true,
      autoIncrement: true,
      comment: 'nid, primary Key, Nivel ID'
    },
    categoria: {
      type: DataTypes.STRING(255),
      allowNull: false,
      defaultValue: 'none',
      comment: 'none, categoria'
    }
  }
);
  return Nivel;
};
