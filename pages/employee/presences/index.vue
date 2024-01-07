<template>
  <Head>
    <title>Attendify | Presence</title>
  </Head>
  <div class="page-content">
    <div class="w-full">
      <div class="flex flex-nowrap items-center gap-6 max-lg:flex-wrap">
        <div class="card rounded-xl w-[20%] max-lg:w-[30%] max-md:w-full">
          <div class="flex items-center">
            <BootstrapIcon
              name="box-arrow-in-right"
              class="text-2xl bg-[#ECEDFF] text-primary px-3 py-2 rounded-lg"
            />
            <div class="ml-3">
              <h5 id="check-in" class="font-bold text-lg text-secondary">-</h5>
              <h6 class="text-[#4C4E6499]">Presensi Masuk</h6>
            </div>
          </div>
        </div>
        <div class="card rounded-xl w-[20%] max-lg:w-[30%] max-md:w-full">
          <div class="flex items-center">
            <BootstrapIcon
              name="box-arrow-in-left"
              class="text-2xl bg-[#FFF6E5] text-warning pl-4 pr-2 py-2 rounded-lg"
            />
            <div class="ml-3">
              <h5 id="check-out" class="font-bold text-lg text-secondary">-</h5>
              <h6 class="text-[#4C4E6499]">Presensi Pulang</h6>
            </div>
          </div>
        </div>
        <div class="card rounded-xl w-[20%] max-lg:w-[30%] max-md:w-full">
          <div class="flex items-center">
            <BootstrapIcon
              name="clock-history"
              class="text-2xl bg-[#E5F8FE] text-light-blue px-3 py-2 rounded-lg"
            />
            <div class="ml-3">
              <h5
                id="duration-of-work"
                class="font-bold text-lg text-secondary"
              >
                -
              </h5>
              <h6 class="text-[#4C4E6499]">Durasi Kerja</h6>
            </div>
          </div>
        </div>
        <div class="card rounded-xl w-[20%] max-lg:w-[30%] max-md:w-full">
          <div class="flex items-center">
            <BootstrapIcon
              name="hourglass-bottom"
              class="text-2xl bg-[#EEFBE5] text-success px-3 py-2 rounded-lg"
            />
            <div class="ml-3">
              <h5 id="overtime" class="font-bold text-lg text-secondary">-</h5>
              <h6 class="text-[#4C4E6499]">Lembur</h6>
            </div>
          </div>
        </div>
        <div
          id=""
          class="card rounded-xl bg-success w-[20%] duration-500 hover:bg-[#5ec21f] max-lg:w-[30%] max-md:w-full"
        >
          <button
            id="btn-check-in"
            class="btn text-2xl text-white uppercase font-semibold"
            type="button"
          >
            Masuk
          </button>
        </div>
      </div>
      <div class="card py-5 px-0 mt-6">
        <div
          class="flex flex-row items-center justify-between mb-6 px-6 max-md:flex-col max-md:gap-4"
        >
          <div class="w-4/12 max-md:w-full">
            <InputBasic
              id="search"
              className="w-full rounded-lg"
              type="text"
              name="search"
              placeholder="Cari presensi"
            />
          </div>
          <div class="w-4/12 flex items-center gap-4 max-md:w-full">
            <SelectBasic
              id="filter"
              className="w-full rounded-lg"
              name="filter"
              firstOption="Periode"
              :options="selectFilterOptions"
            />
            <!-- <ButtonDanger
              id="delete"
              className="w-[50%] uppercase"
              type="button"
              text="Delete"
            /> -->
          </div>
        </div>
        <PresenceTable :presences="presences" />
        <nav class="pagination">
          <ul class="pagination-menu">
            <li>
              <NuxtLink to="#" class="pagination-link active">
                <span class="sr-only">Previous</span>
                <BootstrapIcon name="chevron-left" />
              </NuxtLink>
            </li>
            <li>
              <NuxtLink to="#" aria-current class="pagination-link active"
                >1</NuxtLink
              >
            </li>
            <li>
              <NuxtLink to="#" class="pagination-link">2</NuxtLink>
            </li>
            <li>
              <NuxtLink to="#" class="pagination-link">3</NuxtLink>
            </li>
            <li class="max-sm:hidden">
              <NuxtLink to="#" class="pagination-link">...</NuxtLink>
            </li>
            <li class="max-sm:hidden">
              <NuxtLink to="#" class="pagination-link">12</NuxtLink>
            </li>
            <li class="max-sm:hidden">
              <NuxtLink to="#" class="pagination-link">13</NuxtLink>
            </li>
            <li class="max-sm:hidden">
              <NuxtLink to="#" class="pagination-link">14</NuxtLink>
            </li>
            <li>
              <NuxtLink to="#" class="pagination-link">
                <span class="sr-only">Next</span>
                <BootstrapIcon name="chevron-right" />
              </NuxtLink>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</template>

<script>
definePageMeta({
  layout: "employee",
});
export default {
  data() {
    return {
      selectFilterOptions: [
        {
          label: "Tahun Lalu",
          value: "last_year",
        },
        {
          label: "6 Bulan Lalu",
          value: "last_6_months",
        },
        {
          label: "3 Bulan Lalu",
          value: "last_3_months",
        },
        {
          label: "Bulan lalu",
          value: "last_month",
        },
        {
          label: "Minggu Lalu",
          value: "last_week",
        },
        {
          label: "Kemarin",
          value: "yesterday",
        },
        {
          label: "Hari Ini",
          value: "today",
        },
        {
          label: "Custom",
          value: "custom",
        },
      ],
      presences: [
        {
          id: 1,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
        {
          id: 2,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
        {
          id: 3,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
        {
          id: 4,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
        {
          id: 5,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
        {
          id: 6,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
        {
          id: 7,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
        {
          id: 8,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
        {
          id: 9,
          date: "7 Nov 2023",
          checkIn: "08:27",
          checkOut: "20:07",
          overtime: "2j 14m",
        },
      ],
    };
  },
  methods: {},
};
</script>
