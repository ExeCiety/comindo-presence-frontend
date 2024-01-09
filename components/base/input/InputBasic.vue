<template>
  <input
    :id="id"
    :class="[
      'form-control',
      isError
        ? 'border-red-500 focus:border-red-500'
        : 'border-[#4C4E6438] focus:border-[#4C4E6438]',
      disabled ? 'opacity-50 cursor-not-allowed' : '',
      className,
    ]"
    :type="type"
    :placeholder="placeholder"
    @input="$emit('update:modelValue', $event.target.value)"
    :disabled="disabled"
  />
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
      default: "text",
    },
    name: {
      type: String,
      default: "",
    },
    placeholder: {
      type: String,
      default: "",
    },
    modelValue: {
      type: String,
      default: "",
    },
    disabled: {
      type: Boolean,
      default: false,
    },
    isError: {
      type: Boolean,
      default: false,
    },
  },
};
</script>
