const db = require('../../config/data_base');

module.exports = {

  getDetails: async (company, state, lote) => {
    return new Promise((resolve, reject) => {

      db.query('SELECT * FROM delivery WHERE company = ? AND state = ? AND lote = ?', [company, state, lote], (error, results) => {
        if (error) { reject(error); return; }
        resolve(results);
      });
    });
  },

  getPeople: (cpf) => {
    return new Promise((resolve, reject) => {

      db.query('SELECT * FROM peoples WHERE cpf = ?', [cpf], (error, results) => {
        if (error) { reject(error); return; }
        resolve(results);
      });

    });
  },

  getDashboard: (title, body) => {
    return new Promise((resolve, reject) => {

      db.query('SELECT * FROM dashboard', (error, results) => {
        if (error) { reject(error); return; }
        resolve(results);
      });
    });
  },


}
