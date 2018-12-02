package ${packageName}.activity;

import ${superClassFqcn};
import android.os.Bundle;
import ${packageName}.contact.${activityClass}Contact;
import ${packageName}.presenter.${activityClass}Presenter;
<#if (includeCppSupport!false) && generateLayout>
</#if>

public class ${activityClass}<T> extends ${superClass} implements ${activityClass}Contact.View<T>{

    private ${activityClass}Contact.Presenter mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
		new ${activityClass}Presenter<T>(this, this);
       <#include "../../../../common/jni_code_usage.java.ftl">
<#elseif includeCppSupport!false>

        // Example of a call to a native method
        android.util.Log.d("${activityClass}", stringFromJNI());
</#if>
    }
	
	@Override
    public void setPresenter(${activityClass}Contact.Presenter presenter) {
        this.mPresenter = presenter;
    }
	
	@Override
    public void succeed(T t) {

    }

    @Override
    public void failed(T t) {

    }

    @Override
    public void error(Throwable e) {

    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
