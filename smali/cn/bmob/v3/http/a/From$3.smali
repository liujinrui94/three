.class final Lcn/bmob/v3/http/a/From$3;
.super Ljava/lang/Object;
.source "PolicyQuery.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/a/From;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/listener/BmobCallback;

.field final synthetic I:Lcn/bmob/v3/http/a/From;

.field final synthetic V:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/a/From;Lcn/bmob/v3/listener/BmobCallback;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcn/bmob/v3/http/a/From$3;->I:Lcn/bmob/v3/http/a/From;

    iput-object p2, p0, Lcn/bmob/v3/http/a/From$3;->Code:Lcn/bmob/v3/listener/BmobCallback;

    iput-object p3, p0, Lcn/bmob/v3/http/a/From$3;->V:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 177
    .local p0, "this":Lcn/bmob/v3/http/a/From$3;, "Lcn/bmob/v3/http/a/From.3;"
    check-cast p1, Ljava/lang/String;

    .line 1180
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$3;->Code:Lcn/bmob/v3/listener/BmobCallback;

    if-nez v0, :cond_0

    .line 1181
    const-string v0, "bmob"

    const-string v1, " listener is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :goto_0
    return-void

    .line 1184
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$3;->I:Lcn/bmob/v3/http/a/From;

    invoke-virtual {v0}, Lcn/bmob/v3/http/a/From;->V()Lcn/bmob/v3/BmobQuery$CachePolicy;

    move-result-object v0

    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->IGNORE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    if-eq v0, v1, :cond_1

    .line 1186
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 1187
    new-instance v1, Lcn/bmob/v3/http/a/From$3$1;

    invoke-direct {v1, p0, p1, v0}, Lcn/bmob/v3/http/a/From$3$1;-><init>(Lcn/bmob/v3/http/a/From$3;Ljava/lang/String;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    goto :goto_0

    .line 1200
    :cond_1
    const-string v0, "IGNORE_CACHE\uff1a\u8be5\u7b56\u7565\u4e0b\u65e0\u9700\u7f13\u5b58\u6570\u636e"

    invoke-static {v0}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;)V

    goto :goto_0
.end method
