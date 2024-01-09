<template>
  <form action="#" method="POST" enctype="multipart/form-data">
    <div>
      <h1 class="text-2xl font-semibold text-[#4C4E64DE]">
        Selamat Datang di Attendify👋🏻
      </h1>
    </div>
    <div class="mt-2 mb-3">
      <p class="text-base text-[#4C4E6499]">Silakan masuk ke akun Anda.</p>
    </div>
    <div v-if="errorMsg" class="my-5">
      <AlertDanger hasIcon :text="errorMsg" />
    </div>
    <div class="mt-6 mb-3">
      <InputFloating
        id="email"
        className="form-control-lg w-full"
        type="email"
        name="email"
        placeholder=""
        textLabel="Email"
        v-model="form.email"
        :isError="isEmailError"
      />
    </div>
    <div class="relative my-3">
      <InputFloating
        id="password"
        className="form-control-lg w-full"
        :type="passwordVisible ? 'text' : 'password'"
        name="password"
        placeholder=""
        textLabel="Password"
        v-model="form.password"
        :isError="isPasswordError"
      />
      <BootstrapIcon
        @click="togglePasswordVisibility"
        :name="passwordVisible ? 'eye' : 'eye-slash'"
        class="absolute text-lg cursor-pointer text-secondary right-3.5 top-3"
      />
    </div>
    <div class="mt-2 mb-4 text-end">
      <NuxtLink class="text-primary" to="/auth/forgot-password">
        Lupa Password?
      </NuxtLink>
    </div>
    <div class="mt-5">
      <ButtonPrimary
        @click="login"
        id="login"
        className="w-full uppercase"
        type="button"
        text="Login"
      />
    </div>
  </form>
</template>

<script>
export default {
  data() {
    return {
      passwordVisible: false,
      form: {
        email: "",
        password: "",
      },
      errorMsg: "",
      isEmailError: false,
      isPasswordError: false,
    };
  },
  methods: {
    togglePasswordVisibility() {
      this.passwordVisible = !this.passwordVisible;
    },
    login() {
      if (this.form.email === "" || this.form.password === "") {
        this.isEmailError = true;
        this.isPasswordError = true;
        this.errorMsg = "Email dan password tidak boleh kosong!";
      } else if (this.form.password !== "password") {
        this.isEmailError = true;
        this.isPasswordError = true;
        this.errorMsg = "Email atau password yang Anda masukkan salah!";
      } else {
        this.isEmailError = false;
        this.isPasswordError = false;
        this.errorMsg = "";
      }
    },
  },
};
</script>
