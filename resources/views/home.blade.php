<x-app-layout title="Home Page">
    <div class="w-full mb-10">
        <div class="mb-16">
            <h2 class="mt-16 mb-5 text-3xl font-bold text-yellow-500"> {{ __('home.featured_posts') }} </h2>
            <div class="w-full">
                <div class="grid w-full grid-cols-3 gap-10">
                    @foreach ($featuredPosts as $post)
                        <x-posts.post-card :post="$post" class="col-span-3 md:col-span-1" />
                    @endforeach
                </div>
            </div>
            <a class="block mt-10 text-lg font-semibold text-center text-yellow-500" href="{{ route('posts.index') }}">
                {{ __('home.more_posts') }}</a>
        </div>
        <hr>

        <h2 class="mt-16 mb-5 text-3xl font-bold text-yellow-500">{{ __('home.latest_posts') }}</h2>
        <div class="w-full mb-5">
            <div class="grid w-full grid-cols-3 gap-10">
                @foreach ($latestPosts as $post)
                    <x-posts.post-card :post="$post" class="col-span-3 md:col-span-1" />
                @endforeach
            </div>
        </div>
        <a class="block mt-10 text-lg font-semibold text-center text-yellow-500" href="{{ route('posts.index') }}">
            {{ __('home.more_posts') }}</a>
    </div>
</x-app-layout>
