<template>
  <div class="relative w-full h-screen flex items-center">
    <NuxtImg
      class="absolute object-cover 2xl:w-[207px] 2xl:h-[554px] 2xl:right-[40%] 2xl:bottom-[18%] xl:right-[35%] xl:bottom-[16%] md:right-[25%] md:bottom-[19%] md:w-[177px] md:h-[404px]"
      alt="Illustration"
      :src="illustrationSrc"
    />
    <NuxtImg
      class="w-full absolute xl:right-0 xl:bottom-[10%] md:bottom-[16%]"
      width="837px"
      height="201px"
      alt="Background Illustration"
      :src="bgIllustrationSrc"
    />
  </div>
</template>

<script>
export default {
  props: {
    illustrationSrc: {
      type: String,
      default: "",
    },
    bgIllustrationSrc: {
      type: String,
      default: "",
    },
  },
};
</script>
