package ${packageName}.model;

import android.content.Context;
import ${packageName}.contact.${activityClass}Contact;

public class ${activityClass}Model implements ${activityClass}Contact.Model {

    private Context context;
    private ${activityClass}Contact.Presenter mPresenter;

    public ${activityClass}Model(Context context) {
        this.context = context;
    }

    @Override
    public void setPresenter(${activityClass}Contact.Presenter presenter) {
        this.mPresenter = presenter;
    }
}