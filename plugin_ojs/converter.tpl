<h3>{translate key="plugins.generic.converter.title"}</h3>
{if $requiredData}
	<h5 class="settingsConverter">{translate key="plugins.generic.converter.requiredSettings"}</h5>
{else}
	<div>
		<div class="inline">
			<h4>{translate key="plugins.generic.converter.select.file"}</h4>
		</div>
		<div class="inline">
			<select id="archivosLista">
			   {foreach key=id item=name from=$archivos}
					<option value="{$id}">{$name}</option>
			   {/foreach}
			</select>
		</div>
	</div>
	
	<div id="copyedit">
		<div style="margin-top:5px;">
			<div class="inline">
				<input id="btnConvert" 		type="button" value="{translate key="plugins.generic.converter.convert"}" class="button defaultButton" />
			</div>
			<div class="inline">
				{if !empty($zipFileHTML)}
					<div class="inline">
						<input id="btnSendZipHTML" type="image" name="image" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABrklEQVRIS+2VT07CYBDF37SfiUQTcaOpG/EEslRggTsjNeEI9QTiCcATWE5gj0AiGHe4wD9LvAFuJLoBEo0mlo6ZYv1DwAqEhYldtvN9v5n33qSEKT805fvxDwhV+EOih51E3CU6JqJ46KkfCpi5rpj3lk4v61L2AWhmkg2AoiDYkwDAyAHcMioXa98BZooZXnGlfJmbBHBnJmyCtm+Ua37znxO8AwhaG67rGGfXjVFAze2NGJSyGF50KADAoVGuFfwumKLodgthIP9iXc8zcUemb5qpAoD8wAkCgHR+v7uZ9TzdAeFoVj0WF0v19teJWtl49MWd3wfjQNO61vLJVUm+/xogxX6yNHIAWiXAFpC8l4sZvpm3ymMrSMyYAK0qFxFoHcw9X4hiDL4RsPK8rbEAve61KgFF8aVpptJgdt4BllGunftyMHI6e+kA8iuJxDhWeql//EGpCmSMqKe0+BQKmFWP9vPrnBWZeXL6jR0WWzE8OPPizsseDU/RODsQgINdGAzIJBtMtCBpGWXB+mslXcTcMSoXsW+bHGjpp2WCR9L11bv/H06omH9fojcwUwEoak9E/AAAAABJRU5ErkJggg==" width="24" height="24"/>
					</div>	
				{/if}
			</div>
			<div class="inline">
				{if !empty($zipFileHTML)}
					<input id="btnDownloadZip" type="button" value="{translate key="plugins.generic.converter.downloadzip"}" class="button defaultButton" data-tool="{$archivoToolTipHTML}" /><span class="fieldtip">{$archivoToolTipHTML}</span>
				{/if}
			</div>
		</div>	
		<div style="margin-top:5px;">
			<div class="inline">
				<input id="btnConvertXML" type="button" value="{translate key="plugins.generic.converter.convertXML"}" class="button defaultButton" />
			</div>
			<div class="inline">
				{if !empty($zipFileXML)}
					<div class="inline">
						<input id="btnSendZipXML" type="image" name="image" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABrklEQVRIS+2VT07CYBDF37SfiUQTcaOpG/EEslRggTsjNeEI9QTiCcATWE5gj0AiGHe4wD9LvAFuJLoBEo0mlo6ZYv1DwAqEhYldtvN9v5n33qSEKT805fvxDwhV+EOih51E3CU6JqJ46KkfCpi5rpj3lk4v61L2AWhmkg2AoiDYkwDAyAHcMioXa98BZooZXnGlfJmbBHBnJmyCtm+Ua37znxO8AwhaG67rGGfXjVFAze2NGJSyGF50KADAoVGuFfwumKLodgthIP9iXc8zcUemb5qpAoD8wAkCgHR+v7uZ9TzdAeFoVj0WF0v19teJWtl49MWd3wfjQNO61vLJVUm+/xogxX6yNHIAWiXAFpC8l4sZvpm3ymMrSMyYAK0qFxFoHcw9X4hiDL4RsPK8rbEAve61KgFF8aVpptJgdt4BllGunftyMHI6e+kA8iuJxDhWeql//EGpCmSMqKe0+BQKmFWP9vPrnBWZeXL6jR0WWzE8OPPizsseDU/RODsQgINdGAzIJBtMtCBpGWXB+mslXcTcMSoXsW+bHGjpp2WCR9L11bv/H06omH9fojcwUwEoak9E/AAAAABJRU5ErkJggg==" width="24" height="24"/>
					</div>	
				{/if}
			</div>
			<div class="inline">
				{if !empty($zipFileXML)}
					<input id="btnDownloadZipXML" type="button" value="{translate key="plugins.generic.converter.downloadzipxml"}" class="button defaultButton" data-tool="{$archivoToolTipXML}" /><span class="fieldtip">{$archivoToolTipXML}</span>
				{/if}
			</div>
		</div>
		<div style="margin-top:5px;">
			<div class="inline">
				<input id="btnConvertPDF" type="button" value="{translate key="plugins.generic.converter.convertPDF"}" class="button defaultButton" />
			</div>
			<div class="inline">
				{if !empty($zipFilePDF)}
					<div class="inline">
						<input id="btnSendZipPDF" type="image" name="image" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABrklEQVRIS+2VT07CYBDF37SfiUQTcaOpG/EEslRggTsjNeEI9QTiCcATWE5gj0AiGHe4wD9LvAFuJLoBEo0mlo6ZYv1DwAqEhYldtvN9v5n33qSEKT805fvxDwhV+EOih51E3CU6JqJ46KkfCpi5rpj3lk4v61L2AWhmkg2AoiDYkwDAyAHcMioXa98BZooZXnGlfJmbBHBnJmyCtm+Ua37znxO8AwhaG67rGGfXjVFAze2NGJSyGF50KADAoVGuFfwumKLodgthIP9iXc8zcUemb5qpAoD8wAkCgHR+v7uZ9TzdAeFoVj0WF0v19teJWtl49MWd3wfjQNO61vLJVUm+/xogxX6yNHIAWiXAFpC8l4sZvpm3ymMrSMyYAK0qFxFoHcw9X4hiDL4RsPK8rbEAve61KgFF8aVpptJgdt4BllGunftyMHI6e+kA8iuJxDhWeql//EGpCmSMqKe0+BQKmFWP9vPrnBWZeXL6jR0WWzE8OPPizsseDU/RODsQgINdGAzIJBtMtCBpGWXB+mslXcTcMSoXsW+bHGjpp2WCR9L11bv/H06omH9fojcwUwEoak9E/AAAAABJRU5ErkJggg==" width="24" height="24"/>
					</div>	
				{/if}
			</div>
			<div class="inline">
				{if !empty($zipFilePDF)}
					<input id="btnDownloadZipPDF" type="button" value="{translate key="plugins.generic.converter.downloadzippdf"}" class="button defaultButton" data-tool="{$archivoToolTipPDF}" /><span class="fieldtip">{$archivoToolTipPDF}</span>
				{/if}
			</div>
		</div>
		<div style="margin-top:5px;">
			<div class="inline">
				<input id="btnConvertEPUB" type="button" value="{translate key="plugins.generic.converter.convertEPUB"}" class="button defaultButton" />
			</div>
			<div class="inline">
				{if !empty($zipFileEPUB)}
					<div class="inline">
						<input id="btnSendZipEPUB" type="image" name="image" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABrklEQVRIS+2VT07CYBDF37SfiUQTcaOpG/EEslRggTsjNeEI9QTiCcATWE5gj0AiGHe4wD9LvAFuJLoBEo0mlo6ZYv1DwAqEhYldtvN9v5n33qSEKT805fvxDwhV+EOih51E3CU6JqJ46KkfCpi5rpj3lk4v61L2AWhmkg2AoiDYkwDAyAHcMioXa98BZooZXnGlfJmbBHBnJmyCtm+Ua37znxO8AwhaG67rGGfXjVFAze2NGJSyGF50KADAoVGuFfwumKLodgthIP9iXc8zcUemb5qpAoD8wAkCgHR+v7uZ9TzdAeFoVj0WF0v19teJWtl49MWd3wfjQNO61vLJVUm+/xogxX6yNHIAWiXAFpC8l4sZvpm3ymMrSMyYAK0qFxFoHcw9X4hiDL4RsPK8rbEAve61KgFF8aVpptJgdt4BllGunftyMHI6e+kA8iuJxDhWeql//EGpCmSMqKe0+BQKmFWP9vPrnBWZeXL6jR0WWzE8OPPizsseDU/RODsQgINdGAzIJBtMtCBpGWXB+mslXcTcMSoXsW+bHGjpp2WCR9L11bv/H06omH9fojcwUwEoak9E/AAAAABJRU5ErkJggg==" width="24" height="24"/>
					</div>	
				{/if}
			</div>
			<div class="inline">
				{if !empty($zipFileEPUB)}
					<input id="btnDownloadZipEPUB" type="button" value="{translate key="plugins.generic.converter.downloadzipepub"}" class="button defaultButton" data-tool="{$archivoToolTipEPUB}" /><span class="fieldtip">{$archivoToolTipEPUB}</span>
				{/if}
			</div>
		</div>
		
		
		
{/if}
<br/>
<p>{translate key="plugins.generic.converter.guia2"}</p>
<p> <a target="_blanck" style="text-decoration: none;" href="http://www.scielo.org.mx/avaliacao/SciELO_Manual_XML_Preparacion_de_archivos.pdf">{translate key="plugins.generic.converter.guia"}</a></p>
<p>{translate key="plugins.generic.converter.leyenda"}</p>
<p>&copy; <a target="_blanck" style="text-decoration: none;" href="http://escire.mx/">eScire</a> - Consultoría, Tecnologías y Gestión del Conocimiento SA de CV</p>

<div id="dialog" title="{translate key="plugins.generic.converter.converting"}">
	<div id="dialogContent" style="display:none;">
		{translate key="plugins.generic.converter.converting"} <b id="fileNameSelec"></b><br />
        <div id="progressbar"></div>
        <div id="mensaje"></div><br /><br />
        <div id="success"></div>
	</div>
</div>

<div id="dialogSendMail" title="{translate key="plugins.generic.converter.sendMail"}">
	<div id="dialogContentSendMail" style="display:none;">
		{translate key="plugins.generic.converter.sendMail"} <b id="typeLabel"></b> <br/>
		{translate key="plugins.generic.converter.sendMail.email"} <br/>
		<div>
			<form id="formMail">
				<div class="inline">
					<input type="email" name="emailS" id="emailS" size="35" required="required"/>
				</div>
				<div class="inline">
					<input type="button" id="btnSendEmail" value="{translate key="plugins.generic.converter.sendzip"}" class="button defaultButton"/>
				</div>
			</form>	
		</div>
		<span id="spanMessages" class="messages"></span>
		<span id="spanTypeSend" class="hidden"></span>
	</div>
</div>



{literal}
<style type="text/css">

#spanMessages{
	color: #ce4844;
}
	
input.defaultButton {
	  -webkit-border-radius: 5;
	  -moz-border-radius: 5;
	  border-radius: 5px;
	  padding: 5px 5px 5px 5px;
	  width:140px;
}

.inline{
	display:inline-block;
}

.settingsConverter{
    color: red;
}
.ui-widget.dialog-converter {
    font-family: Verdana,Arial,sans-serif;
    font-size: .8em;
}

.ui-widget-content.dialog-converter {
    background: #F9F9F9;
    border: 1px solid ##3E88BB;
    color: #222222;
}

.ui-dialog.dialog-converter {
    left: 0;
    outline: 0 none;
    padding: 0 !important;
    position: absolute;
    top: 0;
}

.ui-dialog.dialog-converter .ui-dialog-content {
    background: none repeat scroll 0 0 transparent;
    border: 0 none;
    overflow: auto;
    position: relative;
    padding: 0 !important;
    margin: 0;
}

.ui-dialog.dialog-converter .ui-widget-header {
    background: #3E88BB;
    border: 0;
    color: #fff;
    font-weight: normal;
}

.ui-dialog.dialog-converter .ui-dialog-titlebar {
    position: relative;
    font-size: 1em;
}

#dialogContent, #dialogContentSendMail{
	margin: 10px;
}

#conv-prev.button, #conv-desc.button {
    font-family: "Segoe UI", "Open Sans", Arial, sans-serif;
    display: block;
    color: rgb(255, 255, 255);
    text-decoration: none;
    text-align: center;
    padding: 8px;
    margin:3px;
    font-size: 18px;
    text-transform: uppercase;
    background: #ED5E2F;
    color: #FFF;
    border: 0px none;
    outline: 0px none;
}

#conv-prev.button:hover, #conv-desc.button:hover {
    background: #74A599;
}

#conv-prev.button:active, #conv-desc.button:active {
    background: #F6A953;
}



/* input field tooltips */
	input + .fieldtip {
	  visibility: hidden;
	  position: relative;
	  bottom: 0;
	  left: 15px;
	  opacity: 0;
	  content: attr(data-tool);
	  height: auto;
	  min-width: 100px;
	  padding: 5px 8px;
	  z-index: 9999;
	  color: #fff;
	  font-size: 10px;
	  font-weight: bold;
	  text-decoration: none;
	  text-align: center;
	  background: #666;
	  -webkit-border-radius: 5px;
	  -moz-border-radius: 5px;
	  border-radius: 5px;
	  -webkit-transition: all 0.2s ease-in-out;
	  -moz-transition: all 0.2s ease-in-out;
	  -ms-transition: all 0.2s ease-in-out;
	  -o-transition: all 0.2s ease-in-out;
	  transition: all 0.2s ease-in-out;
	}

	input + .fieldtip:after {
	  display: block;
	  position: absolute;
	  visibility: hidden;
	  content:'';
	  width: 0;
	  height: 0;
	  top: 8px;
	  left: -8px;
	  border-style: solid;
	  border-width: 4px 8px 4px 0;
	  border-color: transparent rgba(0,0,0,0.75) transparent transparent;
	  -webkit-transition: all 0.2s ease-in-out;
	  -moz-transition: all 0.2s ease-in-out;
	  -ms-transition: all 0.2s ease-in-out;
	  -o-transition: all 0.2s ease-in-out;
	  transition: all 0.2s ease-in-out;
	}

	input:focus + .fieldtip, input:focus + .fieldtip:after, input:hover  + .fieldtip, input:hover + .fieldtip:after {
	  visibility: visible;
	  opacity: 1;
	}



</style>

<script type="text/javascript">
var interval;
var converted = false;

$(function(){
    $('#btnDownloadZip').click(function(e){
        e.preventDefault();
        window.location.href = "{/literal}{$zipFileHTML}{literal}";
    });
});

$(function(){
    $('#btnDownloadZipXML').click(function(e){
        e.preventDefault();
        window.location.href = "{/literal}{$zipFileXML}{literal}";
    });
});

$(function(){
    $('#btnDownloadZipPDF').click(function(e){
        e.preventDefault();
        window.location.href = "{/literal}{$zipFilePDF}{literal}";
    });
});

$(function(){
    $('#btnDownloadZipEPUB').click(function(e){
        e.preventDefault();
        window.location.href = "{/literal}{$zipFileEPUB}{literal}";
    });
});

function startConvertion(tipo){
	var e = document.getElementById("archivosLista");
	var fileSelected = e.options[e.selectedIndex].value;
	var fileName = e.options[e.selectedIndex].text;
	document.getElementById("fileNameSelec").innerHTML = fileName+" a "+tipo;
		
	
    $.ajax({
        url: "{/literal}{$principalUrl}{literal}/gateway/plugin/ConverterGatewayPlugin/processConvert/",
		type: "POST",
		data: "fileName="+fileName+"&fileSelected="+fileSelected+"&convertionType="+tipo,
        success: function(data){

            getStatus();
        }
    });
}

function sendMail(mail, tipo){
	
    $.ajax({
        url: "{/literal}{$principalUrl}{literal}/gateway/plugin/ConverterGatewayPlugin/sendMail/",
		type: "POST",
		data: "sendType="+tipo+"&toEmail="+mail,
        success: function(data){

            getStatus();
        }
    });
}

	
	
function getStatus(){
    $.ajax({
        dataType: 'json',
        url: "{/literal}{$principalUrl}{literal}/gateway/plugin/ConverterGatewayPlugin/status",
        success: function(data){
            $("#mensaje").html(data.message);
            $('#progressbar').progressbar({value: data.total});
            if(data.total == 100){
                if(data.status == 'error'){
                    $("#success").html("");
                    converted = true;
                }else{
            
                    var success = '<p>Puedes descargar támbien el ZIP con todos los archivos</p>' +
                                '<p><a id="conv-desc" href="' + data.zipDownloadURL + '" class="button">Descargar en ZIP</a></p>' + 
                                '<a id="conv-prev" href="' + data.proofGalleyUrl + '" target="_blank" class="button">Vista Previa</a>';
                    $("#success").html(success);
                    converted = true;
                }
                clearInterval(interval);
            }
            else
                interval = setTimeout(getStatus, 1000);   
        }
    });
}

$(function() {
	$("#btnConvert").click(function() {
		$( "#dialog" ).dialog({
			width: 500,
			height:280,
			modal: true,
			resizable: false,
			dialogClass: 'dialog-converter',
            open: function( event, ui ) {
                $("#dialogContent").show();
                startConvertion('html');
            },
			beforeClose: function( event, ui ) {
				if(converted){
                    location.reload();
                }
                else{
                    alert("{/literal}{translate key="plugins.generic.converter.statusMessage"}{literal}");
				    return false;
                }
			}
		});
	});
	$("#btnConvertXML").click(function() {
		$( "#dialog" ).dialog({
			width: 500,
			height:280,
			modal: true,
			resizable: false,
			dialogClass: 'dialog-converter',
            open: function( event, ui ) {
                $("#dialogContent").show();
                startConvertion('xml');
            },
			beforeClose: function( event, ui ) {
				if(converted){
                    location.reload();
                }
                else{
                    alert("{/literal}{translate key="plugins.generic.converter.statusMessage"}{literal}");
				    return false;
                }
			}
		});
	});
	$("#btnSendZipXML").click(function() {
		$( "#dialogSendMail" ).dialog({
			width: 500,
			height:130,
			modal: true,
			resizable: false,
			dialogClass: 'dialog-converter',
            open: function( event, ui ) {
                $("#dialogContentSendMail").show();
				$('#spanTypeSend').text('xml');
				$('#typeLabel').text('XML');
            },
			beforeClose: function( event, ui ) {
				$('#spanTypeSend').text('');
                 location.reload();
			}
		});
	});
	$("#btnSendZipHTML").click(function() {
		$( "#dialogSendMail" ).dialog({
			width: 500,
			height:130,
			modal: true,
			resizable: false,
			dialogClass: 'dialog-converter',
            open: function( event, ui ) {
                $("#dialogContentSendMail").show();
				$('#spanTypeSend').text('html');
				$('#typeLabel').text('HTML');
            },
			beforeClose: function( event, ui ) {
				$('#spanTypeSend').text('');
                 location.reload();
			}
		});
	});
	$("#btnSendZipPDF").click(function() {
		$( "#dialogSendMail" ).dialog({
			width: 500,
			height:130,
			modal: true,
			resizable: false,
			dialogClass: 'dialog-converter',
            open: function( event, ui ) {
                $("#dialogContentSendMail").show();
				$('#spanTypeSend').text('pdf');
				$('#typeLabel').text('PDF');
            },
			beforeClose: function( event, ui ) {
				$('#spanTypeSend').text('');
                 location.reload();
			}
		});
	});
	$("#btnSendZipEPUB").click(function() {
		$( "#dialogSendMail" ).dialog({
			width: 500,
			height:130,
			modal: true,
			resizable: false,
			dialogClass: 'dialog-converter',
            open: function( event, ui ) {
                $("#dialogContentSendMail").show();
				$('#spanTypeSend').text('epub');
				$('#typeLabel').text('EPUB');
            },
			beforeClose: function( event, ui ) {
				$('#spanTypeSend').text('');
                 location.reload();
			}
		});
	});
	$("#btnConvertPDF").click(function() {
		$( "#dialog" ).dialog({
			width: 500,
			height:280,
			modal: true,
			resizable: false,
			dialogClass: 'dialog-converter',
            open: function( event, ui ) {
                $("#dialogContent").show();
                startConvertion('pdf');
            },
			beforeClose: function( event, ui ) {
				if(converted){
                    location.reload();
                }
                else{
                    alert("{/literal}{translate key="plugins.generic.converter.statusMessage"}{literal}");
				    return false;
                }
			}
		});
	});
	$("#btnConvertEPUB").click(function() {
		$( "#dialog" ).dialog({
			width: 500,
			height:280,
			modal: true,
			resizable: false,
			dialogClass: 'dialog-converter',
            open: function( event, ui ) {
                $("#dialogContent").show();
                startConvertion('epub');
            },
			beforeClose: function( event, ui ) {
				if(converted){
                    location.reload();
                }
                else{
                    alert("{/literal}{translate key="plugins.generic.converter.statusMessage"}{literal}");
				    return false;
                }
			}
		});
	});



});

$('#emailS').blur(function(){
    var $email = $('form input[name="emailS');
	if( ValidateEmail($email.val()) ){
		$('#spanMessages').text('');
	}else{
		$('#spanMessages').text('Incorrect Mail');
	}
});	

$('#btnSendEmail').click(function(){
    var $email = $('form input[name="emailS'); //change form to id or containment selector
	if( ValidateEmail($email.val()) ){
		var conType =  $('#spanTypeSend').text();
		$('#spanMessages').text('');
		sendMail($email.val(),conType);
		$( ".ui-icon.ui-icon-closethick" ).trigger( "click" );
	}else{
		$('#spanMessages').text('Incorrect Mail');
	}
});	

	
function ValidateEmail(mail)   
{  
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))  
  {  
    return (true)  
  }  
  return (false)  
}  

</script>
 {/literal}


<div class="separator"></div>
