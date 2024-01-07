<template>
  <button
    :id="id"
    :class="['btn btn-outline-danger', className]"
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
