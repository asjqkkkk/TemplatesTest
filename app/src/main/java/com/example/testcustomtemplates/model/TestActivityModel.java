package com.example.testcustomtemplates.model;

import android.content.Context;
import com.example.testcustomtemplates.contact.TestActivityContact;

public class TestActivityModel implements TestActivityContact.Model {

    private Context context;
    private TestActivityContact.Presenter mPresenter;

    public TestActivityModel(Context context) {
        this.context = context;
    }

    @Override
    public void setPresenter(TestActivityContact.Presenter presenter) {
        this.mPresenter = presenter;
    }
}