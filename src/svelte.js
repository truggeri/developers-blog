import HelloWorld from './svelte-components/HelloWorld.svelte';

const helloWorldApp = new HelloWorld({
	target: document.getElementById("svelte_hello_world"),
	props: {
	}
});

export default helloWorldApp;