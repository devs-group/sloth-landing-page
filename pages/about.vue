<script setup>
definePageMeta({
    layout: "landing",
});

const TeamImg1 = "https://devs-group.com/_nuxt/img/logo_white.c7c483b.svg";

const team = [
    {
        name: "devs group",
        title: "The team behind sloth",
        avatar: {
            src: TeamImg1,
            width: 80,
            height: 80,
        },
    },
];
</script>

<template>
    <LandingContainer>
        <LandingSectionhead>
            <template v-slot:title>About</template>
            <template v-slot:desc>Meet the team behind Sloth.</template>
        </LandingSectionhead>

        <div class="flex flex-col gap-3 mx-auto max-w-4xl mt-16">
            <h2 class="font-bold text-3xl text-gray-800 dark:text-gray-200">
                Simplifying container deployments, one step at a time.
            </h2>
            <p class="text-lg leading-relaxed text-slate-500">
                Sloth is built by a passionate team of developers dedicated to
                making container deployment accessible to everyone. Our mission
                is to simplify the complexities of modern software
                infrastructure while fostering innovation and collaboration.
            </p>
        </div>
        <div class="grid grid-cols-1 gap-1 mt-12">
            <div v-for="item of team" class="group">
                <div class="w-full flex flex-col items-center justify-center">
                    <img
                        :src="item.avatar.src"
                        :width="item.avatar.width"
                        :height="item.avatar.height"
                        format="avif"
                        alt="Team"
                        class="object-cover rounded transition group-hover:-translate-y-1 group-hover:shadow-xl invert dark:invert-0"
                    />
                </div>

                <div class="mt-4 text-center">
                    <h2 class="text-lg text-gray-800 dark:text-gray-200">
                        {{ item.name }}
                    </h2>
                    <h3 class="text-sm text-slate-500">{{ item.title }}</h3>
                </div>
            </div>
        </div>
    </LandingContainer>
</template>
