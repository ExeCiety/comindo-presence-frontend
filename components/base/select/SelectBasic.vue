<style scoped>
.bg-right-center {
  background-position: right 0.75rem center;
}

.bg-size-16-12 {
  background-size: 16px 12px;
}
</style>

<template>
  <select
    :id="id"
    :class="[
      `block rounded-md py-2 px-4 text-secondary border border-[#4C4E6438] appearance-none bg-[url('/icons/caret-down-fill.svg')] bg-no-repeat bg-right-center bg-size-16-12 placeholder:text-[#4C4E6461] focus:outline-none focus:border-[#4C4E6438] focus:text-secondary`,
      className,
    ]"
    :name="name"
    @input="$emit('update:modelValue', $event.target.value)"
    :disabled="disabled"
  >
    <option value="" selected :disabled="isFirstOptionDisabled">
      {{ firstOption }}
    </option>
    <option
      v-for="(option, index) in options"
      :key="index"
      :value="option.value"
    >
      {{ option.label }}
    </option>
  </select>
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
    options: {
      type: Array,
      default: () => [],
    },
    firstOption: {
      type: String,
      required: true,
    },
    isFirstOptionDisabled: {
      type: Boolean,
      default: false,
    },
  },
};
</script>
