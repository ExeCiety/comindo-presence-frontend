<template>
  <input
    :id="id"
    :class="'w-full block rounded-md py-2 px-3 text-[#4C4E64DE] placeholder:text-[#4C4E6461] appearance-none border border-[#4C4E6461] focus:outline-none focus:border-[#4C4E6461]'"
    :type="type"
    :placeholder="placeholder"
    :value="value"
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
    value: {
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
