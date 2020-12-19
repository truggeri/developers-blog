<script>
  export let date, title, url;

  let formatted_date = date;
</script>

<style>
  .card {
    display: flex;
    position: relative;
    flex-direction: column;
    height: 350px;
    width: 400px;
    min-width: 250px;
    padding: 1.5rem;
    background: #12181b;
    border-radius: 16px;
    box-shadow: -1rem 0 3rem #000;
    transition: .2s;
  }

  .card:hover {
    transform: translateY(-1rem);
  }

  :global(.card:hover~.card) {
    transform: translateX(130px);
  }

  :global(.card:not(:first-child)) {
    margin-left: -130px;
  }
</style>

<article class="card">
  <div class="card-header">
    <p>{ formatted_date }</p>
    <p><a href="{ url }">{ title }</a></p>
  </div>

  <div class="tags">
  </div>
</article>