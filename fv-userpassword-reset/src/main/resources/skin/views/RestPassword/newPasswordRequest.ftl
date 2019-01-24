<@extends src="./base.ftl">

<@block name="title">
 ${Context.getMessage('label.askResetPassForm.title')}
</@block>
<@block name="content">

<div>

<form action="${This.path}/sendPasswordMail" method="post" enctype="application/x-www-form-urlencoded" name="submitNewPassword">
  <div class="form-group">
    <label for="EmailAddress">${Context.getMessage('label.registerForm.email')}</label>
    <input type="email" class="form-control" id="EmailAddress" value="${data['EmailAddress']}" name="EmailAddress" placeholder="Email" isRequired="true"/>
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

</@block>
</@extends>