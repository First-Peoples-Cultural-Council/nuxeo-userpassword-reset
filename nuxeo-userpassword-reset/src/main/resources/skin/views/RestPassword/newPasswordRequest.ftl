<@extends src="./base.ftl">

<@block name="title">
 ${Context.getMessage('label.askResetPassForm.title')}
</@block>
<@block name="content">

  
<div class="registrationForm">
<form action="${This.path}/sendPasswordMail" method="post" enctype="application/x-www-form-urlencoded" name="submitNewPassword">
 <table>
             <tr>
                <td class="login_label">
<span class="required">${Context.getMessage('label.registerForm.email')}</span>
                </td>
                <td>
<input type="text" id="EmailAddress" value="${data['EmailAddress']}" name="EmailAddress" class="login_input" isRequired="true"/>
                </td>
              </tr>

              <tr>
                <td></td>
                <td>
                  <input class="login_button" type="submit" name="submit"
                    value="${Context.getMessage('label.registerForm.submit')}" />
                </td>
              </tr>

  <#if err??>
    <tr>
      <td colspan="2">
        <div class="errorMessage">
          ${Context.getMessage("label.connect.trial.form.errvalidation")}
          ${err}
        </div>
      </td>
    </tr>
  </#if>

  <#if info??>
    <tr>
      <td colspan="2">
        <div class="infoMessage">
          ${info}                    
        </div>
      </td>
    </tr>
  </#if>    


  </table>
</form>

</div> 
</@block>
</@extends>