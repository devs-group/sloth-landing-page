<script setup>
const features = [
    {
        title: "User-Friendly Web Interface",
        description:
            "Manage and deploy containers effortlessly through an intuitive dashboard accessible to developers of all levels.",
        icon: "bx:bxs-dashboard",
    },
    {
        title: "Highly Configurable",
        description:
            "Customize container settings such as storage, networking, and URLs with ease.",
        icon: "bx:bxs-cog",
    },
    {
        title: "Cross-Platform Compatibility",
        description:
            "Run your container applications seamlessly on any server or computer, regardless of architecture.",
        icon: "bx:bxs-server",
    },
    {
        title: "Seamless Pipeline Integration",
        description:
            "Trigger deployments effortlessly by calling a webhook from your pipeline after the build step.",
        icon: "bx:bxs-analyse",
    },
    {
        title: "Pre-Configured Services",
        description:
            "Quickly start services like MinIO or PostgreSQL containers with pre-configured setups in just a few seconds.",
        icon: "bx:bxs-data",
    },
    {
        title: "Integrated Shell",
        description:
            "Access the shell of your containers directly from your browser for convenient management.",
        icon: "bx:bxs-file",
    },
];
</script>

<template>
    <div class="mt-16 md:mt-0">
        <h2 class="text-4xl lg:text-5xl font-bold lg:tracking-tight mt-12">
            Everything you need to deploy containers
        </h2>
        <p class="text-lg mt-4 text-slate-600 dark:text-slate-400">
            Sloth is designed to take the hassle out of container application
            deployment with a robust set of features.
        </p>
    </div>

    <div class="grid sm:grid-cols-2 md:grid-cols-3 mt-16 gap-16">
        <div v-for="item of features" class="flex gap-4 items-start">
            <div
                class="mt-1 bg-black dark:bg-gray-700 rounded-full p-2 w-8 h-8 shrink-0"
            >
                <Icon class="text-white" :name="item.icon" />
            </div>
            <div>
                <h3 class="font-semibold text-lg">{{ item.title }}</h3>
                <p
                    class="text-slate-500 dark:text-slate-300 mt-2 leading-relaxed"
                >
                    {{ item.description }}
                </p>
            </div>
        </div>
    </div>
</template>
