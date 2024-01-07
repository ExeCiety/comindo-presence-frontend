<style scoped>
.icon-hyphen:checked[type="checkbox"] {
  background-image: url("/icons/hyphen.svg") !important;
}
</style>

<template>
  <div class="table-responsive">
    <table class="table">
      <thead>
        <tr>
          <th class="w-[4%] text-center border-none" scope="col">
            <CheckboxWithoutText class="icon-hyphen" />
          </th>
          <th class="w-[39%]" scope="col">Tanggal</th>
          <th class="w-[15%] text-center" scope="col">Jam Masuk</th>
          <th class="w-[15%] text-center" scope="col">Jam Pulang</th>
          <th class="w-[15%] text-center" scope="col">Lembur</th>
          <th class="w-[12%] text-center" scope="col">Aksi</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="presence in presences" :key="presence.id">
          <td class="w-[4%] text-center">
            <CheckboxWithoutText />
          </td>
          <td class="w-[39%]">{{ presence.date }}</td>
          <td class="w-[15%] text-center">{{ presence.checkIn }}</td>
          <td class="w-[15%] text-center">{{ presence.checkOut }}</td>
          <td class="w-[15%] text-center">{{ presence.overtime }}</td>
          <td class="w-[12%]">
            <div class="flex items-center justify-center">
              <button
                id="edit"
                class="text-[#4C4E64DE] text-xl bg-transparent rounded-full outline-none py-1 px-2 duration-300 hover:bg-[#F5F5F7]"
                type="button"
              >
                <BootstrapIcon name="pencil" />
              </button>
              <button
                id="edit"
                class="text-[#4C4E64DE] text-xl bg-transparent rounded-full outline-none py-1 px-2 duration-300 hover:bg-[#F5F5F7]"
                type="button"
              >
                <BootstrapIcon name="eye" />
              </button>
              <button
                id="edit"
                class="text-[#4C4E64DE] text-xl bg-transparent rounded-full outline-none py-1 px-2 duration-300 hover:bg-[#F5F5F7]"
                type="button"
              >
                <BootstrapIcon name="trash" />
              </button>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  props: {
    presences: {
      type: Array,
      required: true,
    },
  },
};
</script>
