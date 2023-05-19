<template>
  <div>
    <Navbar />
    <home />
  </div>
</template>

<script>
import home from '~/components/home.vue';
import Navbar from '~/components/Navbar.vue';
export default {
  components: {
    home,
    Navbar
  },
}
</script>

<style>
h1 {
  color: blue;
}

</style>
