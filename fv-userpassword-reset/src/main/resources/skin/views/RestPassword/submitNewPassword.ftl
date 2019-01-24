<@extends src="./base.ftl">

<@block name="title">
 ${Context.getMessage('label.resetPassForm.title')}
</@block>
<@block name="content">

<div style="padding: 25px;">

	<div class="page-header">
	  <h1>${Context.getMessage('label.site.name')} <small>${Context.getMessage('label.resetPassForm.title')}</small></h1>
	</div>
	
	<div>
	
	<form action="${This.path}/submitNewPassword" method="post" enctype="application/x-www-form-urlencoded" name="submitNewPassword">
	  <input type="hidden" id="PasswordKey" value="${key}" name="PasswordKey"/>
	  
	  <div class="form-group">
	    <label for="Password">${Context.getMessage('label.registerForm.password')}</label>
	    <input type="password" class="form-control" id="Password" value="${data['Password']}" name="Password" placeholder="Password" isRequired="true"/>
	  </div>
	  
	  <div class="form-group">
	    <label for="Password">${Context.getMessage('label.registerForm.passwordConfirmation')}</label>
	    <input type="password" class="form-control" id="PasswordConfirmation" value="${data['PasswordConfirmation']}" name="PasswordConfirmation" placeholder="Password Confirmation" isRequired="true"/>
	  </div>
	  
	  <button type="submit" class="btn btn-default">${Context.getMessage('label.registerForm.submit')}</button>
	</form>
	
	  <#if err??>
		<div class="alert alert-danger" role="alert">${Context.getMessage("label.connect.trial.form.errvalidation")} ${err}</div>
	  </#if>
	
	  <#if info??>
		<div class="alert alert-success" role="alert">${info}</div>
	  </#if>    
	
	</div>

</div>

</@block>
</@extends>