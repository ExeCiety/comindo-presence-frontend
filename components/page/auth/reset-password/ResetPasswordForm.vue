<template>
  <form action="#" method="POST" enctype="multipart/form-data">
    <div>
      <h1 class="text-2xl font-semibold text-[#4C4E64DE]">Reset Password 🔒</h1>
    </div>
    <div class="mt-2 mb-3">
      <p class="text-base text-[#4C4E6499]">
        Password baru Anda harus berbeda dari yang sebelumnya digunakan.
      </p>
    </div>
    <div class="relative mt-6 mb-3">
      <InputFloating
        id="password"
        className="form-control-lg w-full"
        :type="passwordNewVisible ? 'text' : 'password'"
        name="password"
        placeholder=""
        textLabel="Password Baru"
      />
      <BootstrapIcon
        @click="togglePasswordNewVisibility"
        :name="passwordNewVisible ? 'eye' : 'eye-slash'"
        class="absolute text-lg cursor-pointer text-secondary right-3.5 top-3"
      />
    </div>
    <div class="relative my-3">
      <InputFloating
        id="password_confirmation"
        className="form-control-lg w-full"
        :type="passwordConfirmationVisible ? 'text' : 'password'"
        name="password_confirmation"
        placeholder=""
        textLabel="Konfirmasi Password Baru"
      />
      <BootstrapIcon
        @click="togglePasswordConfirmationVisibility"
        :name="passwordConfirmationVisible ? 'eye' : 'eye-slash'"
        class="absolute text-lg cursor-pointer text-secondary right-3.5 top-3"
      />
    </div>
    <div class="my-4">
      <ButtonPrimary
        id="reset-password"
        className="w-full uppercase"
        type="button"
        text="Atur Ulang"
      />
    </div>
    <div class="my-4 text-center">
      <NuxtLink
        class="text-primary hover:text-[#5b5fe0] duration-300"
        to="/auth/login"
      >
        <BootstrapIcon name="chevron-left" class="mr-2" />
        Kembali ke login
      </NuxtLink>
    </div>
  </form>
</template>

<script>
export default {
  data() {
    return {
      passwordNewVisible: false,
      passwordConfirmationVisible: false,
    };
  },
  methods: {
    togglePasswordNewVisibility() {
      this.passwordNewVisible = !this.passwordNewVisible;
    },
    togglePasswordConfirmationVisibility() {
      this.passwordConfirmationVisible = !this.passwordConfirmationVisible;
    },
  },
};
</script>
