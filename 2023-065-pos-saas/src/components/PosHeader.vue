<script setup lang="ts">

const links = ["Demo", "About", "Blog", "Pages", "Contact"]
</script>
<template>
  <header class="bg-[#D1EDF5]">
    <nav class="container flex justify-between items-center py-5">
      <div class="flex-center gap-20">
        <a href="#">
          <img src="/images/logo.png" alt="logo"/>
        </a>

        <div class="flex-center gap-5">
          <a
              v-for="link in links" :key="link"
              href="#" class="text-[#1E3A8A]"
          >
            {{ link }}
          </a>
        </div>
        <ul class="flex">
        </ul>
      </div>
      <a href="#" class="bg-blue-700 py-4 px-7 text-white rounded-lg">
        Start Free Trial
      </a>
    </nav>

    <!-- hero section -->
    <div class="grid grid-cols-2 container py-20">
      <div class="col-span-2 md:col-span-1 flex flex-col justify-around">
        <h1 class="text-8xl">
          Modern POS that makes running your business easier
        </h1>

        <ul class="space-y-2">
          <li
              v-for="(feature,  index) in ['Manage cost savings & payments method', 'Analysis inventory and online sales report']"
              :key="index"
              class="flex items-center gap-2 justify-start text-xl"
          >
            <svg id="icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
              <circle id="Ellipse_41" data-name="Ellipse 41" cx="10" cy="10" r="10" fill="#fff"/>
              <path id="Vector"
                    d="M10.781.062A.8.8,0,0,0,9.9.238l-5.991,6L1.393,3.712A.822.822,0,0,0,.251,4.894L3.339,7.982a.8.8,0,0,0,1.142,0L11.043,1.42a.8.8,0,0,0,0-1.182h0A.8.8,0,0,0,10.781.062Z"
                    transform="translate(4 6)" fill="#12141d"/>
            </svg>

            <span>{{ feature }}</span>
          </li>
        </ul>

        <form action="#" method="post" class="max-w-xl space-y-2">
          <label class="bg-white flex-center p-2 rounded-xl overflow-hidden">
            <input class="flex-1 py-3 px-4" type="email" placeholder="Enter your email"/>
            <button class="bg-blue-700 text-white px-7 py-4 rounded-lg">
              Start Free Trial
            </button>
          </label>
          <p>
            Already have an account? <a href="#" class="underline">Log In now</a>
          </p>
        </form>
      </div>
      <div class="col-span-2 md:col-span-1 flex-center">
        <div class="relative">
          <svg
              class="absolute -right-7 -top-20 w-72"
              xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220.421 182.389">
            <g id="shape" transform="translate(1.482)">
              <path id="Vector_23" data-name="Vector 23"
                    d="M9.886,68.408C21.5,82.76,53.365,86.959,53.365,86.959s7.9,38.853,26.667,51.6c22.1,15.008,68.408,0,68.408,0s4.587,28.6,17.972,38.262c16.153,11.662,51.016,0,51.016,0V0H.03V24.928S-1.065,54.873,9.886,68.408Z"
                    fill="#d1edf5"/>
              <g id="line" transform="translate(0.031 25.508)">
                <path id="Vector_20" data-name="Vector 20"
                      d="M.008,0s-.69,28.5,10.446,41.756C21.881,55.364,51.47,60.907,51.47,60.907" fill="none"
                      stroke="#000" stroke-linecap="round" stroke-width="3" stroke-dasharray="0 0"/>
                <path id="Vector_21" data-name="Vector 21"
                      d="M0,0S8.549,53.607,34.314,69.485c28.305,17.444,84.926-6,84.926-6"
                      transform="translate(48.047 43.75)" fill="none" stroke="#000" stroke-linecap="round"
                      stroke-width="3" stroke-dasharray="0 0"/>
                <path id="Vector_22" data-name="Vector 22"
                      d="M0,0S3.669,24.677,14.583,34.314C30.422,48.3,68.627,36.887,68.627,36.887"
                      transform="translate(148.414 114.093)" fill="none" stroke="#000" stroke-linecap="round"
                      stroke-width="3" stroke-dasharray="0 0"/>
              </g>
            </g>
          </svg>

          <img src="/images/hero-man.png" alt="hero man"/>

          <img
              class="absolute -right-32 top-1/2 w-72 transform -translate-y-1/2 scale-150"
              src="/images/hero-stats-1.png"
              alt="hero stats"
          />
          <img
              class="absolute -left-32 bottom-10 w-72 transform scale-150"
              src="/images/hero-stats-2.png"
              alt="hero stats"
          />

        </div>
      </div>
    </div>

    <div class="bg-white py-4">
      <ul class="container flex justify-between items-center text-xl">
        <li class="flex-center gap-4">
          <button class="p-8 bg-black rounded-full flex-center">
            <svg class="h-10 w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 29.999 30">
              <g id="icon" transform="translate(0 0)">
                <path id="Vector"
                      d="M12.6,18.364a.97.97,0,0,1-.452-.113L.515,12.091a.968.968,0,0,1,.121-1.764L28.7.059a.966.966,0,0,1,1.148.388.973.973,0,0,1-.131,1.205L13.289,18.08A.962.962,0,0,1,12.6,18.364ZM25.248,3.383,3.343,11.4l9.083,4.808Z"
                      fill="#fff"/>
                <path id="Vector-2" data-name="Vector"
                      d="M7.128,30a.967.967,0,0,1-.855-.515L.113,17.849a.964.964,0,0,1,.171-1.138L16.711.284A.967.967,0,0,1,17.916.152.974.974,0,0,1,18.305,1.3L8.038,29.364A.969.969,0,0,1,7.195,30ZM14.981,4.752,2.158,17.574l4.809,9.083Z"
                      transform="translate(11.637)" fill="#fff"/>
              </g>
            </svg>
          </button>
          <p>
            Developed with the highest care. <br/>
            Always updated.
          </p>
        </li>
        <li class="flex-center gap-4">
          <button class="p-8 bg-black rounded-full flex-center">
            <svg class="h-10 w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30.2 30">
              <g id="icon" transform="translate(0)">
                <path id="Vector"
                      d="M12.745,25.266A13.072,13.072,0,0,1,11,25.148a22.382,22.382,0,0,1-1.824-5.821h7.444a19.9,19.9,0,0,1-2.183,5.827A13.409,13.409,0,0,1,12.745,25.266ZM8.117,24.4h0a12.847,12.847,0,0,1-6.173-5.076H6.777A26.455,26.455,0,0,0,8.116,24.4Zm9.362-.041v0a22.965,22.965,0,0,0,1.558-5.033h4.5a12.888,12.888,0,0,1-6.061,5.035Zm7.232-7.4h-5.33l.017-.212a31.65,31.65,0,0,0-.124-6.576h5.969a12.544,12.544,0,0,1,.242,2.455,12.4,12.4,0,0,1-.774,4.333Zm-7.715,0H8.867a36.86,36.86,0,0,1,.047-6.789h7.981a29.223,29.223,0,0,1,.1,6.788Zm-10.5,0H.773A12.42,12.42,0,0,1,0,12.632a12.547,12.547,0,0,1,.242-2.455h6.3a39.133,39.133,0,0,0-.047,6.788Zm18.023-9.15h-5.6a.169.169,0,0,0-.012-.053A42.5,42.5,0,0,0,16.942.7a12.739,12.739,0,0,1,7.573,7.111Zm-8,0H9.209a46.561,46.561,0,0,1,1.831-7.7A13.466,13.466,0,0,1,12.745,0a12.322,12.322,0,0,1,1.4.076,39.717,39.717,0,0,1,2.367,7.738Zm-9.7,0H.962A12.773,12.773,0,0,1,8.341.773,50.927,50.927,0,0,0,6.819,7.815Z"
                      transform="translate(2.361 2.367)" fill="#12141d"/>
                <path id="Vector-2" data-name="Vector"
                      d="M15.1,30A15.062,15.062,0,0,1,4.427,25.608a14.922,14.922,0,0,1,0-21.216,15.172,15.172,0,0,1,21.352,0,14.93,14.93,0,0,1-.006,21.216A15.04,15.04,0,0,1,15.1,30Zm-3.553-8.305a22.121,22.121,0,0,0,1.818,5.82,13.2,13.2,0,0,0,1.741.118,13.557,13.557,0,0,0,1.694-.112,20.266,20.266,0,0,0,2.191-5.827Zm-7.243,0a12.843,12.843,0,0,0,6.18,5.077,26.127,26.127,0,0,1-1.34-5.077H4.3Zm17.1,0A23.128,23.128,0,0,1,19.84,26.73,12.846,12.846,0,0,0,25.9,21.694H21.4Zm.236-9.15a31.651,31.651,0,0,1,.124,6.576l-.018.212h5.331A12.4,12.4,0,0,0,27.845,15a12.565,12.565,0,0,0-.242-2.456Zm-10.36,0a36.851,36.851,0,0,0-.048,6.789h8.129a29.238,29.238,0,0,0-.1-6.789Zm-8.672,0a12.546,12.546,0,0,0,.531,6.789H8.849A38.539,38.539,0,0,1,8.9,12.544ZM19.309,3.07a42.724,42.724,0,0,1,1.959,7.06.166.166,0,0,1,.006.026.153.153,0,0,0,.006.027h5.6A12.742,12.742,0,0,0,19.309,3.07Zm-4.209-.7a12.491,12.491,0,0,0-1.705.112,45.469,45.469,0,0,0-1.831,7.7h7.308a39.469,39.469,0,0,0-2.367-7.739A13.8,13.8,0,0,0,15.1,2.367Zm-4.4.773a12.77,12.77,0,0,0-7.379,7.042H9.179A51.063,51.063,0,0,1,10.7,3.14Z"
                      fill="#fff"/>
              </g>
            </svg>
          </button>
          <p>
            Get free goodies from all over <br/>
            the world after purchase
          </p>
        </li>
        <li class="flex-center gap-4">
          <button class="p-8 bg-black rounded-full flex-center">
            <svg class="h-10 w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.7 30.5">
              <g id="icon" transform="translate(1.25 1.25)">
                <path id="Vector"
                      d="M0,2.8V25.2A2.8,2.8,0,0,0,2.8,28h28a1.4,1.4,0,0,0,1.4-1.4V7a1.4,1.4,0,0,0-1.4-1.4H2.8A2.8,2.8,0,1,1,2.8,0H26.6"
                      fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5"
                      stroke-dasharray="0 0"/>
                <path id="Vector-2" data-name="Vector" d="M2.1,4.2A2.1,2.1,0,1,1,4.2,2.1,2.1,2.1,0,0,1,2.1,4.2Z"
                      transform="translate(22.4 14.699)" fill="#fff"/>
              </g>
            </svg>
          </button>
          <p>
            Save up to 10% of every <br/>
            purchase you made
          </p>
        </li>
      </ul>
    </div>
  </header>
</template>
