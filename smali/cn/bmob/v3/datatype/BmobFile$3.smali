.class final Lcn/bmob/v3/datatype/BmobFile$3;
.super Ljava/lang/Object;
.source "BmobFile.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


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
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 264
    check-cast p1, Lrx/Subscriber;

    .line 1267
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    .line 1268
    const-string v1, "upyunVer"

    invoke-virtual {v0, v1, v4}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;I)I

    move-result v1

    .line 1269
    const-string v2, "upyun"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1270
    if-eq v1, v4, :cond_0

    sget v2, Lcn/bmob/v3/http/This;->V:I

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1273
    :cond_1
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
