const args = process.argv.slice(2);
const request = require('request');


request(`https://api.thecatapi.com/v1/breeds/search?q=${args[0]}`, (error, response, body) => {
  
  if (error) {
    console.log(error);
  }  else {

    const data = JSON.parse(body);

    if (data.length === 0) {
      console.log('breed description not available.');

  } else {
      console.log(data[0]['description']);
    }
  
  }

});

