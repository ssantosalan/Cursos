'use strict';

const btn = document.querySelector('.btn-country');
const countriesContainer = document.querySelector('.countries');

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
   
  const getCountryAndNeighbour = function (country) {
    //AJAX Call Country 1
    const request = new XMLHttpRequest();
    request.open('GET', `https://restcountries.com/v2/name/${country}`);
    request.send();
   
    request.addEventListener('load', function () {
      const [data] = JSON.parse(this.responseText); // console.log(data); // Render Country 1
      renderCountry(data); //Get Neighbours AS ALPHA
   
      const neighbours = [...data.borders]; //Check if none neighbour
      if (!neighbours) return;
   
      neighbours.forEach(alphaNeighbour => {
        //   AJAX Call Neighbours Country Name
        const request2 = new XMLHttpRequest();
        request2.open(
          'GET',
          `https://restcountries.com/v3.1/alpha/${alphaNeighbour}`
        );
        request2.send();
        request2.addEventListener('load', function () {
          const [data2] = JSON.parse(this.responseText);
   
          //Getting Neighbour Name
          console.log(data2.name.common);
   
          //   AJAX Call Neighbours
          const request3 = new XMLHttpRequest();
          request3.open(
            'GET',
            `https://restcountries.com/v2/name/${data2.name.common}`
          );
          request3.send();
          //Render Neighbour
          request3.addEventListener('load', function () {
            const [data3] = JSON.parse(this.responseText);
            renderCountry(data3, 'neighbour');
          });
        });
      });
    });
  };
   
  getCountryAndNeighbour('brazil');