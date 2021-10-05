const express = require('express');

const router = express.Router();

const route_controller = require('../controllers/route_controller');

router.get('/details/:company/:state/:lote', route_controller.details);

router.get('/people/:cpf', route_controller.people);

router.get('/dashboard', route_controller.dashboard);


module.exports = router;