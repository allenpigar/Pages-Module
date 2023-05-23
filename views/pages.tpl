{{ if {request.pathPart(1)} == 'contact' }}
  {{ include contact_page }}
{{ else }}
  {{ if {this.featured_image} }}
    {{ include article_header }}
  {{ end-if }}

  {{ if {this.body} }}
  <div class="wrapper wrapper--96">
  <div class="grid--fluid">
    <div class="row vr__8x" >
      <div class="col-xs-10 col-xs-offset-1 col-md-6 col-md-offset-3">
        <div class="wrapper-markup-cms">
          <div class="text-article" data-rspec="blog-post-text">
            {{ this.body }}
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  {{ end-if}}

  {{ if {this.enable_email_capture} }}
    <div class="row vr__3x">
      <div class="col-xs-12 col-md-offset-1 col-md-10">
        {{ include block_email_capture }}
      </div>
    </div>
  {{ end-if }}

  {{ if {this.show_related_posts} }}
    {{ include block_featured_posts }}
  {{ end-if }}
{{ end-if }}

{{ include interior_start_saving }}