package com.example.testcustomtemplates.presenter;

import android.content.Context;
import com.example.testcustomtemplates.contact.TestActivityContact;
import com.example.testcustomtemplates.model.TestActivityModel;

public class TestActivityPresenter<T> implements TestActivityContact.Presenter<T> {

    private TestActivityContact.View mView;
    private TestActivityModel mModel;
    private Context context;

    public TestActivityPresenter(TestActivityContact.View mView, Context context) {
        this.mView = mView;
        this.context = context;
        mModel = new TestActivityModel(context);

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