.class final Lcn/bmob/v3/datatype/BmobFile$6;
.super Ljava/lang/Object;
.source "BmobFile.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/datatype/BmobFile;->downloadObservable(Ljava/io/File;Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/listener/ProgressCallback;

.field private synthetic I:Lcn/bmob/v3/datatype/BmobFile;

.field private synthetic V:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile;Ljava/io/File;Lcn/bmob/v3/listener/ProgressCallback;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$6;->I:Lcn/bmob/v3/datatype/BmobFile;

    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile$6;->V:Ljava/io/File;

    iput-object p3, p0, Lcn/bmob/v3/datatype/BmobFile$6;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 544
    check-cast p1, Lrx/Subscriber;

    .line 1547
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    const-string v0, "downloadObservable:subcriber is cancel"

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 1549
    :goto_0
    return-void

    .line 1551
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$6;->I:Lcn/bmob/v3/datatype/BmobFile;

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$6;->V:Ljava/io/File;

    new-instance v2, Lcn/bmob/v3/datatype/BmobFile$6$1;

    invoke-direct {v2, p0, p1}, Lcn/bmob/v3/datatype/BmobFile$6$1;-><init>(Lcn/bmob/v3/datatype/BmobFile$6;Lrx/Subscriber;)V

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/datatype/BmobFile;->download(Ljava/io/File;Lcn/bmob/v3/listener/DownloadFileListener;)V

    goto :goto_0
.end method
