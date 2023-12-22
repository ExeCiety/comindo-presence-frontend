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
    <div class="my-5">
      <AlertDanger v-if="errorMsg" hasIcon :text="errorMsg" />
    </div>
    <div class="mt-6 mb-3">
      <InputFloating
        id="email"
        type="email"
        name="email"
        placeholder=""
        text="Email"
        v-model="form.email"
        :isError="isEmailError"
      />
    </div>
    <div class="my-3">
      <InputFloating
        id="password"
        type="password"
        name="password"
        placeholder=""
        text="Password"
        hasIconRight
        iconRightName="eye-slash"
        iconRightClass="text-xl"
        v-model="form.password"
        :isError="isPasswordError"
      />
    </div>
    <div class="mt-2 mb-4 text-end">
      <NuxtLink class="text-[#666CFF]" to="/auth/forgot-password">
        Lupa Password?
      </NuxtLink>
    </div>
    <div class="mt-5">
      <ButtonPrimary
        @click="login"
        id="login"
        type="button"
        text="Login"
        class="w-full"
      />
    </div>
  </form>
</template>

<script>
export default {
  data() {
    return {
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
