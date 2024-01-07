<template>
  <div id="app">
    <Sidebar :sidebar-menu-items="sidebarMenuItems" />
    <div id="main">
      <Header />
      <div id="main-content">
        <slot />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      sidebarMenuItems: [
        {
          label: "Dashboard",
          to: "/employee/dashboard",
          icon: "house-door",
        },
        {
          label: "Presensi",
          to: "/employee/presences",
          icon: "journal-check",
        },
        {
          label: "Pengajuan",
          to: "/employee/submissions",
          icon: "journal",
        },
        {
          label: "Pengguna",
          to: "/employee/users",
          icon: "person",
        },
        {
          label: "Rekap Absen",
          to: "/employee/presence-summaries",
          icon: "graph-up-arrow",
        },
      ],
    };
  },
};
</script>
