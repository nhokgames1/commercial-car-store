[#if cmsfn.children(content.listSliderShow)?has_content]

<section id="mu-slider">
    <!-- Start single slider item -->
  [#list cmsfn.children(content.listSliderShow) as item]
    <div class="mu-slider-single">
      <div class="mu-slider-img">
        <figure>
          [#if item.image?has_content]
          [#assign asset = damfn.getAsset(item.image)!]
          <img src="${asset.link}" alt="img">
           [/#if]
        </figure>
      </div>
      <div class="mu-slider-content">
        <h4>${item.title!}</h4>
        <span></span>
        <h2>${item.header!}</h2>
        <p>${item.description!}</p>
        <a href="${item.link!}" class="mu-read-more-btn">Read More</a>
      </div>
    </div>
  [/#list]

    <!-- Start single slider item -->
    <!-- Start single slider item -->
    <!-- Start single slider item -->
    <!-- Start single slider item -->
    <!-- Start single slider item -->    
  </section>

[/#if]
