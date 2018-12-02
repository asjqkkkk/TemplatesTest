<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

	<!--View-activity-->
    <instantiate from="root/src/app_package/MvpActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.${ktOrJavaExt}" />
	<!--Model-->
	<instantiate from="root/src/app_package/MvpModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${activityClass}Model.${ktOrJavaExt}" />	
	<!--Contact-->
	<instantiate from="root/src/app_package/MvpContact.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contact/${activityClass}Contact.${ktOrJavaExt}" />
	<!--Presenter-->
	<instantiate from="root/src/app_package/MvpPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${activityClass}Presenter.${ktOrJavaExt}" />	   
    <open file="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.${ktOrJavaExt}" />

</recipe>
