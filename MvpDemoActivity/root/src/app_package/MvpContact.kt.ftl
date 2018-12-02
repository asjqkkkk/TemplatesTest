package ${packageName}.contact;

public interface ${activityClass}Contact {

    interface Presenter<T> {
        fun succeed(t: T)
        fun failed(t: T)
        fun error(e: Throwable)
        fun subscribe()
        fun unSubscribe()
    }

    interface View<T> {
        fun setPresenter(presenter: Presenter<T>)
        fun succeed(t: T)
        fun failed(t: T)
        fun error(e: Throwable)
    }


    interface Model<T> {
        fun setPresenter(presenter: Presenter<T>)
    }



}