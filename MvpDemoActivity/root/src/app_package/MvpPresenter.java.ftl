package ${packageName}.presenter;

import android.content.Context;
import ${packageName}.contact.${activityClass}Contact;
import ${packageName}.model.${activityClass}Model;

public class ${activityClass}Presenter<T> implements ${activityClass}Contact.Presenter<T> {

    private ${activityClass}Contact.View mView;
    private ${activityClass}Model mModel;
    private Context context;

    public ${activityClass}Presenter(${activityClass}Contact.View mView, Context context) {
        this.mView = mView;
        this.context = context;
        mModel = new ${activityClass}Model(context);

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

    @Override
    public void subscribe() {

    }

    @Override
    public void unSubscribe() {

    }
}