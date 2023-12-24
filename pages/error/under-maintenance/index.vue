<template>
  <Head>
    <title>Attendify | Under Maintenance</title>
  </Head>
  <section class="w-full min-h-screen relative bg-[#F7F7F9] overflow-hidden">
    <div
      class="relative flex flex-col justify-center items-center py-[100px] px-10 text-center z-10"
    >
      <div class="mb-1">
        <h1 class="text-2xl text-[#4C4E64DE] font-semibold">
          Dalam Perbaikan! 🚧
        </h1>
      </div>
      <div class="mt-1 mb-7">
        <p class="text-[#4C4E6499]">
          Maaf atas ketidaknyamanannya, saat ini kami sedang melakukan
          pemeliharaan.
        </p>
      </div>
      <div class="my-10">
        <NuxtImg
          class="min-w-[204px] min-h-[500px]"
          alt="Under Maintenance Illustration"
          src="/images/page/error/under-maintenance/illustration.png"
        />
      </div>
      <div class="mt-5">
        <ButtonPrimary
          @click="backToHome"
          id="back-to-home"
          className="uppercase px-6 py-1.8 text-sm z-100"
          type="button"
          text="Kembali Ke Beranda"
        />
      </div>
    </div>
    <div class="absolute bottom-[-3%] right-0 left-0 z-0">
      <NuxtImg
        class="object-cover w-full h-[338px]"
        alt="Under Maintenance Background Illustration"
        src="/images/page/error/under-maintenance/bg_illustration.png"
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
