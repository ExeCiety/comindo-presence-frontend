<template>
  <button
    :id="id"
    :class="['btn btn-danger', className]"
    :type="type"
    :value="value"
    :disabled="disabled"
  >
    <BootstrapIcon v-if="hasIcon" :name="bootstrapIconName" class="text-xl" />
    <span
      v-if="text !== ''"
      :class="[
        'flex justify-center items-center h-full',
        hasIcon ? 'ml-2' : '',
      ]"
      >{{ text }}</span
    >
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
    hasIcon: {
      type: Boolean,
      default: false,
    },
    bootstrapIconName: {
      type: String,
      default: "",
    },
  },
};
</script>
