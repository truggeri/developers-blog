import ArticleList from './svelte-components/ArticleList.svelte';
import HelloWorld from './svelte-components/HelloWorld.svelte';

const helloWorldApp = new HelloWorld({
	target: document.getElementById("svelte_hello_world"),
	props: {
	}
});

const articleList = new ArticleList({
	target: document.getElementById("svelte_article_list"),
	props: {
	}
});
export { articleList, helloWorldApp };
