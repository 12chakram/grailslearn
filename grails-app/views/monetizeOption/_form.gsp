<%@ page import="multiplexonline.MonetizeOption" %>



<div class="fieldcontain ${hasErrors(bean: monetizeOptionInstance, field: 'ppvUSD', 'error')} ">
	<label for="ppvUSD">
		<g:message code="monetizeOption.ppvUSD.label" default="Ppv USD" />
		
	</label>
	<g:field name="ppvUSD" value="${fieldValue(bean: monetizeOptionInstance, field: 'ppvUSD')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: monetizeOptionInstance, field: 'ppvINR', 'error')} ">
	<label for="ppvINR">
		<g:message code="monetizeOption.ppvINR.label" default="Ppv INR" />
		
	</label>
	<g:field name="ppvINR" value="${fieldValue(bean: monetizeOptionInstance, field: 'ppvINR')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: monetizeOptionInstance, field: 'momPoints', 'error')} ">
	<label for="momPoints">
		<g:message code="monetizeOption.momPoints.label" default="Mom Points" />
		
	</label>
	<g:field name="momPoints" value="${fieldValue(bean: monetizeOptionInstance, field: 'momPoints')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: monetizeOptionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="monetizeOption.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${monetizeOptionInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: monetizeOptionInstance, field: 'isAdSupported', 'error')} ">
	<label for="isAdSupported">
		<g:message code="monetizeOption.isAdSupported.label" default="Is Ad Supported" />
		
	</label>
	<g:checkBox name="isAdSupported" value="${monetizeOptionInstance?.isAdSupported}" />

</div>

<div class="fieldcontain ${hasErrors(bean: monetizeOptionInstance, field: 'isFree', 'error')} ">
	<label for="isFree">
		<g:message code="monetizeOption.isFree.label" default="Is Free" />
		
	</label>
	<g:checkBox name="isFree" value="${monetizeOptionInstance?.isFree}" />

</div>

<div class="fieldcontain ${hasErrors(bean: monetizeOptionInstance, field: 'isMoMoney', 'error')} ">
	<label for="isMoMoney">
		<g:message code="monetizeOption.isMoMoney.label" default="Is Mo Money" />
		
	</label>
	<g:checkBox name="isMoMoney" value="${monetizeOptionInstance?.isMoMoney}" />

</div>

<div class="fieldcontain ${hasErrors(bean: monetizeOptionInstance, field: 'isPPV', 'error')} ">
	<label for="isPPV">
		<g:message code="monetizeOption.isPPV.label" default="Is PPV" />
		
	</label>
	<g:checkBox name="isPPV" value="${monetizeOptionInstance?.isPPV}" />

</div>

