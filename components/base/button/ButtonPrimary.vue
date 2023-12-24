<template>
  <button
    :id="id"
    :class="[
      'text-white bg-[#666CFF] hover:bg-[#565ad9] duration-500 rounded-md py-2.5 px-3 outline-none font-normal',
      className,
    ]"
    :type="type"
    :value="value"
    :disabled="disabled"
  >
    <span class="flex justify-center items-center h-full">{{ text }}</span>
  </button>
</template>

<script>
export default {
  props: {
    id: {
      type: String,
      default: "",
    },
    className: {
      type: String,
      default: "",
    },
    type: {
      type: String,
      default: "button",
    },
    value: {
      type: String,
      default: "",
    },
    text: {
      type: String,
      default: "",
    },
    disabled: {
      type: Boolean,
      default: false,
    },
  },
};
</script>
