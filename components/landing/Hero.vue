<template>
    <main
        class="grid lg:grid-cols-2 place-items-center pt-24 pb-24 md:pt-8 mt-12"
    >
        <div class="p-24 md:order-1 hidden md:block">
            <img
                class="transition-transform transform hover:scale-125 rounded-2xl"
                src="~/assets/img/hero.webp"
                alt="sloth"
                loading="eager"
                format="avif"
                width="512"
                height="512"
            />
        </div>

        <div>
            <h1
                class="text-5xl lg:text-6xl xl:text-7xl font-bold lg:tracking-tight"
            >
                Simplify Container Deployment
            </h1>
            <p
                class="text-lg mt-12 text-slate-600 dark:text-slate-400 max-w-xl"
            >
                Sloth is an open-source platform that streamlines container
                application deployment. Configure and deploy containers
                effortlessly through an intuitive web interface.
            </p>
            <div class="mt-6 flex flex-col sm:flex-row gap-3">
                <LandingLink
                    href="https://sloth.devs-group.ch/_/"
                    target="_blank"
                    rel="noopener"
                    >Get Started</LandingLink
                >
                <LandingLink
                    size="lg"
                    styleName="outline"
                    rel="noopener"
                    href="https://github.com/devs-group/sloth"
                    target="_blank"
                    >View Repo</LandingLink
                >
            </div>
        </div>
    </main>
</template>
