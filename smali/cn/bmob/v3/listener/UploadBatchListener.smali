.class public interface abstract Lcn/bmob/v3/listener/UploadBatchListener;
.super Ljava/lang/Object;
.source "UploadBatchListener.java"


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onProgress(IIII)V
.end method

.method public abstract onSuccess(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/datatype/BmobFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
