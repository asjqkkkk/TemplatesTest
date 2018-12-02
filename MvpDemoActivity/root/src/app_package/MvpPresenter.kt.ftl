package ${escapeKotlinIdentifiers(packageName)}.presenter;

import android.content.Context;
import ${packageName}.contact.${activityClass}Contact;
import ${packageName}.model.${activityClass}Model;

class ${activityClass}Presenter<T>(private val mView: ${activityClass}Contact.View<T>, private val context: Context) :
    ${activityClass}Contact.Presenter<T> {
    private val mModel: ${activityClass}Model<T>

    init {
        mModel = ${activityClass}Model<T>(context)

    }

    override fun succeed(t: T) {

    }

    override fun failed(t: T) {

    }

    override fun error(e: Throwable) {

    }

    override fun subscribe() {

    }

    override fun unSubscribe() {

    }
}