<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
	<body>
<p>[toc]</p>
<p>On {DAY_OF_WEEK}, {MONTH} {DAY_NUMBER}, 2014, we released a new cloud version of Apigee Edge.</p>
<div class="note">
	<p>If you have questions, go to <a href="http://community.apigee.com/content/apigee-customer-support">Apigee Customer Support</a>.</p>
	<p>For a list of all Apigee Edge release notes, see [node:8408].</p>
</div>


<h2>New features and enhancements</h2>
<p>Following are the new features and enhancements in this release.</p>
<ul>
<xsl:for-each select="Root/issues">
<xsl:if test="fields/labels='new_feature'">
	<li><strong><xsl:value-of select="fields/summary"/></strong><br/>
  <font color="#FFFFFF"><xsl:value-of select="key"/></font><br />
		<xsl:value-of select="fields/customfield_13000"/></li>
</xsl:if>
</xsl:for-each>
</ul>


<h2>Bugs fixed</h2>
<p>The following bugs are fixed in this release.</p>
<table class="table" summary="Bugs fixed in this release">
  <colgroup><col width="150" /></colgroup>
  <thead>
		<tr>
			<th scope="col">Topic</th>
			<th scope="col">Description</th>
		</tr>
	</thead>
	<tbody>
<xsl:for-each select="Root/issues">
  <xsl:if test="not(fields/labels='new_feature' or fields/labels='known_issues')">
<tr>
<td>
  <xsl:value-of select="fields/summary"/><br/>
  <font color="#FFFFFF"><xsl:value-of select="key"/></font>
</td>
<td>
  <xsl:value-of select="fields/customfield_13000"/>
</td>
</tr>
</xsl:if>
</xsl:for-each>
	</tbody>
</table>


<h2>Known issues</h2>
<p>This release has the following known issues.</p>
<table class="table" summary="Known issues in this release">
  <colgroup><col width="150" /></colgroup>
  <thead>
		<tr>
			<th scope="col">Topic</th>
			<th scope="col">Description</th>
		</tr>
	</thead>
	<tbody>
<xsl:for-each select="Root/issues">
<xsl:if test="fields/labels='known_issue'">
<tr>
<td>
  <xsl:value-of select="fields/summary"/><br/>
  <font color="#FFFFFF"><xsl:value-of select="key"/></font>
</td>
<td>
  <xsl:value-of select="fields/customfield_13000"/>
</td>
</tr>
</xsl:if>
</xsl:for-each>
	</tbody>
</table>


</body>
</html>

</xsl:template>
</xsl:stylesheet>