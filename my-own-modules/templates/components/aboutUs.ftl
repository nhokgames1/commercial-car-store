[#if content.text?has_content || content.text?has_content || content.image?has_content]
<section id="mu-about-us">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-about-us-area">           
            <div class="row">
              <div class="col-lg-6 col-md-6">
                <div class="mu-about-us-left">
                  <!-- Start Title -->
                  <div class="mu-title">
                    <h2>About Us</h2>              
                  </div>
                  <!-- End Title -->
                   [#if content.text?has_content]
                  ${cmsfn.decode(content).text!}
                    [/#if]
                </div>
              </div>
              <div class="col-lg-6 col-md-6">
                <div class="mu-about-us-right">  
                  [#if content.image?has_content]
            [#assign asset = damfn.getAsset(content.image)!]
            [#if asset?has_content && asset.link?has_content]
                 <a id="mu-abtus-video" href="${asset.link}" target="mutube-video">
                  <img src="${asset.link}" alt="img" style='height: 100%; width: 100%; object-fit: contain'>
                </a>                
            [/#if]
                    [/#if]                          
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  
[#elseif cmsfn.editMode]
    <div>No Content defined for this text & image component.</div>
[/#if]