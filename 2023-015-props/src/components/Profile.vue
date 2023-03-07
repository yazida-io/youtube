

<script>
export default {
    props: {
        username: {
            type: String,
            required: true,
        },
        firstName: String,
        lastName: String,
        age: Number,
        location: String,
    },
}
</script>
<template>
  <div>
    <h1>Profile</h1>
    <div>
      <p>Username: {{ username }}</p>
      <p>First name: {{ firstName }}</p>
      <p>Last name: {{ lastName }}</p>
      <p>Age: {{ age }}</p>
      <p>Location: {{ location }}</p>
    </div>
  </div>
</template>
