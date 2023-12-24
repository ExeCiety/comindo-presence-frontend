<template>
  <form
    id="form-launching-soon"
    class="flex flex-row justify-center items-center gap-6"
    action="#"
    method="POST"
  >
    <InputBasic
      id="email_or_username"
      className="bg-transparent w-[350px] rounded-lg"
      type="text"
      placeholder="Masukan email atau username"
    />
    <ButtonPrimary
      id="send"
      className="uppercase px-6 rounded-[9px] h-[38px]"
      type="button"
      text="Kirim"
    />
  </form>
</template>

<script>
export default {};
</script>
