'use strict';
module.exports = (sequelize, DataTypes) => {
  const Theme_author = sequelize.define('theme_authors', {
    author_theme_name: {
      type: DataTypes.STRING(100)
    },
    author_slug: {
      type: DataTypes.STRING(100)
    }
  }, {});
  Theme_author.associate = function (models) {
    Theme_author.hasOne(models.Theme, { foreignKey: 'theme_author', as: 'theme_author' })
  };
  return Theme_author;
};
