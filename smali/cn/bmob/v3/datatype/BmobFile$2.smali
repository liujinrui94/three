.class final Lcn/bmob/v3/datatype/BmobFile$2;
.super Ljava/lang/Object;
.source "BmobFile.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/datatype/BmobFile;->uploadObservable(Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/listener/ProgressCallback;

.field final synthetic V:Lcn/bmob/v3/datatype/BmobFile;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/ProgressCallback;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$2;->V:Lcn/bmob/v3/datatype/BmobFile;

    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile$2;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 276
    check-cast p1, Ljava/lang/String;

    .line 1279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Lcn/bmob/v3/http/thing;->V()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    .line 1280
    new-instance v1, Lcn/bmob/v3/datatype/BmobFile$2$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/datatype/BmobFile$2$1;-><init>(Lcn/bmob/v3/datatype/BmobFile$2;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1287
    :cond_0
    const-class v0, Lcn/bmob/v3/http/bean/Upyun;

    invoke-static {p1, v0}, Lcn/bmob/v3/helper/GsonUtil;->toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/http/bean/Upyun;

    .line 1288
    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$2;->V:Lcn/bmob/v3/datatype/BmobFile;

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobFile$2;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    invoke-static {v1, v0, v2}, Lcn/bmob/v3/datatype/BmobFile;->Code(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
