module.exports = function (sequielize, DataTypes) {
  var User = sequielize.define(
    'User',
  {
    id: {
      type: DataTypes.BIGINT(11),
      primaryKey: true,
      autoIncrement: true,
      comment: 'nid, primary Key, User ID'
    },
    email: {
      type: DataTypes.STRING(255),
      allowNull: false,
      defaultValue: 'none',
      comment: 'none, Username must be unique'
    },
    nombre: {
      type: DataTypes.STRING(512),
      allowNull: false,
      defaultValue: 'Sin nombre alguno',
      comment: 'nombre, User\'s name'
    },
    password: {
        type: DataTypes.STRING(225),
        allowNull: false,
        defaultValue: 'none',
        comment: 'pwd, User\'s hashed password'
      }
  }
  );
  return User;
};
