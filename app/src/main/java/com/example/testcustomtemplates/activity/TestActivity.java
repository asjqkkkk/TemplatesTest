package com.example.testcustomtemplates.activity;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import com.example.testcustomtemplates.R;
import com.example.testcustomtemplates.contact.TestActivityContact;
import com.example.testcustomtemplates.presenter.TestActivityPresenter;

public class TestActivity<T> extends AppCompatActivity implements TestActivityContact.View<T> {

    private TestActivityContact.Presenter mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_test);
        new TestActivityPresenter<T>(this, this);
    }

    @Override
    public void setPresenter(TestActivityContact.Presenter presenter) {
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
}
