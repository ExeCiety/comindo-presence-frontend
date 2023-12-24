<style scoped>
@media (max-width: 640px) {
  #form-launching-soon {
    flex-direction: column !important;
    gap: 1.3rem !important;
  }
}
</style>

<template>
  <Head>
    <title>Attendify | Launching Soon</title>
  </Head>
  <section class="w-full min-h-screen relative bg-[#F7F7F9] overflow-hidden">
    <div
      class="relative flex flex-col justify-center items-center py-[100px] px-10 text-center z-10"
    >
      <div class="mb-2">
        <h1 class="text-2xl text-[#4C4E64DE] font-semibold">Segera Hadir 🚀</h1>
      </div>
      <div class="mt-1 mb-5">
        <p class="text-[#4C4E6499]">
          Website kami akan segera dibuka. Silakan daftar untuk mendapatkan
          pemberitahuan ketika sudah siap!
        </p>
      </div>
      <div class="mt-5 mb-9">
        <LaunchingSoonForm />
      </div>
      <div class="mt-9">
        <NuxtImg
          class="object-cover min-w-[204px] min-h-[500px]"
          src="/images/page/error/launching-soon/illustration.png"
        />
      </div>
    </div>
    <div class="absolute bottom-[-1.5%] right-0 left-0 z-0">
      <NuxtImg
        class="object-cover w-full h-[338px]"
        src="/images/page/error/launching-soon/bg_illustration.png"
      />
    </div>
  </section>
</template>

<script>
export default {};
</script>
