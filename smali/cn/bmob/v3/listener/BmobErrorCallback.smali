.class public abstract Lcn/bmob/v3/listener/BmobErrorCallback;
.super Lcn/bmob/v3/listener/BmobCallback;
.source "BmobErrorCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/bmob/v3/listener/BmobCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/bmob/v3/listener/BmobCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation
.end method

.method public doneError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    .local p0, "this":Lcn/bmob/v3/listener/BmobErrorCallback;, "Lcn/bmob/v3/listener/BmobErrorCallback<TT;>;"
    invoke-static {}, Lcn/bmob/v3/datatype/a/This;->Code()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    new-instance v1, Lcn/bmob/v3/listener/BmobErrorCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/bmob/v3/listener/BmobErrorCallback$1;-><init>(Lcn/bmob/v3/listener/BmobErrorCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v1, p1, p2}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcn/bmob/v3/listener/BmobErrorCallback;->done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_0
.end method
