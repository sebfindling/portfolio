<script setup>
defineProps({ year: String, right: Boolean, left: Boolean, first: Boolean, last: Boolean })
</script>


<template>
    <div v-if="left">
        <div class="row timeline">
            <div class="col-2">
                <div class="corner right-bottom"></div>
            </div>
            <div class="col-8">
                <hr />
            </div>
            <div class="col-2">
                <div class="corner top-left" :class="{ 'no-right-border': first }"></div>
            </div>
        </div>

        <div class="row align-items-center year">
            <div class="col-2 text-center full">
                <div class="circle push-left">{{ year }}</div>
            </div>
            <div class="col-6">
                <slot />
            </div>
        </div>

         <div class="row timeline" v-if="last">
            <div class="col-2">
                <div class="corner top-right"></div>
            </div>
            <div class="col-8">
                <hr />
            </div>
            <div class="col-2">
                <div class="corner left-bottom" :class="{ 'no-right-border': last }"></div>
            </div>
        </div>

    </div>

    <div v-if="right">
        <div class="row timeline">
            <div class="col-2">
                <div class="corner top-right"  :class="{ 'no-left-border': first }"></div>
            </div>
            <div class="col-8">
                <hr />
            </div>
            <div class="col-2">
                <div class="corner left-bottom"></div>
            </div>
        </div>

        <div class="row align-items-center justify-content-end year">
            <div class="col-6 text-sright">
                <slot />
            </div>
            <div class="col-2 text-center full">
                <div class="circle">{{ year }}</div>
            </div>
        </div>

        <div class="row timeline" v-if="last">
            <div class="col-2">
                <div class="corner right-bottom no-left-border"></div>
            </div>
            <div class="col-8">
                <hr />
            </div>
            <div class="col-2">
                <div class="corner top-left "></div>
            </div>
        </div>


    </div>
</template>