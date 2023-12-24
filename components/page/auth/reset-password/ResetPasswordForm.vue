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
    <div class="mt-6 mb-3">
      <InputFloating
        id="password"
        className="w-full"
        type="password"
        name="password"
        placeholder=""
        text="Password Baru"
        hasIconRight
        iconRightName="eye-slash"
        iconRightClass="text-xl"
      />
    </div>
    <div class="my-3">
      <InputFloating
        id="password_confirmation"
        className="w-full"
        type="password"
        name="password_confirmation"
        placeholder=""
        text="Konfirmasi Password Baru"
        hasIconRight
        iconRightName="eye-slash"
        iconRightClass="text-xl"
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
export default {};
</script>
