"use strict";

const modal = document.querySelector(".modal");
const overlay = document.querySelector(".overlay");
const btnCloseModal = document.querySelector(".close-modal");
const btnsOpenModal = document.querySelectorAll(".show-modal");

const openModal = function () {
  modal.classList.remove("hidden");
  overlay.classList.remove("hidden");
};

const clodeModal = function () {
  modal.classList.add("hidden");
  overlay.classList.add("hidden");
};

for (let button of btnsOpenModal) {
  button.addEventListener("click", openModal);
}

btnCloseModal.addEventListener("click", clodeModal);
overlay.addEventListener("click", clodeModal);
