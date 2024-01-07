<style scoped>
.transition {
  transition: background-color 0.15s ease-in-out,
    background-position 0.15s ease-in-out, border-color 0.15s ease-in-out,
    box-shadow 0.15s ease-in-out;
}
</style>

<template>
  <input
    :id="id"
    :class="[`form-check-input transition`, className]"
    :type="type"
    :name="name"
    @input="$emit('update:modelValue', $event.target.value)"
    :disabled="disabled"
    :checked="isChecked"
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
      default: "checkbox",
    },
    name: {
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
    isChecked: {
      type: Boolean,
      default: false,
    },
  },
};
</script>
