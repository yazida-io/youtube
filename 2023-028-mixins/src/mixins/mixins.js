export default {
  data() {
    return {
      firstname: "John",
      lastname: "Doe",
    };
  },
  computed: {
    fullname() {
      return this.firstname + " " + this.lastname;
    },
  },
  methods: {
    greeting(name) {
      return `Hello ${name ? name : this.fullname} !`;
    },
  },
};
