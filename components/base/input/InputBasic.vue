<template>
  <input
    :id="id"
    :class="[
      'block rounded-md py-2 px-3 text-[#4C4E64DE] placeholder:text-[#4C4E6461] appearance-none border border-[#4C4E6461] focus:outline-none focus:border-[#4C4E6461]',
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
  },
};
</script>
