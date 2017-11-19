.class public abstract Lcn/bmob/v3/listener/BmobCallback;
.super Ljava/lang/Object;
.source "BmobCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public internalStart()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcn/bmob/v3/datatype/a/This;->Code()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/bmob/v3/listener/BmobCallback$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/listener/BmobCallback$1;-><init>(Lcn/bmob/v3/listener/BmobCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcn/bmob/v3/listener/BmobCallback;->onStart()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method
