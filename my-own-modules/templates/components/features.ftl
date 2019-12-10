
[#if content.featureDescription?has_content || content.listFeatures?has_content ]
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<section id="mu-features">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="mu-features-area">
            <!-- Start Title -->
            <div class="mu-title">
              <h2>Our Features</h2>
              ${content.featureDescription!}
            </div>
            <!-- End Title -->
            <!-- Start features content -->
            <div class="mu-features-content">
              <div class="row">
              [#if content.listFeatures?has_content]
			    [#list cmsfn.children(content.listFeatures) as item]
                <div class="col-lg-4 col-md-4  col-sm-6">
                  <div class="mu-single-feature">
                    <span class="fa ${item.featureIcon!}"></span>
                    <h4>${item.featureName!}</h4>
                   <p> ${item.featureDescription!} </p>
                     <a href="${item.image!}">Read More</a>
                  </div>
                </div>
				[/#list]
                [/#if]
              </div>
            </div>	    
            <!-- End features content -->
          </div>
        </div>
      </div>
    </div>
  </section>

  
[#elseif cmsfn.editMode]
    <div>No Content defined for this text & image component.</div>
[/#if]
