/**
 * WPGlobus for YoastSeo 3.1.0
 * Interface JS functions
 *
 * @since 1.4.7
 *
 * @package WPGlobus
 */
/*jslint browser: true*/
/*global jQuery, console, wpseoReplaceVarsL10n, YoastSEO, WPGlobusVendor, WPGlobusCore, WPGlobusCoreData*/

var WPGlobusYoastSeo;
jQuery(document).ready( function ($) {
	'use strict';
	
	if ( typeof wpseoReplaceVarsL10n === 'undefined' ) {
		return;	
	}		
	
	if ( typeof WPGlobusCoreData === 'undefined' ) {
		return;
	}

	if ( typeof WPGlobusVendor === 'undefined' ) {
		return;
	}
	
	var api;
	
	if ( 'edit-tags.php' == WPGlobusVendor.pagenow || 'term.php' == WPGlobusVendor.pagenow ) {
		
		api = WPGlobusYoastSeo = {
			editorIDs: [ 'description' ],
			editor: {},
			submitId: '#submit',
			preventChangeEditor: false,
			observer: null,
			init: function() {
				
				api.attachListeners();
				_.delay( api.start, 1500 );
			
			},
			submit: function( event ) {
				
				if ( 'mouseenter' === event.type ) {

					$.each( api.editor, function( id, d ) {
						
						if ( ! api.editor[ id ][ 'contentEditor' ] || api.editor[ id ][ 'contentEditor' ].isHidden() ) {
							
							$( '#'+id ).val( api.editor[ id ].content );	
							
						} else {

							tinymce.get( id ).setContent( api.editor[ id ].content	);
						}
						
					} );
					
				} else if ( 'mouseleave' === event.type ) {

					if ( ! api.preventChangeEditor ) {
						/** restore data for current language when submit button wasn't clicked */					
						$.each( api.editor, function( id, d ) {

							if ( ! api.editor[ id ].contentEditor || api.editor[ id ].contentEditor.isHidden() ) {

								$( '#'+id ).val( 
									WPGlobusCore.TextFilter( d.content, api.getCurrentTab(), 'RETURN_EMPTY' )
								);
								
							} else {
								
								tinymce.get( id ).setContent(
									WPGlobusCore.TextFilter( d.content, api.getCurrentTab(), 'RETURN_EMPTY' ) 
								);
								
							}
							
						} );
						api.preventChangeEditor = false;
					}
					
				} else if ( 'click' === event.type ) {

					api.preventChangeEditor = true;
					if ( 'tinymce' != getUserSetting( 'editor' ) ) {
						setUserSetting( 'editor', 'tinymce' );
					}
				
				}	
				
			},
			attachListeners: function() {

				/** switch language */
				$( '.wrap' ).on( 'tabsactivate', function( event, ui ) {
					
					$.each( api.editor, function( ID, ed ) {
					
						if ( ! api.editor[ ID ][ 'contentEditor' ] || api.editor[ ID ][ 'contentEditor' ].isHidden() ) {
							
							$( '#'+ID ).val( WPGlobusCore.TextFilter( ed.content, ui.newTab[0].dataset.language, 'RETURN_EMPTY' ) );	
							
						} else {
							
							tinymce.get( ID ).setContent(
								WPGlobusCore.TextFilter( 
									ed.content,
									ui.newTab[0].dataset.language,
									'RETURN_EMPTY'
								)	
							);
						
						}		
				
					} );
					
				} );

				/** submit action */
				$( document ).on( 'mouseenter', api.submitId, api.submit )
					.on( 'mouseleave', api.submitId, api.submit )			
					.on( 'click', api.submitId, api.submit );				
				
				
				/** yoast tinymce editors init */
				$( document ).on( 'tinymce-editor-init', function( event, editor ) {
					
					if ( _.indexOf( api.editorIDs, editor.id ) != -1 ) {
						
						var $ed = $( '#' + editor.id );
						
						api.editor[ editor.id ] = {};
						api.editor[ editor.id ][ 'contentEditor' ] = editor;
						api.editor[ editor.id ][ 'content' ] = $ed.val();
						
						editor.setContent(
							WPGlobusCore.TextFilter( 
								api.editor[ editor.id ][ 'content' ],
								WPGlobusCoreData.default_language,
								'RETURN_EMPTY'
							)	
						);
						
						$( '#' + editor.getContainer().id ).find( 'iframe' ).addClass( 'wpglobus-translatable' );
						$ed.removeClass( 'hidden' );
						
						/** tinymce */
						editor.on( 'nodechange keyup', _.debounce( api.update, 500 ) );
						
						/** textarea */
						$ed.on( 'input keyup', _.debounce( api.update, 500 ) );
					}
					
				} );	
				
			},	
			update: function( event ) {
				
				var id, text;

				if ( typeof event.target !== 'undefined' ) {
					id = event.target.id;
				} else {
					return;	
				}
				
				if ( id == 'tinymce' ) {
					id = event.target.dataset.id;	
				}	

				if ( typeof api.editor[ id ][ 'contentEditor' ] === 'undefined' ) {
					return;
				}

				if ( ! api.editor[ id ][ 'contentEditor' ] || api.editor[ id ][ 'contentEditor' ].isHidden() ) {
					text = $( '#' + id ).val();
				} else {
					text = api.editor[ id ][ 'contentEditor' ].getContent( { format: 'raw' } );
				}	

				api.editor[ id ][ 'content' ] = WPGlobusCore.getString( api.editor[ id ][ 'content' ], text, api.getCurrentTab() );
				
			},
			getCurrentTab: function() {
				return $( '.wpglobus-taxonomy-tabs-list .ui-tabs-active' ).data( 'language' );
			},				
			start: function() {
				
				/** hide all wpglobus description field */
				$( '.wpglobus-element_description' ).css({ 'display':'none' });
			
			}	
		
		}
		
		WPGlobusYoastSeo.init();
		
		var WPGlobusYoastSeoPlugin = function() {
		
			/** switch language */
			$( '.wrap' ).on( 'tabsactivate', function( event, ui ) {
				
				if ( ui.newTab[0].dataset.language == WPGlobusCoreData.default_language ) {
					$( '#poststuff .inside' ).css({ 'display':'block' });
				} else {
					$( '#poststuff .inside' ).css({ 'display':'none' });
				}	
				
			} );		
		
			/** translate strings */
			$.each( 
				[ 
					'category_description',
					'sitedesc',
					'sitename',
					'tag_description',
					'term_description',
					'term_title' 
				],
				function( i, e ) {
					wpseoReplaceVarsL10n.replace_vars[ e ] = WPGlobusCore.TextFilter( 
						wpseoReplaceVarsL10n.replace_vars[ e ],  
						WPGlobusCoreData.default_language
					);				
				} 
			);
			
			/** observer */
			WPGlobusYoastSeo.observer = new MutationObserver( function( mutations ) {
				mutations.forEach( function( mutation ) {
					if ( 'placeholder' == mutation.attributeName ) {
						WPGlobusYoastSeo.observer.disconnect(); 
						/** update focus keyword */
						var kw = $( '#wpseo_focuskw' );
						if ( '' == kw.val() ) { 
							kw.attr( 
								'placeholder', 
								WPGlobusCore.TextFilter( 
									kw.attr( 'placeholder' ),
									WPGlobusCoreData.default_language
								)
							);
						}
						WPGlobusYoastSeo.observer.observe( 
							document.querySelector('#wpseo_focuskw'),
							{ attributes: true, childList: true, characterData: true }
						);
						
					}	
				} );    
			} );

			WPGlobusYoastSeo.observer.observe( 
				document.querySelector('#wpseo_focuskw'),
				{ attributes: true, childList: true, characterData: true } 
			);
			
		}

		window.WPGlobusYoastSeoPlugin = new WPGlobusYoastSeoPlugin();
	
	} else {
		/**
		 * pagenow is in [ 'post.php', 'post-new.php' ] 
		 */
		api = WPGlobusYoastSeo = {
			wpseoTabSelector: '#wpglobus-wpseo-tabs',
			url		:   '',	
			attrs	: 	$('#wpglobus-wpseo-attr'),
			iB		: 	$('#wpseo-meta-section-content'), // insert before element
			t		:	$('#wpseo-meta-section-content'), // source
			ids		: 	'',
			names	:  '',
			editSnippetButtonClass 	: 'wpglobus-snippet-editor__edit-button',
			editSnippetFormClass 	: 'wpglobus-snippet-editor__form',
			editSnippetSubmitClass 	: 'wpglobus-snippet-editor__submit',
			editSnippetHeadingClass : 'wpglobus-snippet-editor__heading-editor',
			yoastTitleProgress		: 'wpglobus-yoast-title-progress',
			yoastMetadescProgress	: 'wpglobus-yoast-metadesc-progress',
			init: function() {
				api.start();
			},	
			initAddKeywordPopup: function() {
				/** @see wp-seo-metabox-302.js */
				/**
				 * Adds keyword popup if the template for it is found
				 */
				// If add keyword popup exists bind it to the add keyword button
				if ( 1 === $( '#wpseo-add-keyword-popup' ).length ) {
					$( '.wpseo-add-keyword' ).on( 'click', api.addKeywordPopup );
				}
			},	
			addKeywordPopup: function() {
				/** @see wp-seo-metabox-302.js */
				/**
				 * Shows a informational popup if someone click the add keyword button
				 */
				var title = $( '#wpseo-add-keyword-popup' ).find( 'h3' ).html();

				tb_show( title, '#TB_inline?width=650&height=350&inlineId=wpseo-add-keyword-popup', 'group' );

				// The container window isn't the correct size, rectify this.
				jQuery( '#TB_window' ).css( 'height', 235 );
				jQuery( '#TB_window' ).css( 'width', 680 );
			},	
			qtip: function() {
				/** @see jQuery( '.yoast_help' ).qtip() */
				$( '.yoast_help' ).qtip(
					{
						content: {
							attr: 'alt'
						},
						position: {
							my: 'bottom left',
							at: 'top center'
						},
						style   : {
							tip: {
								corner: true
							},
							classes : 'yoast-qtip qtip-rounded qtip-blue'
						},
						show    : 'click',
						hide    : {
							fixed: true,
							delay: 500
						}
					}
				);
			},		
			removeClasses: function( element, classes ) {
				_.each( classes, function( cl ){
					element.removeClass( cl );	
				} );
			},	
			updateProgressBar: function( element, lang ) {
				
				if ( typeof element === 'undefined' ) {
					return;	
				}
				if ( typeof lang === 'undefined' ) {
					
					if ( element.data( 'language' ) !== 'undefined' ) {
						lang = element.data( 'language' );
					}	
					
					if ( typeof lang === 'undefined' ) {
						return;	
					}	
				}					
				
				var allClasses = [
					"snippet-editor__progress--bad",
					"snippet-editor__progress--ok",
					"snippet-editor__progress--good"
				];
				var text, progress, score = 0, cl = '', max = 0, warningText = false;
				
				text = element.val();
				score = text.length;

				if ( element.hasClass( 'wpglobus-snippet-editor-title' ) ) {
					/**	
					 * "snippet-editor__progress--ok" - score 0-34
					 * "snippet-editor__progress--good" - score 35-65
					 * "snippet-editor__progress--ok" score >=66, red text 
					 */
					progress = $( 'progress.'+api.yoastTitleProgress + '_' + lang );
					max = progress.attr( 'max' );
					cl = allClasses[2];
					if ( score == 0 ) {
						cl = allClasses[1];
					} else if ( score > max ) {
						cl = allClasses[1];
						warningText = true;
					} else if ( score > 0 && score < 35 ) {
						cl = allClasses[1];
					}
				} else if ( element.hasClass( 'wpglobus-snippet-editor-meta-description' ) ) {
					/**
					 * "snippet-editor__progress--ok" - score 0-120
					 * "snippet-editor__progress--good" - score 121-156
					 * "snippet-editor__progress--ok" score >=157, red text 
					 */	
					progress = $( 'progress.'+api.yoastMetadescProgress + '_' + lang );
					max = progress.attr( 'max' );
					cl = allClasses[2];
					if ( score == 0 ) {
						cl = allClasses[1];
					} else if ( score > max ) {
						cl = allClasses[1];
						warningText = true;
					} else if ( score > 0 && score < 121 ) {
						cl = allClasses[1];
					}					
				}
				api.removeClasses( progress, allClasses );
				progress.attr( 'value', score ).addClass( cl );
				if ( warningText ) {
					element.css( 'color', '#f00' );	
				} else {
					element.css( 'color', '#000' );	
				}	
			
			},
			start: function() {

				/** tabs on */
				$( api.wpseoTabSelector ).tabs();
				
				api.ids 	= api.attrs.data('ids');
				api.names 	= api.attrs.data('names');
				
				api.ids 	= api.ids + ',' + api.attrs.data('qtip');
				api.ids 	= api.ids.split(',');
				api.names 	= api.names.split(',');
				
				$('#wpglobus-wpseo-tabs').insertBefore( api.iB );
				$('.wpseo-metabox-tabs').css({'height':'26px'});

				$('.wpglobus-wpseo-general').each(function(i,e){
					var $e = $(e);
					var l = $e.data('language');
					var sectionID = 'wpseo-meta-section-content_'+l;
					
					$e.html('<div id="'+sectionID+'" class="wpseo-meta-section wpglobus-wpseo-meta-section" style="width:100%" data-language="'+l+'">' + api.t.html() + '</div>');
					$('#'+sectionID+' .wpseo-metabox-tabs').attr( 'id', 'wpseo-metabox-tabs_'+l );
					$('#'+sectionID+' .wpseotab').attr( 'id', 'wpseo_content_'+l );
					$('#'+sectionID).css({'display':'block'});
					$('#wpseo_meta').css({'overflow':'hidden'});
					
					$('#'+sectionID+' .snippet_container').addClass('wpglobus-snippet_container');
					
					if ( l !== WPGlobusCoreData.default_language ) {
						/** hide plus sign */
						$('#'+sectionID+' .wpseo-add-keyword').addClass('hidden');
					}
					
					$.each( api.names, function(i,name) {
						$( '#'+name ).attr( 'name', name+'_'+l );
					}); 
					
					$.each( api.ids, function(i,id) {
						var $id = $('#'+id);
						if ( 'wpseosnippet' == id ) {
							$id.addClass('wpglobus-wpseosnippet');
						}
						if ( 'snippet_title' == id ) {
							$id.addClass('wpglobus-snippet_title');
						}
						if ( 'snippet_meta' == id ) {
							$id.addClass('wpglobus-snippet_meta');
						}
						/** url */
						if ( 'snippet_cite' == id ) {
							$id.addClass('wpglobus-snippet_cite');
						}
						if ( 'snippet_citeBase' == id ) {
							$id.addClass('wpglobus-snippet_citeBase');
						}
						/** focuskw */
						if ( 'yoast_wpseo_focuskw_text_input' == id ) {
							$id.addClass('wpglobus-yoast_wpseo_focuskw_text_input');
						}
						/** wpseo-pageanalysis */
						if ( 'wpseo-pageanalysis' == id ) {
							$id.addClass('wpglobus-wpseo-pageanalysis');
						}
						/** #snippet_preview */
						if ( 'snippet_preview' == id ) {
							$id.addClass('wpglobus-snippet_preview');
						}
						/** #snippet-editor-title */
						if ( 'snippet-editor-title' == id ) {
							$id.addClass( 'wpglobus-snippet-editor-title' );
							$id.parent( 'label' ).attr( 'for', $id.parent( 'label' ).attr( 'for' ) + '_' + l );
							$id.val( $( '#wpseo-tab-' + l ).data( 'wpseotitle' ) );

							$id.parent( 'label' ).find( 'progress' ).addClass( api.yoastTitleProgress ).addClass( api.yoastTitleProgress + '_' + l );
							_.debounce( api.updateProgressBar( $id,	l ), 500 );
						}
						/** #snippet-editor-slug */
						if ( 'snippet-editor-slug' == id ) {
							$id.addClass('wpglobus-snippet-editor-slug');
							$id.parent( 'label' ).attr( 'for', $id.parent( 'label' ).attr( 'for' ) + '_' + l );
							if ( WPGlobusCoreData.default_language != l ) {
								/** disable slug field by default */
								$id.attr( 'disabled', 'disabled' );
							}
						}
						/** #snippet-editor-meta-description */
						if ( 'snippet-editor-meta-description' == id ) {
							$id.addClass( 'wpglobus-snippet-editor-meta-description' );
							$id.parent( 'label' ).attr( 'for', $id.parent( 'label' ).attr( 'for' ) + '_' + l );	
							$id.val( $( '#wpseo-tab-' + l ).data( 'metadesc' ) );

							$id.parent( 'label' ).find( 'progress' ).addClass( api.yoastMetadescProgress ).addClass( api.yoastMetadescProgress + '_' + l );
							_.debounce( api.updateProgressBar( $id,	l ), 500 );
						}
						
						$id.attr( 'id', id+'_'+l );
						$( '#'+id+'_'+l ).attr( 'data-language', l );
					});
					
					// set focus keywords for every language
					var focuskw = WPGlobusCore.TextFilter( $('#yoast_wpseo_focuskw_text_input').val(), l, 'RETURN_EMPTY' );
					$( '#yoast_wpseo_focuskw_text_input_'+l ).val( focuskw );
					$( '#yoast_wpseo_focuskw_'+l ).val( focuskw );

					if ( l !== WPGlobusCoreData.default_language ) {
						$('#'+sectionID+' #yoast_wpseo_focuskw_text_input_'+l)
							.addClass('hidden')
							.after('<div class="wpglobus-suggest" style="font-weight:bold;">'+WPGlobusVendor.i18n.yoastseo_plus_access+'</div>');

						$('#'+sectionID+' #wpseo-pageanalysis_'+l).addClass('hidden');
					}
					
				}); // end each .wpglobus-wpseo-general	

				/** add wpglobus classes to 'Edit snippet' button and hidden form */
				$( '.wpglobus-wpseosnippet' ).each( function(i,e) {
					var $e = $(e);
					var l  = $e.data( 'language' );
					$e.find( 'button.snippet-editor__button.snippet-editor__edit-button' )
						.addClass( api.editSnippetButtonClass ).addClass( api.editSnippetButtonClass+'_'+l ).attr( 'data-language', l );
					$e.find( '.snippet-editor__form' ).addClass( api.editSnippetFormClass ).addClass( api.editSnippetFormClass+'_'+l );
					$e.find( '.snippet-editor__heading-editor' ).addClass( api.editSnippetHeadingClass ).addClass( api.editSnippetHeadingClass+'_'+l );
					$e.find( '.snippet-editor__submit' )
						.addClass( api.editSnippetSubmitClass ).addClass( api.editSnippetSubmitClass+'_'+l ).attr( 'data-language', l );
				});
				
				/** hide original section content */
				api.iB.addClass( 'hidden' );
				api.iB.css({'height':0,'overflow':'hidden'});
				
				// set focuskw to default language
				var focuskw_d = WPGlobusCore.TextFilter( $('#yoast_wpseo_focuskw_text_input').val(), WPGlobusCoreData.default_language, 'RETURN_EMPTY' );
				$( '#yoast_wpseo_focuskw_text_input' ).val( focuskw_d );
				$( '#yoast_wpseo_focuskw' ).val( focuskw_d );
				
				// wpseo-metabox-sidebar 
				$('.wpseo-metabox-sidebar .wpseo-meta-section-link').on('click',function(ev){
					if ( $(this).attr('href') == '#wpseo-meta-section-content' ) {
						$('#wpglobus-wpseo-tabs').css({'display':'block'});
					} else {
						$('#wpglobus-wpseo-tabs').css({'display':'none'});
					}	
				});
				
				/**
				 * Open form to edit snippet
				 */
				$( 'body' ).on( 'click', '.'+api.editSnippetButtonClass, function(event){
					var $t = $(this);
					var l  = $t.data( 'language' ); 
					var sform   = $( '.' + api.editSnippetFormClass + '_' + l );
					var sbutton = $( '.' + api.editSnippetSubmitClass + '_' + l );	
					var heading = $( '.' + api.editSnippetHeadingClass+'_'+l );
					
					if ( sform.hasClass( 'snippet-editor--hidden' ) )  {
						sform.removeClass( 'snippet-editor--hidden' );	
						heading.removeClass( 'snippet-editor--hidden' );
						sbutton.removeClass( 'snippet-editor--hidden' );		
					} else {
						sform.addClass( 'snippet-editor--hidden' );	
						heading.addClass( 'snippet-editor--hidden' );	
					}	
					$t.addClass( 'snippet-editor--hidden' );
				});
				
				/**
				 * Close snippet editor
				 */
				$( 'body' ).on( 'click', '.'+api.editSnippetSubmitClass, function(event){
					var $t = $(this);
					var l  = $t.data( 'language' ); 
					var button  = $( '.' + api.editSnippetButtonClass + '_' + l );
					var sform  	= $( '.' + api.editSnippetFormClass + '_' + l );
					var sbutton = $( '.' + api.editSnippetSubmitClass + '_' + l );	
					var heading = $( '.' + api.editSnippetHeadingClass+'_'+l );
					
					button.removeClass( 'snippet-editor--hidden' );	
					sform.addClass( 'snippet-editor--hidden' );	
					sbutton.addClass( 'snippet-editor--hidden' );	
					heading.addClass( 'snippet-editor--hidden' );	
				});
				
				/** 
				 * Make title
				 */
				$( document ).on( 'keyup', 'input.wpglobus-snippet-editor-title', function(event){
					var $t = $(this),
						l = $t.data( 'language' ),
						s = WPGlobusCore.getString( $( 'input[name="yoast_wpseo_title"]' ).val(), $t.val(), l );

					$( '#snippet_title_'+l ).text( $t.val() );

					YoastSEO.app.rawData.pageTitle = s;  // @todo maybe set at start js ?

					//$('#yoast_wpseo_title').val( s );  // @todo don't work with id
					$( 'input[name="yoast_wpseo_title"]' ).val( s );
					$( '#snippet_title' ).text( s );
					_.debounce( api.updateProgressBar( $t,	l ), 500 );	
				});
				
				/** 
				 * Make slug
				 */
				$( document ).on( 'keyup', 'input.wpglobus-snippet-editor-slug', function(event){
					var $t = $(this), l = $t.data( 'language' );

					$( '#snippet_cite_' + l ).text( $t.val() + '/' );
					$( '#editable-post-name' ).text( $t.val() );
					$( '#editable-post-name-full' ).text( $t.val() );					
				});	
				$( document ).on( 'change', 'input.wpglobus-snippet-editor-slug', function(event){
					var $t = $(this);
					
					/** @see editPermalink() in /wp-admin/js/post.js */
					$.post(ajaxurl, {
						action: 'sample-permalink',
						post_id: $('#post_ID').val() || 0,
						new_slug: $t.val(),
						new_title: $('#title').val(),
						samplepermalinknonce: $('#samplepermalinknonce').val()
					});			
					
				});				
			
				/** 
				 * Make meta description
				 */
				$( document ).on( 'keyup', 'textarea.wpglobus-snippet-editor-meta-description', function(event){
					var $t = $(this),
						l = $t.data( 'language' );
					$( '#snippet_meta_'+l ).text( $t.val() );

					var s = WPGlobusCore.getString( $('#yoast_wpseo_metadesc').val(), $t.val(), $t.data('language') );
					$( '#yoast_wpseo_metadesc' ).val( s );
					$( '#snippet_meta' ).text( s );
					_.debounce( api.updateProgressBar( $t,	l ), 500 );	
				});			
				
				// make synchronization click on "Post tab" with seo tab 
				$('body').on( 'click', '.wpglobus-post-body-tabs-list li', function(event){
					var $this = $(this);
					if ( $this.hasClass('wpglobus-post-tab') ) {
						$('#wpglobus-wpseo-tabs').tabs('option','active',$this.data('order'));
						
						// set keyword
						var k = $( '#yoast_wpseo_focuskw_text_input_' + $(this).data('language') ).val();
						YoastSEO.app.rawData.keyword = k ;
						$('#yoast_wpseo_focuskw_text_input').val( k );
						$('input[name="yoast_wpseo_focuskw"]').val( k );			
						
						YoastSEO.app.analyzeTimer(YoastSEO.app);
					}
				});
				
				api.qtip();	
				api.initAddKeywordPopup();	
				
			}	
		}
		
		/********/
		var _this;
		var WPGlobusYoastSeoPlugin = function() {
			
			this.replaceVars 	= wpseoReplaceVarsL10n.replace_vars;
			this.language 	 	= WPGlobusCoreData.default_language;
			this.tab 	 	 	= WPGlobusCoreData.default_language;
			this.wpseoTab 	 	= WPGlobusCoreData.default_language;
			
			this.title_template = wpseoPostScraperL10n.title_template;
			
			this.focuskw		= $('#yoast_wpseo_focuskw_text_input');
			this.focuskw_hidden	= $('input[name="yoast_wpseo_focuskw"]');
			this.focuskwKeep	= false;
			
			this.post_slug 		= '#editable-post-name-full';
			
			YoastSEO.app.registerPlugin( 'wpglobusYoastSeoPlugin', {status: 'ready'} );

			/**
			* @param modification    {string}    The name of the filter
			* @param callable        {function}  The callable
			* @param pluginName      {string}    The plugin that is registering the modification.
			* @param priority        {number}    (optional) Used to specify the order in which the callables
			*                                    associated with a particular filter are called. Lower numbers
			*                                    correspond with earlier execution.
			*/
			YoastSEO.app.registerModification( 'content', this.contentModification, 'wpglobusYoastSeoPlugin', 0 );
			YoastSEO.app.registerModification( 'title', this.titleModification, 'wpglobusYoastSeoPlugin', 0 );
			
			YoastSEO.app.registerModification( 'snippet_title', this.snippetModification, 'wpglobusYoastSeoPlugin', 0 );
			YoastSEO.app.registerModification( 'snippet_meta', this.snippetModification, 'wpglobusYoastSeoPlugin', 0 );		
			
			YoastSEO.app.registerModification( 'data_page_title', this.pageTitleModification, 'wpglobusYoastSeoPlugin', 0 );
			YoastSEO.app.registerModification( 'data_meta_desc', this.metaDescModification, 'wpglobusYoastSeoPlugin', 0 );	
			
			
			
			$(document).on( 'blur', '.wpglobus-snippet_title', function(ev){
				var $t = $(this);
				var s = WPGlobusCore.getString( $('#yoast_wpseo_title').val(), $t.text(), $t.data('language') );

				YoastSEO.app.rawData.pageTitle = s;  // @todo maybe set at start js ?

				//$('#yoast_wpseo_title').val( s );  // @todo don't work with id
				$('input[name="yoast_wpseo_title"]').val( s );
				$('#snippet_title').text( s );
			});
			
			$(document).on( 'blur', '.wpglobus-snippet_meta', function(ev){		
				var $t = $(this);
				var s = WPGlobusCore.getString( $('#yoast_wpseo_metadesc').val(), $t.text(), $t.data('language') );
				$( '#yoast_wpseo_metadesc' ).val( s );
				$( '#snippet_meta' ).text( s );
				
			});
			
			$(document).on( 'keyup', '.wpglobus-yoast_wpseo_focuskw_text_input', function(ev){		
				var $t = $(this);
				var s = $t.val();
				_this.focuskw.val( s );
				_this.focuskw_hidden.val( s );

				_this.updateWpseoKeyword( s, $t.data('language') );
			
				YoastSEO.app.analyzeTimer(YoastSEO.app);
			});		
			
			$( '#publish,#save-post' ).on('mouseenter', function(event){
				var $t, s = '';
				$('.wpglobus-yoast_wpseo_focuskw_text_input').each( function(i,e){
					$t = $(this);
					s = WPGlobusCore.getString( s, $t.val(), $t.data('language') );
				});
				_this.focuskw.val( s );
				_this.focuskw_hidden.val( s );
			}).on( 'mouseleave', function(event) {
				if ( ! _this.focuskwKeep ) {
					_this.wpseoTab = $('.wpglobus-wpseo-tabs-list .ui-tabs-active').data('language');
					var $t = $(this);
					_this.focuskw.val( $('#yoast_wpseo_focuskw_text_input_'+_this.wpseoTab ).val() );
					_this.focuskw_hidden.val( $('#yoast_wpseo_focuskw_text_input_'+_this.wpseoTab ).val() );				
				}	
			}).on( 'click', function(event){
				_this.focuskwKeep = true;
			});			
			
			$( WPGlobusYoastSeo.wpseoTabSelector ).on( 'tabsactivate', function(event, ui){
				/** set keyword */
				if ( ui.newPanel.attr( 'data-language' ) !== WPGlobusCoreData.default_language ) {
					return;	
				}	
				
				// set url @see YoastSEO.Analyzer.prototype.urlKeyword
				WPGlobusYoastSeo.url = $( _this.post_slug ).text();
					
				var k = $( '#yoast_wpseo_focuskw_text_input_' + WPGlobusCoreData.default_language ).val();
				YoastSEO.app.rawData.keyword = k ;
				_this.focuskw.val( k );
				_this.focuskw_hidden.val( k );

				YoastSEO.app.analyzeTimer( YoastSEO.app );
			});		
			
			_this = this;

		}
		
		WPGlobusYoastSeoPlugin.prototype.getWPseoTab = function() {
			return $('.wpglobus-wpseo-tabs-list .ui-tabs-active').data('language');
		}
		
		WPGlobusYoastSeoPlugin.prototype.citeModification = function(l) {
			var citeBase = '#snippet_citeBase_' + l,
				cite 	 = '#snippet_cite_' + l,
				cb 		 = $( '#wpseo-tab-' + l ).data( 'yoast-cite-base' ),
				e  		 = $( '#wpseo-tab-' + l ).data( 'cite-contenteditable' );

			if ( e === false ) {
				$(cite).attr( 'contenteditable', 'false' );
			}

			$(citeBase).text( cb );
			
		}
		
		WPGlobusYoastSeoPlugin.prototype.pageTitleModification = function(data) {
			//console.log( '1. pageTitleModification: ' + _this.getWPseoTab() );

			var id = '#snippet_title_',
				text = '', tr, return_text = '';

			if ( _this.title_template == data ) {
				/**
				 * meta key _yoast_wpseo_title is empty or doesn't exists 
				 */
				$.each(WPGlobusCoreData.enabled_languages, function(i,l) {
					_this.language = l;
					text = _this.replaceVariablesPlugin( data );
					$(id+l).text( text );
					if ( l == _this.getWPseoTab() ) {
						return_text = text;	
					}	
				});
			} else {

				tr = WPGlobusCore.getTranslations( data );
				
				if ( _this.getWPseoTab() !== WPGlobusCoreData.default_language ) {
					/**
					 * Case when we get data with extra language only ( without language marks )
					 */
					if ( tr[ WPGlobusCoreData.default_language ] == data ) {
						var l = _this.getWPseoTab();
						$( id+l ).text( data );
						return data;	
					}	
					
				}
				
				$.each(WPGlobusCoreData.enabled_languages, function(i,l) {
					_this.language = l;
					if ( '' === tr[l] ) {
						text = _this.replaceVariablesPlugin( _this.title_template );
					} else {
						text = tr[l];
					}	
					$( id+l ).text( text );
					if ( l == _this.getWPseoTab() ) {
						return_text = text;	
					}	
				});
			}
			
			return return_text;		
		}		
		
		WPGlobusYoastSeoPlugin.prototype.metaDescModification = function(data) {
			//console.log( '2. metaDescModification: ' + _this.getWPseoTab() );

			var id = '#snippet_meta_';
			
			if ( _this.getWPseoTab() !== WPGlobusCoreData.default_language ) {
				/**
				 * Case when we get data with extra language only ( without language marks )
				 */
				var tr = WPGlobusCore.getTranslations( data );
				
				if ( tr[ WPGlobusCoreData.default_language ] == data ) {
					var l = _this.getWPseoTab();
					$( id+l ).text( data );
					_this.citeModification( l );
					
					return data;	
				}	
				
			}

			$.each( WPGlobusCoreData.enabled_languages, function(i,l) {
				$( id+l ).text( WPGlobusCore.TextFilter( data, l, 'RETURN_EMPTY' ) );
				_this.citeModification( l );
			});			
			
			return WPGlobusCore.TextFilter( data, _this.getWPseoTab(), 'RETURN_EMPTY' );

		}	
		
		WPGlobusYoastSeoPlugin.prototype.snippetModification = function(data) {
			//console.log( '3. snippetModification: ' + _this.getWPseoTab() );
			return WPGlobusCore.TextFilter( data, _this.getWPseoTab(), 'RETURN_EMPTY' );
		}
		
		/**
		 * Adds some text to the data...
		 *
		 * @param data The data to modify
		 */
		WPGlobusYoastSeoPlugin.prototype.contentModification = function(data) {
			//console.log( '4. contentModification: ' + _this.getWPseoTab() );
			
			if ( _this.getWPseoTab() == WPGlobusCoreData.default_language ) {
				return data;
			}
			return $( '#content_' + _this.getWPseoTab() ).val();
		};	
		
		WPGlobusYoastSeoPlugin.prototype.titleModification = function(data) {
			//console.log( '5. titleModification: ' + _this.getWPseoTab() );
			
			setTimeout( _this.updatePageAnalysis, 1000 );
			
			if ( _this.getWPseoTab() == WPGlobusCoreData.default_language ) {
				return data;
			}
			
			return $( '#title_' + _this.getWPseoTab() ).val();

		};

		/**
		 * replaces default variables with the values stored in the wpseoMetaboxL10n object.
		 *
		 * @see YoastReplaceVarPlugin.prototype.defaultReplace
		 * @since 1.4.7
		 *
		 * @param {String} textString
		 * @return {String}
		 */
		WPGlobusYoastSeoPlugin.prototype.defaultReplace = function( textString ) {
			var focusKeyword = YoastSEO.app.rawData.keyword;

			return textString.replace( /%%sitedesc%%/g, this.replaceVars.sitedesc )
				.replace( /%%sitename%%/g, this.replaceVars.sitename )
				.replace( /%%term_title%%/g, this.replaceVars.term_title )
				.replace( /%%term_description%%/g, this.replaceVars.term_description )
				.replace( /%%category_description%%/g, this.replaceVars.category_description )
				.replace( /%%tag_description%%/g, this.replaceVars.tag_description )
				.replace( /%%searchphrase%%/g, this.replaceVars.searchphrase )
				.replace( /%%date%%/g, this.replaceVars.date )
				.replace( /%%id%%/g, this.replaceVars.id )
				.replace( /%%page%%/g, this.replaceVars.page )
				.replace( /%%currenttime%%/g, this.replaceVars.currenttime )
				.replace( /%%currentdate%%/g, this.replaceVars.currentdate )
				.replace( /%%currentday%%/g, this.replaceVars.currentday )
				.replace( /%%currentmonth%%/g, this.replaceVars.currentmonth )
				.replace( /%%currentyear%%/g, this.replaceVars.currentyear )
				.replace( /%%focuskw%%/g, focusKeyword );
		};		
		
		
		/**
		 * runs the different replacements on the data-string
		 *
		 * @see YoastReplaceVarPlugin.prototype.replaceVariablesPlugin
		 *
		 * @param {String} data
		 * @returns {string}
		 */
		/* 
		WPGlobusYoastSeoPlugin.prototype.replaceVariablesPlugin = function( data ) {
			if( typeof data !== 'undefined' ) {
				data = this.titleReplace( data );
				data = this.defaultReplace( data );
				//data = this.parentReplace( data );
				data = this.doubleSepReplace( data );
				//data = this.excerptReplace( data );
			}
			return data;
		};	// */
		
		/**
		 * runs the different replacements on the data-string
		 *
		 * @see YoastReplaceVarPlugin.prototype.replaceVariablesPlugin
		 * @since 1.4.7
		 *
		 * @param {String} data
		 * @returns {string}
		 */
		WPGlobusYoastSeoPlugin.prototype.replaceVariablesPlugin = function( data ) {
			if( typeof data !== 'undefined' ) {
				data = this.titleReplace( data );
				//data = this.termtitleReplace( data );
				data = this.defaultReplace( data );
				//data = this.parentReplace( data );
				data = this.replaceSeparators( data );
				//data = this.excerptReplace( data );
			}
			return data;
		};

		/**
		 * Replaces separators in the string.
		 *
		 * @since 1.4.7
		 * @see YoastReplaceVarPlugin.prototype.replaceSeparators
		 *
		 * @param {String} data
		 * @returns {String}
		 */
		WPGlobusYoastSeoPlugin.prototype.replaceSeparators = function( data ) {
			return data.replace( /%%sep%%(\s+%%sep%%)*/g, this.replaceVars.sep );
		};		
		
		/**
		 * Replaces %%title%% with the title
		 *
		 * @see YoastReplaceVarPlugin.prototype.titleReplace
		 *
		 * @param {String} data
		 * @returns {string}
		 */
		WPGlobusYoastSeoPlugin.prototype.titleReplace = function( data ) {
			var title = '', t = '';
			if ( this.language == WPGlobusCoreData.default_language ) {
				title = $('#title').val();
			} else {
				title = $('#title_'+this.language).val();
			}
			if ( typeof title === 'undefined' ) {
				title = YoastSEO.app.rawData.pageTitle;
			}

			data = data.replace( /%%title%%/g, title );

			return data;
		};
		
		/**
		 * removes double seperators and replaces them with a single seperator
		 *
		 * @see YoastReplaceVarPlugin.prototype.doubleSepReplace
		 *
		 * @param {String} data
		 * @returns {String}
		 */
		WPGlobusYoastSeoPlugin.prototype.doubleSepReplace = function( data ) {
			var escaped_seperator = YoastSEO.app.stringHelper.addEscapeChars( this.replaceVars.sep );
			var pattern = new RegExp( escaped_seperator + ' ' + escaped_seperator, 'g' );
			data = data.replace( pattern, this.replaceVars.sep );
			return data;
		};	
		
		WPGlobusYoastSeoPlugin.prototype.updateWpseoKeyword = function(kw,l) {
			if ( l  == WPGlobusCoreData.default_language ) {
				return;	
			}	
			if ( $('#wpseo-meta-section-content_'+l+' .wpseo_keyword').length == 1 ) {
				$('#wpseo-meta-section-content_'+l+' .wpseo_keyword').removeClass('wpseo_keyword').addClass('wpglobus-wpseo_keyword_'+l);
			}
			$('.wpglobus-wpseo_keyword_'+l).text(kw);
		}
		
		WPGlobusYoastSeoPlugin.prototype.updatePageAnalysis = function() {
			$( '#wpseo-pageanalysis_' + _this.getWPseoTab() ).html( $('#wpseo-pageanalysis').html() );
		};

		WPGlobusYoastSeoPlugin.prototype.countMatches = function(a,b) {
			/** @see yoast-seo-307.min.js */
			return null !== a.match(b) ? a.match.length : 0;
		};
		
		window.WPGlobusYoastSeoPlugin = new WPGlobusYoastSeoPlugin();	
		
		YoastSEO.Analyzer.prototype.urlKeyword = function() {
			/**
			 * @todo in next version check YoastSEO.Analyzer.prototype.urlKeyword with Paper 
			 */
			var result = [ { test: "urlKeyword", result: 0 } ];
			
			if ( typeof WPGlobusYoastSeo !== 'undefined' && WPGlobusYoastSeo.url !== '' ) {
				this.config.url = WPGlobusYoastSeo.url;
			}	

			if ( typeof this.config.url !== "undefined" ) {
				/*
				result[ 0 ].result = this.stringHelper.countMatches(
					this.config.url, this.keywordRegexInverse
				); // */
				result[ 0 ].result = WPGlobusYoastSeoPlugin.prototype.countMatches( this.config.url, this.keywordRegexInverse );
			}
			return result;
		};
		
		/**
		 * counts the occurences of the keyword in the URL, returns 0 if no URL is set or is empty.
		 *
		 * @since 1.4.7
		 * @see YoastSEO.Analyzer.prototype.urlKeyword
		 * @see https://github.com/Yoast/YoastSEO.js/blob/master/dist/yoast-seo.js
		 *
		 * @returns {{name: string, count: number}}
		 */
		/* 
		YoastSEO.Analyzer.prototype.urlKeyword = function() {
			var score = 0;

			if ( Paper.prototype.hasKeyword() && this.paper.hasUrl() ) {
				score = checkForKeywordInUrl( this.paper.getUrl(), this.paper.getKeyword() );
			}

			var result = [ { test: "urlKeyword", result: score } ];
			return result;
		}; // */
	
		/**
		 * Construct the Paper object and set the keyword property.
		 * @param {string} text The text to use in the analysis.
		 * @param {object} attributes The object containing all attributes.
		 * @constructor
		 */
		/* 
		var Paper = function( text, attributes ) {
			this._text = text || "";

			this._attributes = attributes || {};

			defaults( this._attributes, defaultAttributes );
		};	// */
		/**
		 * Check whether a keyword is available.
		 * @returns {boolean} Returns true if the Paper has a keyword.
		 */
		/* 
		Paper.prototype.hasKeyword = function() {
			return this._attributes.keyword !== "";
		}; // */

		/**
		 * Return the associated keyword or an empty string if no keyword is available.
		 * @returns {string} Returns Keyword
		 */
		/* 
		Paper.prototype.getKeyword = function() {
			return this._attributes.keyword;
		};	 // */	
		
	} /** endif WPGlobusVendor.pagenow */	
	
});