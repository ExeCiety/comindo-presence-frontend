<template>
  <Head>
    <title>Attendify | Internal Server Error</title>
  </Head>
  <section class="w-full min-h-screen relative bg-[#F7F7F9] overflow-hidden">
    <div
      class="relative flex flex-col justify-center items-center py-16 px-10 text-center z-10"
    >
      <div class="mb-4">
        <h1 class="text-8xl text-[#4C4E64DE]">500</h1>
      </div>
      <div class="mt-4 mb-1">
        <h3 class="text-[26px] text-[#4C4E64DE] font-semibold">
          Internal Server Error 🔐
        </h3>
      </div>
      <div class="mt-1 mb-7">
        <p class="text-[#4C4E6499]">
          Ups, terjadi kesalahan. Silakan kembali ke beranda.
        </p>
      </div>
      <div class="mt-6 mb-8">
        <NuxtImg
          class="object-cover w-[262px] h-[500px]"
          alt="Internal Server Error Illustration"
          src="/images/page/error/internal-server-error/illustration.png"
        />
      </div>
      <div class="mt-4">
        <ButtonPrimary
          @click="backToHome"
          id="back-to-home"
          className="uppercase px-6 py-1.8 text-sm z-100"
          type="button"
          text="Kembali Ke Beranda"
        />
      </div>
    </div>
    <div class="absolute bottom-[-2%] right-0 left-0 z-0">
      <NuxtImg
        class="object-cover w-full h-[338px]"
        alt="Internal Server Error Background Illustration"
        src="/images/page/error/internal-server-error/bg_illustration.png"
      />
    </div>
  </section>
</template>

<script>
export default {
  methods: {
    backToHome() {
      this.$router.push("/");
    },
  },
};
</script>
