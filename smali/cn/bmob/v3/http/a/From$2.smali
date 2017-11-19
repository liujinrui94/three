.class final Lcn/bmob/v3/http/a/From$2;
.super Ljava/lang/Object;
.source "PolicyQuery.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


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
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lorg/json/JSONObject;

.field private synthetic I:Lcn/bmob/v3/http/a/From;

.field private synthetic V:J


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/a/From;Lorg/json/JSONObject;J)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcn/bmob/v3/http/a/From$2;->I:Lcn/bmob/v3/http/a/From;

    iput-object p2, p0, Lcn/bmob/v3/http/a/From$2;->Code:Lorg/json/JSONObject;

    iput-wide p3, p0, Lcn/bmob/v3/http/a/From$2;->V:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 120
    .local p0, "this":Lcn/bmob/v3/http/a/From$2;, "Lcn/bmob/v3/http/a/From.2;"
    check-cast p1, Lrx/Subscriber;

    .line 1123
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    const-string v0, "createCacheObservable:subscrible is cancel "

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$2;->Code:Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/bmob/v3/b/darkness;->Code(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    iget-wide v2, p0, Lcn/bmob/v3/http/a/From$2;->V:J

    invoke-static {v0, v2, v3}, Lcn/bmob/v3/b/darkness;->Code(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "cache data:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v0, "no cache"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 1130
    if-nez v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1132
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$2;->I:Lcn/bmob/v3/http/a/From;

    invoke-virtual {v0}, Lcn/bmob/v3/http/a/From;->V()Lcn/bmob/v3/BmobQuery$CachePolicy;

    move-result-object v0

    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ONLY:Lcn/bmob/v3/BmobQuery$CachePolicy;

    if-ne v0, v1, :cond_0

    .line 1133
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1130
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
