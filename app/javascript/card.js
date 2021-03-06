const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  Payjp.setPublicKey("pk_test_70fa073ec8d09c207a446e66");
  const submit = document.getElementById("button");
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    
    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

    const card = {
      number: formData.get("reservation[number]"),
      cvc: formData.get("reservation[cvc]"),
      exp_month: formData.get("reservation[exp_month]"),
      exp_year: `20${formData.get("reservation[exp_year]")}`,
    };

    Payjp.createToken(card, (status, response) => {
      if (status == 200) {
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} name='token' type="hidden"> `;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }

      document.getElementById("reservation_number").removeAttribute("name");
      document.getElementById("reservation_cvc").removeAttribute("name");
      document.getElementById("reservation_exp_month").removeAttribute("name");
      document.getElementById("reservation_exp_year").removeAttribute("name");

      document.getElementById("charge-form").submit();

    });
  });
};

window.addEventListener("load", pay);