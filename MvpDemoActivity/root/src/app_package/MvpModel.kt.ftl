package ${escapeKotlinIdentifiers(packageName)}.model;

import android.content.Context;
import ${packageName}.contact.${activityClass}Contact;

class ${activityClass}Model<T>(private val context: Context): ${activityClass}Contact.Model<T> {

    private var mPresenter: ${activityClass}Contact.Presenter<T>? = null

    override fun setPresenter(presenter: ${activityClass}Contact.Presenter<T>) {
        this.mPresenter = presenter
    }
}