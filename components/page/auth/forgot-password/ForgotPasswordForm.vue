<template>
  <form action="#" method="POST" enctype="multipart/form-data">
    <div>
      <h1 class="text-2xl font-semibold text-[#4C4E64DE]">Forgot Password🔒</h1>
    </div>
    <div class="mt-2 mb-3">
      <p class="text-base text-[#4C4E6499]">
        Masukkan alamat email Anda, dan kami akan mengirimkan instruksi untuk
        mengatur ulang kata sandi Anda.
      </p>
    </div>
    <div class="mt-6 mb-3">
      <InputFloating
        id="email"
        className="py-3"
        type="email"
        name="email"
        placeholder=""
        text="Email"
      />
    </div>
    <div class="mt-5 mb-3">
      <ButtonPrimary
        @click="redirectToResetPassword"
        id="forgot-password"
        type="button"
        text="Kirim"
        class="w-full"
      />
    </div>
    <div class="my-4 text-center">
      <NuxtLink
        class="text-[#666CFF] hover:text-[#5b5fe0] duration-300"
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
  methods: {
    redirectToResetPassword() {
      this.$router.push("/auth/reset-password");
    },
  },
};
</script>
