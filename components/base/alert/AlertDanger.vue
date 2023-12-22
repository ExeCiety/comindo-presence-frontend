<template>
  <div class="relative p-[1rem] rounded-md border-none bg-[#FF4D49] text-white">
    <BootstrapIcon v-if="hasIcon" class="pr-2.5" name="exclamation-circle" />
    {{ text }}
  </div>
</template>

<script>
export default {
  props: {
    text: {
      type: String,
      default: "",
    },
    hasIcon: {
      type: Boolean,
      default: false,
    },
  },
};
</script>
