.class final Lcn/bmob/v3/datatype/BmobFile$6$1;
.super Lcn/bmob/v3/listener/DownloadFileListener;
.source "BmobFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/datatype/BmobFile$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lrx/Subscriber;

.field private synthetic V:Lcn/bmob/v3/datatype/BmobFile$6;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile$6;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$6$1;->V:Lcn/bmob/v3/datatype/BmobFile$6;

    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile$6$1;->Code:Lrx/Subscriber;

    invoke-direct {p0}, Lcn/bmob/v3/listener/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V
    .locals 0

    .prologue
    .line 551
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/datatype/BmobFile$6$1;->done(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public final done(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 554
    if-nez p2, :cond_0

    .line 555
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$6$1;->Code:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 559
    :goto_0
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$6$1;->Code:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 560
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$6$1;->Code:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Integer;J)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "total"    # J

    .prologue
    .line 564
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$6$1;->V:Lcn/bmob/v3/datatype/BmobFile$6;

    iget-object v0, v0, Lcn/bmob/v3/datatype/BmobFile$6;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$6$1;->V:Lcn/bmob/v3/datatype/BmobFile$6;

    iget-object v0, v0, Lcn/bmob/v3/datatype/BmobFile$6;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    invoke-interface {v0, p1, p2, p3}, Lcn/bmob/v3/listener/ProgressCallback;->onProgress(Ljava/lang/Integer;J)V

    .line 567
    :cond_0
    return-void
.end method
