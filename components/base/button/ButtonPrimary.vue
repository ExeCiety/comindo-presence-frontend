<template>
  <button
    :id="id"
    class="text-white bg-[#666CFF] hover:bg-[#565ad9] duration-500 uppercase rounded-md py-2.5 px-3 outline-none font-normal"
    :type="type"
    :value="value"
    :disabled="disabled"
  >
    {{ text }}
  </button>
</template>

<script>
export default {
  props: {
    id: {
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
