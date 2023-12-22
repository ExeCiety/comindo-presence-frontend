<template>
  <Head>
    <title>Attendify | Reset Password</title>
  </Head>
  <section class="w-full min-h-screen flex justify-center">
    <div class="bg-[#F7F7F9] h-screen 2xl:w-8/12 xl:w7/12 md:w-7/12">
      <AuthLeftIllustration
        illustrationSrc="/images/page/auth/reset-password/illustration.png"
        bgIllustrationSrc="/images/page/auth/reset-password/bg_illustration.png"
      />
    </div>
    <div
      class="bg-white h-screen 2xl:w-4/12 xl:w5/12 md:w-5/12 sm:w-full flex justify-center items-center"
    >
      <div class="w-full py-10 px-16">
        <ResetPasswordForm />
      </div>
    </div>
  </section>
</template>

<script>
export default {};
</script>
