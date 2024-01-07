<template>
  <div id="sidebar" :class="{ active: isActive }">
    <aside class="sidebar-wrapper">
      <div class="sidebar-header">
        <NuxtLink to="/employee/dashboard" class="logo"> Attendify </NuxtLink>
        <BootstrapIcon name="x-lg" class="sidebar-toggler" />
      </div>
      <div class="sidebar-menu">
        <ul class="menu">
          <li
            v-for="item in sidebarMenuItems"
            :key="item.label"
            class="sidebar-item"
          >
            <NuxtLink :to="item.to" class="sidebar-link">
              <BootstrapIcon :name="item.icon" />
              <span class="ml-2">{{ item.label }}</span>
            </NuxtLink>
          </li>
        </ul>
      </div>
    </aside>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isActive: true,
    };
  },
  props: {
    sidebarMenuItems: {
      type: Array,
      required: true,
    },
  },
  mounted() {
    window.addEventListener("resize", this.handleResize);
    this.handleResize();
  },
  beforeDestroy() {
    window.removeEventListener("resize", this.handleResize);
  },
  methods: {
    handleResize() {
      this.isActive = window.innerWidth >= 1280;
    },
  },
};
</script>
