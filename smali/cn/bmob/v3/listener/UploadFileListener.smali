.class public abstract Lcn/bmob/v3/listener/UploadFileListener;
.super Lcn/bmob/v3/listener/BmobErrorCallback;
.source "UploadFileListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/BmobErrorCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/bmob/v3/listener/BmobErrorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcn/bmob/v3/exception/BmobException;)V
.end method

.method protected bridge synthetic done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/listener/UploadFileListener;->done(Ljava/lang/Void;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method protected final done(Ljava/lang/Void;Lcn/bmob/v3/exception/BmobException;)V
    .locals 0
    .param p2, "e"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 30
    invoke-virtual {p0, p2}, Lcn/bmob/v3/listener/UploadFileListener;->done(Lcn/bmob/v3/exception/BmobException;)V

    .line 31
    return-void
.end method

.method public onProgress(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
