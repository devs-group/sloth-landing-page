<script setup>
import { useDark, useToggle } from "@vueuse/core";

const isDark = useDark();
const toggleDark = useToggle(isDark);

const menuitems = [
    {
        title: "Pricing",
        path: "/pricing",
        isTargetBlank: false,
    },
    {
        title: "About",
        path: "/about",
        isTargetBlank: false,
    },
    {
        title: "Discord",
        path: "https://discord.gg/HEGBsRAQ",
        isTargetBlank: true,
    },
];

const open = ref(false);
</script>

<template>
    <LandingContainer>
        <header
            class="flex flex-col lg:flex-row justify-between items-center my-5"
        >
            <div class="flex w-full lg:w-auto items-center justify-between">
                <a href="/" class="text-lg"
                    ><span
                        class="font-bold text-slate-800 dark:bg-slate-200 p-2"
                        >sloth</span
                    >
                </a>
                <div class="block lg:hidden">
                    <button @click="open = !open" class="text-gray-800">
                        <svg
                            fill="currentColor"
                            class="w-4 h-4"
                            viewBox="0 0 20 20"
                            xmlns="http://www.w3.org/2000/svg"
                        >
                            <title>Menu</title>
                            <path
                                v-show="open"
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M18.278 16.864a1 1 0 01-1.414 1.414l-4.829-4.828-4.828 4.828a1 1 0 01-1.414-1.414l4.828-4.829-4.828-4.828a1 1 0 011.414-1.414l4.829 4.828 4.828-4.828a1 1 0 111.414 1.414l-4.828 4.829 4.828 4.828z"
                            ></path>
                            <path
                                v-show="!open"
                                fill-rule="evenodd"
                                d="M4 5h16a1 1 0 010 2H4a1 1 0 110-2zm0 6h16a1 1 0 010 2H4a1 1 0 010-2zm0 6h16a1 1 0 010 2H4a1 1 0 010-2z"
                            ></path>
                        </svg>
                    </button>
                </div>
                <button
                    @click="toggleDark()"
                    class="flex flex-row items-center ml-4"
                >
                    <Icon v-if="isDark" name="bx:bxs-moon" />
                    <Icon v-else name="bx:bxs-sun" />

                    <span class="ml-2">{{ isDark ? "Dark" : "Light" }}</span>
                </button>
            </div>

            <nav
                class="w-full lg:w-auto mt-2 lg:flex lg:mt-0"
                :class="{ block: open, hidden: !open }"
            >
                <ul class="flex flex-col lg:flex-row lg:gap-3">
                    <li v-for="item of menuitems">
                        <a
                            :href="item.path"
                            class="flex lg:px-3 py-2 text-gray-600 dark:text-gray-200 dark:hover:text-gray-300 hover:text-gray-900"
                            :target="item.isTargetBlank ? '_blank' : '_self'"
                        >
                            {{ item.title }}
                        </a>
                    </li>
                </ul>
                <div class="lg:hidden flex items-center mt-3 gap-4">
                    <LandingLink
                        href="https://sloth.devs-group.ch/_/"
                        target="_blank"
                        rel="noopener"
                    >
                        Get Started
                    </LandingLink>
                </div>
            </nav>
            <div>
                <div class="hidden lg:flex items-center gap-4">
                    <LandingLink
                        href="https://sloth.devs-group.ch/_/"
                        target="_blank"
                        rel="noopener"
                    >
                        Get Started
                    </LandingLink>
                </div>
            </div>
        </header>
    </LandingContainer>
</template>
