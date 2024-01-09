<template>
  <div class="relative">
    <input
      :id="id"
      :name="name"
      :type="type"
      :placeholder="placeholder"
      @input="$emit('update:modelValue', $event.target.value)"
      :class="[
        'form-control peer',
        isError
          ? 'border-red-500 peer-focus:border-red-500'
          : 'border-[#4C4E6438] peer-focus:border-[#4C4E6438]',
        disabled ? 'opacity-50 cursor-not-allowed' : '',
        className,
      ]"
      :disabled="disabled"
    />
    <label
      :for="id"
      :class="[
        'absolute duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] bg-white px-2 peer-focus:px-2 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4 start-1 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto',
        isError
          ? 'text-red-500 peer-focus:text-red-500'
          : 'text-[#4C4E6461] peer-focus:text-gray-400',
      ]"
      >{{ textLabel }}</label
    >
  </div>
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
    type: {
      type: String,
      default: "text",
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
    textLabel: {
      type: String,
      default: "",
    },
    isError: {
      type: Boolean,
      default: false,
    },
  },
};
</script>
