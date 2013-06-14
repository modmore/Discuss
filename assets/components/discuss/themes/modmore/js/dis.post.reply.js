$(function() {
    DIS.ReplyPost.init();
});
DIS.ReplyPost = function() {
    var attachments = 1;
    
    return {
        init: function() {
            $('.dis-preview').click(this.preview);
            $('.dis-message-write').click(this.message);
            $("#dis-message-preview").delegate(".dis-message-cancel", "click", this.message);
            $('.dis-post-title').click(this.togglePost);
            $('.dis-post-author').click(this.toggleAuthor);
            $('.quick-reply').click(this.quickReply);
            $('.dis-add-attachment').click(this.addAttachment);
        }

		,quickReply: function() {
			$.scrollTo($('.dis-form'),500);
			$('#dis-thread-message').focus();
			return false;
		}
        
        ,preview: function() {
            var f = $('#dis-reply-post-form');
            var p = f.serialize()+'&action=thread/preview';

            var a = $.extend({},DIS.baseAjax,{
                url: DIS.url
                ,async: false
                ,data: p
                ,type: 'POST'
            });
            var a = $.ajax(a);
            $('#dis-message-preview').hide().html(a.responseText).fadeIn(80);
            if (SyntaxHighlighter) { SyntaxHighlighter.highlight(); }

            $('.dis-message-write').removeClass('selected');
            $('.dis-preview').addClass('selected');
            $('#overlay-20').fadeIn();
            return false;
        }

        ,message: function() {
            $('.dis-preview').removeClass('selected');
            $('.dis-message-write').addClass('selected');
            $('#dis-message-preview').fadeOut(80);
            $('#overlay-20').fadeOut();
            return false;        
        }
        
        ,togglePost: function() {
            var p = $(this).attr('post');
            $('#dis-board-post-'+p).find('ol').slideToggle();
            $('#dis-thread-ct-'+p).slideToggle();
        }
        
        ,toggleAuthor: function() {
            $(this).find('.dis-sig-ct').slideToggle();
        }
        
        ,addAttachment: function() {
            var d = $('#dis-attachments');
            var i = attachments+1;
            if (i > DIS.config.attachments_max_per_post) return false;
            var tpl = '<input type="file" name="attachment'+i+'" />';

            d.append(tpl);
            attachments = attachments+1;
            if (i == DIS.config.attachments_max_per_post) {
                $('.dis-add-attachment').animate({opacity: .3}, 300).addClass('disabled');
            }
            return false;
        }
    }
}();