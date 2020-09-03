<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />


    <section class="section-form">
      <div class="container">
        <form id="form">
          <h2>
            Prosimo izpolnite obrazec. Odgovorili vam bomo v najkrajšem možnem
            času
          </h2>

          <span class="alert"
            >E-mail se mora končati na način
            <strong> @bintega.com</strong></span
          >

          <div class="flex">
            <input type="text" id="name" placeholder="Vaše ime" />

            <input type="text" id="email" placeholder="Vaš e-naslov" required />
          </div>

          <textarea
            name="msg"
            id="msg"
            class="msg"
            placeholder="Sporočilo"
          ></textarea>

          <div class="submit">
            <button type="submit">Submit</button>
          </div>
        </form>
      </div>
    </section>


<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script>
// Dom
const email = document.getElementById("email");
const alert = document.querySelector(".alert");
const form = document.getElementById("form");

form.addEventListener("submit", (e) => {
  e.preventDefault();

  const emailValue = email.value;

  console.log(emailValue);

  console.log(validateEmail(emailValue));

  if (validateEmail(emailValue) !== true) {
    alert.classList.add("show");

    setTimeout(() => {
      alert.classList.remove("show");
    }, 2000);
  }
});

function validateEmail(email) {
  const re = /^[\w.+\-]+@bintega\.com$/;
  return re.test(String(email).toLowerCase());
}
</script>

</body>

</html>