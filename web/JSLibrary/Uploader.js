  $(document).ready(function(){
     function createUploader() {
        var uploader = new qq.FineUploader({
            element: document.getElementById('divULFiles'),
            request: {
                endpoint: 'server/handleUploads'
            }
        });
    }
  });