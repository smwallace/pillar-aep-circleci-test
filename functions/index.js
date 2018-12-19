const functions = require('firebase-functions');
const {dialogflow} = require('actions-on-google');

const app = dialogflow({debug: true});

app.intent('final_confirm', (conv, {address}) => {
    conv.close(`Thank you, your power has been reported at ${address}. Thanks for using Pillar Voice!`);
});

exports.dialogflowFirebaseFulfillment = functions.https.onRequest(app);