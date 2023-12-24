<template>
  <Head>
    <title>Attendify | Not Found</title>
  </Head>
  <section class="w-full min-h-screen relative bg-[#F7F7F9] overflow-hidden">
    <div
      class="relative flex flex-col justify-center items-center py-16 px-10 text-center z-10"
    >
      <div class="mb-4">
        <h1 class="text-8xl text-[#4C4E64DE]">404</h1>
      </div>
      <div class="mt-4 mb-1">
        <h3 class="text-[26px] text-[#4C4E64DE] font-semibold">
          Halaman Tidak Ditemukan ⚠️
        </h3>
      </div>
      <div class="mt-1 mb-7">
        <p class="text-[#4C4E6499]">
          Kami tidak dapat menemukan halaman yang Anda cari.
        </p>
      </div>
      <div class="my-7">
        <NuxtImg
          class="object-cover w-[204px] h-[500px]"
          alt="Not Found Illustration"
          src="/images/page/error/not-found/illustration.png"
        />
      </div>
      <div class="mt-3">
        <ButtonPrimary
          @click="backToHome"
          id="back-to-home"
          className="uppercase px-6 py-1.8 text-sm z-100"
          type="button"
          text="Kembali Ke Beranda"
        />
      </div>
    </div>
    <div class="absolute bottom-[-8%] right-0 left-0 z-0">
      <NuxtImg
        class="object-cover w-full h-[338px]"
        alt="Not Found Background Illustration"
        src="/images/page/error/not-found/bg_illustration.png"
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
