package ${escapeKotlinIdentifiers(packageName)}.activity;

import ${superClassFqcn};
import android.os.Bundle;
import ${packageName}.contact.${activityClass}Contact;
import ${packageName}.presenter.${activityClass}Presenter;
<#if (includeCppSupport!false) && generateLayout>
</#if>

class ${activityClass}<T>: ${superClass}(), ${activityClass}Contact.View<T>{

  private lateinit var mPresenter: ${activityClass}Contact.Presenter<T>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_test)
        ${activityClass}Presenter<T>(this, this)
    }

    override fun setPresenter(presenter: ${activityClass}Contact.Presenter<T>) {
        this.mPresenter = presenter
    }

    override fun succeed(t: T) {

    }

    override fun failed(t: T) {

    }

    override fun error(e: Throwable) {

    }
}
