'use strict';

const btn = document.querySelector('.btn-country');
const countriesContainer = document.querySelector('.countries');

const renderError = function (msg) {
  countriesContainer.insertAdjacentText('beforeend', msg);
  //   countriesContainer.style.opacity = 1;
};

///////////////////////////////////////

const renderCountry = function (data, className = '') {
  const html = `
      <article class="country ${className}">
          <img class="country__img" src="${data.flag}" />
          <div class="country__data">
              <h3 class="country__name">${data.name}</h3>
              <h4 class="country__region">${data.region}</h4>
              <p class="country__row"><span>👫</span>${(
                +data.population / 1000000
              ).toFixed(1)} people</p>
              <p class="country__row"><span>🗣️</span>${
                data.languages[0].name
              }</p>     <p class="country__row"><span>💰</span>${
    data.currencies[0].name
  }
          </p>
          </div>
      </article>`;

  countriesContainer.insertAdjacentHTML('beforeend', html);
  countriesContainer.style.opacity = 1;
};

// const getCountryAndNeighbour = function (country) {
//   //AJAX Call Country 1
//   const request = new XMLHttpRequest();
//   request.open('GET', `https://restcountries.com/v2/name/${country}`);
//   request.send();

//   request.addEventListener('load', function () {
//     const [data] = JSON.parse(this.responseText); // console.log(data); // Render Country 1
//     renderCountry(data); //Get Neighbours AS ALPHA

//     const neighbours = [...data.borders]; //Check if none neighbour
//     if (!neighbours) return;

//     neighbours.forEach(alphaNeighbour => {
//       //   AJAX Call Neighbours Country Name
//       const request2 = new XMLHttpRequest();
//       request2.open(
//         'GET',
//         `https://restcountries.com/v3.1/alpha/${alphaNeighbour}`
//       );
//       request2.send();
//       request2.addEventListener('load', function () {
//         const [data2] = JSON.parse(this.responseText);

//         //Getting Neighbour Name
//         console.log(data2.name.common);

//         //   AJAX Call Neighbours
//         const request3 = new XMLHttpRequest();
//         request3.open(
//           'GET',
//           `https://restcountries.com/v2/name/${data2.name.common}`
//         );
//         request3.send();
//         //Render Neighbour
//         request3.addEventListener('load', function () {
//           const [data3] = JSON.parse(this.responseText);
//           renderCountry(data3, 'neighbour');
//         });
//       });
//     });
//   });
// };

// getCountryAndNeighbour('brazil');

// ---------------------------------------------------
/* function renderCountry(data, className = '') {
  console.log(data);
  const html = `
    <article class="country ${className}">
        <img class="country__img" src="${data.flags.png}" />
        <div class="country__data">
            <h3 class="country__name">${data.name.common}</h3>
            <h4 class="country__region">${data.region}</h4>
            <p class="country__row"><span>👫</span>${Number(
              data.population / 1000000
            ).toFixed()}M people</p>
            <p class="country__row"><span>🗣️</span>${
              Object.values(data.languages)[0].name
            }</p>
            <p class="country__row"><span>💰</span>${
              Object.values(data.currencies)[0].name
            }</p>
        </div>
    </article>`;

  countriesContainer.insertAdjacentHTML('beforeend', html);
}

const getCountryData = function (country) {
  fetch(`https://restcountries.com/v2/name/${country}`)
    .then(function (response) {
      console.log(response);
      return response.json();
    })
    .then(function (data) {
      console.log(data);
      renderCountry(data[0]);
    });
}; */

// ----------------------------------------------------------

/* const getJSON = function (url, errorMsg = 'Something went wrong') {
  return fetch(url).then(response => {
    if (!response.ok) {
      throw new Error(`${errorMsg} (${response.status})`);
    }
    return response.json();
  });
}; */

//-------------------------------

// const getCountryData = function (country) {
//   fetch(`https://restcountries.com/v2/name/${country}`)
//     .then(response => {
//       if (!response.ok) {
//         throw new Error(`Country no found (${response.status})`);
//       }
//       return response.json();
//     })
//     .then(data => {
//       renderCountry(data[0]);
//       const neighbour = data[0].borders[0];

//       if (!neighbour) return;

//       return fetch(`https://restcountries.com/v2/alpha/${neighbour}`);
//     })
//     .then(response => response.json())
//     .then(data => renderCountry(data, 'neighbour'))
//     .catch(err => {
//       console.error(`${err} 👽`);
//       renderError(`Wrong 👽! ${err.message}. Try again!`);
//     })
//     .finally(() => {
//       countriesContainer.style.opacity = 1;
//     });
// };

/* const getCountryData = function (country) {
  getJSON(`https://restcountries.com/v2/name/${country}`, 'Country no found')
  
    .then(data => {
      renderCountry(data[0]);
      const neighbour = data[0].borders;

      if (!neighbour) throw new Error ('No neighbour found');

      // Country 2
      return getJSON(
        `https://restcountries.com/v2/alpha/${neighbour}`,
        'Country no found'
      );
    })

    .then(data => renderCountry(data, 'neighbour'))
    .catch(err => {
      console.error(`${err} 👽`);
      renderError(`Wrong 👽! ${err.message}. Try again!`);
    })
    .finally(() => {
      countriesContainer.style.opacity = 1;
    });
};

btn.addEventListener('click', function () {
  getCountryData('australia');
}); */

// btn.addEventListener('click', function () {
//   getCountryData('dsadasas');
// });

// Coding challenge #1

// function renderCountry(data, className = '') {
//   console.log(data);
//   const html = `
//     <article class="country ${className}">
//         <img class="country__img" src="${data.flags.png}" />
//         <div class="country__data">
//             <h3 class="country__name">${data.name.common}</h3>
//             <h4 class="country__region">${data.region}</h4>
//             <p class="country__row"><span>👫</span>${Number(
//               data.population / 1000000
//             ).toFixed()}M people</p>
//             <p class="country__row"><span>🗣️</span>${
//               Object.values(data.languages)[0].name
//             }</p>
//             <p class="country__row"><span>💰</span>${
//               Object.values(data.currencies)[0].name
//             }</p>
//         </div>
//     </article>`;

//   countriesContainer.insertAdjacentHTML('beforeend', html);
// }

// ----------

/* const getCountryData = function (country) {
  fetch(`https://restcountries.com/v2/name/${country}`)
    .then(function (response) {
      console.log(response);
      return response.json();
    })
    .then(function (data) {
      console.log(data);
      renderCountry(data[0]);
    });
};

const whereAmI = function (lat, lng) {
  fetch(
    `https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=${lat}&longitude=${lng}&localityLanguage=en`
  )
    .then(response => {
      if (!response.ok) throw new Error(`Errou ${response.status}`);

      return response.json();
    })
    .then(data => {
      console.log(data);
      console.log(`You are in ${data.city}, ${data.countryName}`);

      return fetch(`https://restcountries.com/v2/name/${data.countryName}`);
    })
    .then(response => {
      if (!response.ok)
        throw new Error(`Country not found (${response.status})`);

      return response.json();
    })
    .then(data => renderCountry(data[0]))
    .catch(err => {
      console.error(`${err.message}!!!!!`);
    });
};
 */

// ------------
/* whereAmI(52.508, 13.381);
whereAmI(19.037, 72.873);
whereAmI(-33.933, 18.474);
whereAmI(-33.933, 18.474); */

// ----------------------------

/* navigator.geolocation.getCurrentPosition(
  position => console.log(position),
  err => console.error(err)
);
console.log('Getting position'); */

const getPosition = function () {
  return new Promise(function (resolve, reject) {
    // navigator.geolocation.getCurrentPosition(
    //   position => resolve(position),
    //   err => reject(err)
    // );
    navigator.geolocation.getCurrentPosition(resolve, reject);
  });
};

getPosition().then(pos => console.log(pos));

const whereAmI = function () {
  getPosition()
    .then(pos => {
      const { latitude: lat, longitude: lng } = pos.coords;

      return fetch(
        `https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=${lat}&longitude=${lng}&localityLanguage=en`
      );
    })
    .then(response => {
      if (!response.ok) throw new Error(`Errou ${response.status}`);

      return response.json();
    })
    .then(data => {
      console.log(data);
      console.log(`You are in ${data.city}, ${data.countryName}`);

      return fetch(`https://restcountries.com/v2/name/${data.countryName}`);
    })
    .then(response => {
      if (!response.ok)
        throw new Error(`Country not found (${response.status})`);

      return response.json();
    })
    .then(data => renderCountry(data[0]))
    .catch(err => {
      console.error(`${err.message}!!!!!`);
    });
};

btn.addEventListener('click', whereAmI);
