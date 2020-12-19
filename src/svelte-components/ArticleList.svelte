<script>
  import ArticleCard from './ArticleCard.svelte'
  import posts from '../posts.js'
  let articles = posts.slice(0, 5);
</script>

<style>
  .card-list {
    display: flex;
    padding: 3rem;
    overflow-x: scroll;
}
</style>

<section class="card-list">
  {#each articles as article}
    <ArticleCard {...article} />
  {/each}
</section>