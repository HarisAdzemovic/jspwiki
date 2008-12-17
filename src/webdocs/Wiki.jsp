<%@ taglib uri="/WEB-INF/stripes.tld" prefix="stripes" %>
<stripes:useActionBean beanclass="com.ecyrd.jspwiki.action.ViewActionBean" event="view" />
<stripes:layout-render name="/templates/default/ViewLayout.jsp">
  <stripes:layout-component name="content">
    <jsp:include page="/templates/default/PageContent.jsp" />
    <!--
    <wiki:Include page="/templates/default/PageContent.jsp" />
    -->
  </stripes:layout-component>
</stripes:layout-render>
