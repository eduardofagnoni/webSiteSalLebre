// transform cropper dataURI output to a Blob which Dropzone accepts
var dataURItoBlob = function (dataURI) {
    var byteString = atob(dataURI.split(',')[1]);
    var ab = new ArrayBuffer(byteString.length);
    var ia = new Uint8Array(ab);
    for (var i = 0; i < byteString.length; i++) {
        ia[i] = byteString.charCodeAt(i);
    }
    return new Blob([ab], {type: 'image/jpeg'});
};

Dropzone.autoDiscover = false;
var c = 0;





// Foto para capa Projeto
var myDropzoneFotoTopoProjeto = new Dropzone("#my-dropzone-fotoTopoProjeto", {
    addRemoveLinks: true,
    parallelUploads: 1,
    uploadMultiple: true,
    maxFiles: 1,
    init: function () {
        this.on('success', function (file) {
            var $button = $('<a href="javascript:undefined;" class="js-open-cropper-modal" data-file-name="' + file.name + '">Recortar e Publicar</a>');
            $(file.previewElement).append($button);
        });
    }
});
$('#my-dropzone-fotoTopoProjeto').on('click', '.js-open-cropper-modal', function (e) {
    e.preventDefault();
    var fileName = $(this).data('file-name');

    var modalTemplate =
        '<div class="modal fade" tabindex="-1" role="dialog">' +
        '<div class="modal-dialog modal-lg" role="document">' +
        '<div class="modal-content">' +
        '<div class="modal-header">' +
        '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
        '<h4 class="modal-title">Crop</h4>' +
        '</div>' +
        '<div class="modal-body">' +
        '<div class="image-container">' +
        '<img id="img-' + ++c + '" src="__media/receita/' + fileName + '">' +
        '</div>' +
        '</div>' +
        '<div class="modal-footer">' +
        '<button type="button" class="btn btn-warning rotate-left"><span class="fa fa-rotate-left"></span></button>' +
        '<button type="button" class="btn btn-warning rotate-right"><span class="fa fa-rotate-right"></span></button>' +
        '<button type="button" class="btn btn-warning scale-x" data-value="-1"><span class="fa fa-arrows-h"></span></button>' +
        '<button type="button" class="btn btn-warning scale-y" data-value="-1"><span class="fa fa-arrows-v"></span></button>' +
        '<button type="button" class="btn btn-warning reset"><span class="fa fa-refresh"></span></button>' +
        '<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>' +
        '<button type="button" class="btn btn-primary crop-upload">Cortar & upload</button>' +
        '</div>' +
        '</div>' +
        '</div>' +
        '</div>';

    var $cropperModal = $(modalTemplate);

    $cropperModal.modal('show').on("shown.bs.modal", function () {
        
        var cropper = new Cropper(document.getElementById('img-' + c), {
            autoCropArea: 1,
            movable: false,
            rotatable: true,
            //aspectRatio: 2 / 1, 
            autoCropArea: 0,
            strict: false,
            guides: true,
            highlight: false,
            dragCrop: true,
            cropBoxResizable: true,
            built: function () {
                var croppedCanvas = $(this).cropper('getCroppedCanvas', {
                    width: 488,
                    height: 372,
                    minWidth: 488,
                    minHeight: 372,
                    maxWidth: 488,
                    maxHeight: 372,
                    fillColor: '#fff',
                    imageSmoothingEnabled: false,
                    imageSmoothingQuality: 'high',
                });
            
                croppedCanvas.toDataURL(); // Get the 100 * 100 image.
            }
        });

        var $this = $(this);
        $this
            .on('click', '.crop-upload', function () {
                // get cropped image data
                var blob = cropper.getCroppedCanvas().toDataURL();
                // transform it to Blob object
                var croppedFile = dataURItoBlob(blob);
                croppedFile.name = fileName;

                var files = myDropzoneFotoTopoProjeto.getAcceptedFiles();
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    if (file.name === fileName) {
                        myDropzoneFotoTopoProjeto.removeFile(file);
                    }
                }
                myDropzoneFotoTopoProjeto.addFile(croppedFile);
                $this.modal('hide');
            })
            .on('click', '.rotate-right', function () {
                cropper.rotate(90);
            })
            .on('click', '.rotate-left', function () {
                cropper.rotate(-90);
            })
            .on('click', '.reset', function () {
                cropper.reset();
            })
            .on('click', '.scale-x', function () {
                var $this = $(this);
                cropper.scaleX($this.data('value'));
                $this.data('value', -$this.data('value'));
            })
            .on('click', '.scale-y', function () {
                var $this = $(this);
                cropper.scaleY($this.data('value'));
                $this.data('value', -$this.data('value'));
            });
    });
});