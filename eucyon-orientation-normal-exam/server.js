const express = require('express');
const router = express.Router();

router.use(express.json());


router.get('/api/group', getGroups);

router.get('/api/list', getUsers);

router.post('/api/add', addUsers);

const connection = require('./../db');


function getUsers(req, res) {
    const sql = SELECT * FROM users;
    connection.query(sql, function(error, results) {
        if (error) {
            res.status(500).send({ "error": "Database error" });
            return;
        }
        res.send(results);
    });
}

function addUsers(req, res, data) {
    let users = data.split(',');
    users.forEach(name => {
        let sql = INSERT INTO users (name) VALUES ("${name}");
        connection.query(sql, data, function(error, results) {
            if (error) {
                res.status(500).send({ "error": "Database error" });
                return;
            }
        });
    });
    let response = {"saved":${users.length}};
    res.send(JSON.parse(response));
}

function getGroups(req, res) {
    let groups = [];
    const sql = SELECT * FROM users;
    connection.query(sql, function(error, results) {
        if (error) {
            res.status(500).send({ "error": "Database error" });
            return;
        }
        let num = req.body.count
        for(i = 0; i < num; i++) {
            groups.push([]);
        }

        for(i = 0; i < Object.keys(results).length; i++) {
            if(i % 3 === 0) {
                groups[0].push(results[i].name)
            } else if(i % 3 === 1) {
                groups[1].push(results[i].name)
            } else {
                groups[2].push(results[i].name)
            }
        }

        let groupsRespond = JSON.stringify(groups);
        res.send(groupsRespond);
    });
}


module.exports = router;