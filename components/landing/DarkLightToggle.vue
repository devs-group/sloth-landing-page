<template>
    <ClientOnly>
        <button
            keepalive
            @click="toggleDark()"
            class="flex flex-row items-center ml-4"
        >
            <Icon v-if="isDark" name="bx:bxs-moon" />
            <Icon v-else name="bx:bxs-sun" />

            <span class="ml-2">{{ isDark ? "Dark" : "Light" }}</span>
        </button>
    </ClientOnly>
</template>

<script setup lang="ts">
import { useDark, useToggle } from "@vueuse/core";

const isDark = useDark();
const toggleDark = useToggle(isDark);
</script>
