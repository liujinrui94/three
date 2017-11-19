.class final Lcn/bmob/v3/datatype/BmobFile$5;
.super Ljava/lang/Object;
.source "BmobFile.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/datatype/BmobFile;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/listener/ProgressCallback;

.field private synthetic I:Lcn/bmob/v3/http/bean/Upyun;

.field final synthetic V:Lcn/bmob/v3/datatype/BmobFile;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/listener/ProgressCallback;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$5;->V:Lcn/bmob/v3/datatype/BmobFile;

    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile$5;->I:Lcn/bmob/v3/http/bean/Upyun;

    iput-object p3, p0, Lcn/bmob/v3/datatype/BmobFile$5;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 301
    check-cast p1, Lrx/Subscriber;

    .line 1303
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    const-string v0, "uploadObservable:subcriber is cancel"

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 1305
    :goto_0
    return-void

    .line 1307
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$5;->V:Lcn/bmob/v3/datatype/BmobFile;

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$5;->I:Lcn/bmob/v3/http/bean/Upyun;

    new-instance v2, Lcn/bmob/v3/datatype/BmobFile$5$1;

    invoke-direct {v2, p0, p1}, Lcn/bmob/v3/datatype/BmobFile$5$1;-><init>(Lcn/bmob/v3/datatype/BmobFile$5;Lrx/Subscriber;)V

    invoke-static {v0, v1, v2}, Lcn/bmob/v3/datatype/BmobFile;->Code(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/listener/UploadFileListener;)V

    goto :goto_0
.end method
