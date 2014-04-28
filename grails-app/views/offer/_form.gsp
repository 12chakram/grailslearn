<%@ page import="org.schema.Offer" %>



<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'ppvUSD', 'error')} ">
	<label for="ppvUSD">
		<g:message code="offer.ppvUSD.label" default="Ppv USD" />
		
	</label>
	<g:field name="ppvUSD" value="${fieldValue(bean: offerInstance, field: 'ppvUSD')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'ppvINR', 'error')} ">
	<label for="ppvINR">
		<g:message code="offer.ppvINR.label" default="Ppv INR" />
		
	</label>
	<g:field name="ppvINR" value="${fieldValue(bean: offerInstance, field: 'ppvINR')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'momPoints', 'error')} ">
	<label for="momPoints">
		<g:message code="offer.momPoints.label" default="Mom Points" />
		
	</label>
	<g:field name="momPoints" value="${fieldValue(bean: offerInstance, field: 'momPoints')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="offer.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${offerInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'isAdSupported', 'error')} ">
	<label for="isAdSupported">
		<g:message code="offer.isAdSupported.label" default="Is Ad Supported" />
		
	</label>
	<g:checkBox name="isAdSupported" value="${offerInstance?.isAdSupported}" />

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'isFree', 'error')} ">
	<label for="isFree">
		<g:message code="offer.isFree.label" default="Is Free" />
		
	</label>
	<g:checkBox name="isFree" value="${offerInstance?.isFree}" />

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'isMoMoney', 'error')} ">
	<label for="isMoMoney">
		<g:message code="offer.isMoMoney.label" default="Is Mo Money" />
		
	</label>
	<g:checkBox name="isMoMoney" value="${offerInstance?.isMoMoney}" />

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'isPPV', 'error')} ">
	<label for="isPPV">
		<g:message code="offer.isPPV.label" default="Is PPV" />
		
	</label>
	<g:checkBox name="isPPV" value="${offerInstance?.isPPV}" />

</div>

