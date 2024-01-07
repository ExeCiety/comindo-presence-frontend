<template>
  <header class="mb-4">
    <nav class="navbar">
      <BootstrapIcon name="list" class="burger-btn" />
      <div class="flex items-center gap-6">
        <BootstrapIcon
          name="bell"
          class="text-2xl text-secondary cursor-pointer relative"
        />
        <div @click="toggleDropdown" class="relative cursor-pointer">
          <div class="rounded-full">
            <NuxtImg
              class="w-[40px] h-[40px] object-cover"
              src="/images/layout/header/avatar_1.png"
            />
          </div>
          <ul :class="['dropdown-menu', isDropdownOpen ? 'block' : 'hidden']">
            <li class="dropdown-item-1">
              <div class="rounded-full p-2">
                <NuxtImg
                  class="w-[40px] h-[40px] object-cover"
                  src="/images/layout/header/avatar_1.png"
                />
              </div>
              <div class="p-2">
                <h6
                  class="text-secondary text-base font-semibold tracking-[0.15px]"
                >
                  Fauzan
                </h6>
                <p class="text-secondary text-sm font-normal tracking-[0.4px]">
                  Karyawan
                </p>
              </div>
            </li>
            <li>
              <hr class="mt-2 mb-0" />
            </li>
            <li class="dropdown-item-2">
              <NuxtLink to="#" class="px-5">
                <BootstrapIcon name="person" class="text-md" />
                <span class="ml-3">Profile</span>
              </NuxtLink>
            </li>
            <li class="dropdown-item-2">
              <NuxtLink to="#" class="px-5">
                <BootstrapIcon name="box-arrow-right" class="text-md" />
                <span class="ml-3">Logout</span>
              </NuxtLink>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  data() {
    return {
      isDropdownOpen: false,
    };
  },
  mounted() {
    document.body.addEventListener("click", this.closeDropdownOnOutsideClick);
  },
  beforeDestroy() {
    document.body.removeEventListener(
      "click",
      this.closeDropdownOnOutsideClick
    );
  },
  methods: {
    toggleDropdown() {
      this.isDropdownOpen = !this.isDropdownOpen;
    },
    closeDropdownOnOutsideClick(event) {
      if (
        this.isDropdownOpen &&
        !this.$el.contains(event.target) &&
        !event.target.closest(".dropdown-menu")
      ) {
        this.isDropdownOpen = false;
      }
    },
  },
};
</script>
