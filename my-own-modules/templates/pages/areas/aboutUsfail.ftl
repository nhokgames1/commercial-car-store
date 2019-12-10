
[#if content.description?has_content || content.description?has_content || content.image?has_content]
 
    <div class="default-text-image">
     
        [#if content.description?has_content]
            <h4 class="chapter-head">${content.description!}</h4>
        [/#if]
         
        ${cmsfn.decode(content).description!}
         
        [#-- Resolve the 'imageLink' property to the asset node and create a link to it. For more detailed comments see the 'defaultPageScript.ftl' script.--]         
        [#if content.image?has_content]
            [#assign asset = damfn.getAsset(content.image)!]
            [#if asset?has_content && asset.link?has_content]
                <img class="img-responsive" src="${asset.image}" alt="">
            [/#if]
        [/#if]
         
    </div> 
 
[#elseif cmsfn.editMode]
    <div>No Content defined for this text & image component.</div>
[/#if]
