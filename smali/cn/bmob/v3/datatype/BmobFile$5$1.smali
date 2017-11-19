.class final Lcn/bmob/v3/datatype/BmobFile$5$1;
.super Lcn/bmob/v3/listener/UploadFileListener;
.source "BmobFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/datatype/BmobFile$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lrx/Subscriber;

.field private synthetic V:Lcn/bmob/v3/datatype/BmobFile$5;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile$5;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$5$1;->V:Lcn/bmob/v3/datatype/BmobFile$5;

    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile$5$1;->Code:Lrx/Subscriber;

    invoke-direct {p0}, Lcn/bmob/v3/listener/UploadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcn/bmob/v3/exception/BmobException;)V
    .locals 2
    .param p1, "e"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$5$1;->Code:Lrx/Subscriber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$5$1;->Code:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcn/bmob/v3/listener/UploadFileListener;->onProgress(Ljava/lang/Integer;)V

    .line 320
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$5$1;->V:Lcn/bmob/v3/datatype/BmobFile$5;

    iget-object v0, v0, Lcn/bmob/v3/datatype/BmobFile$5;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$5$1;->V:Lcn/bmob/v3/datatype/BmobFile$5;

    iget-object v0, v0, Lcn/bmob/v3/datatype/BmobFile$5;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$5$1;->V:Lcn/bmob/v3/datatype/BmobFile$5;

    iget-object v1, v1, Lcn/bmob/v3/datatype/BmobFile$5;->V:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {v1}, Lcn/bmob/v3/datatype/BmobFile;->getLocalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcn/bmob/v3/listener/ProgressCallback;->onProgress(Ljava/lang/Integer;J)V

    .line 323
    :cond_0
    return-void
.end method
