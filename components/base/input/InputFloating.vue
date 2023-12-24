<template>
  <div class="relative">
    <input
      :id="id"
      :name="name"
      :type="passwordVisible ? 'text' : type"
      :placeholder="placeholder"
      @input="$emit('update:modelValue', $event.target.value)"
      :class="[
        'block rounded-md py-2.5 px-3 text-[#4C4E64DE] placeholder:text-[#4C4E6461] appearance-none border outline-none peer',
        isError
          ? 'border-red-500 peer-focus:border-red-500'
          : 'border-[#4C4E6438] peer-focus:border-[#4C4E6438]',
        disabled ? 'opacity-50 cursor-not-allowed' : '',
        className,
      ]"
      :disabled="disabled"
      v-bind="$attrs"
    />
    <BootstrapIcon
      v-if="hasIconRight"
      @click="togglePasswordVisibility"
      :class="[
        'absolute top-1/2 transform -translate-y-1/2 end-3 cursor-pointer',
        iconRightClass,
      ]"
      :name="passwordVisible ? 'eye' : iconRightName"
    />
    <label
      :for="id"
      :class="[
        'absolute duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] bg-white px-2 peer-focus:px-2 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4 start-1 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto',
        isError
          ? 'text-red-500 peer-focus:text-red-500'
          : 'text-[#4C4E6461] peer-focus:text-gray-400',
      ]"
      >{{ text }}</label
    >
  </div>
</template>

<script>
export default {
  data() {
    return {
      passwordVisible: false,
    };
  },
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
    text: {
      type: String,
      default: "",
    },
    hasIconRight: {
      type: Boolean,
      default: false,
    },
    iconRightName: {
      type: String,
      default: "",
    },
    iconRightClass: {
      type: String,
      default: "",
    },
    isError: {
      type: Boolean,
      default: false,
    },
  },
  methods: {
    togglePasswordVisibility() {
      this.passwordVisible = !this.passwordVisible;
    },
  },
};
</script>
