const db_service = require('../services/db_service');

module.exports = {
  details: async (req, res) => {
    let json = { error: '', result: [] }

    let company = req.params.company;
    let state = req.params.state;
    let lote = req.params.lote;

    let details = await db_service.getDetails(company, state, lote);

    for (let i in details) {
      json.result.push({
        city: details[i].city,
        producer: details[i].producer,
        quantity: details[i].quantity,
      })
    }

    return res.json(json);
  },

  people: async (req, res) => {

    let json = { error: '', result: {} };

    let cpf = req.params.cpf;

    let vaccine_sheet = await db_service.getPeople(cpf);

    json.result = vaccine_sheet;

    res.json(json);
  },

  dashboard: async (req, res) => {
    let json = { status: '', result: {} };

    let dashboard = await db_service.getDashboard();

    json.result = dashboard;

    res.json(json);
  },


}



