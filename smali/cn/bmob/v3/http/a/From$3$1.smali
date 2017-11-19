.class final Lcn/bmob/v3/http/a/From$3$1;
.super Ljava/lang/Object;
.source "PolicyQuery.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/a/From$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:Lcn/bmob/v3/http/a/From$3;

.field private synthetic V:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/a/From$3;Ljava/lang/String;Lrx/Scheduler$Worker;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcn/bmob/v3/http/a/From$3$1;->I:Lcn/bmob/v3/http/a/From$3;

    iput-object p2, p0, Lcn/bmob/v3/http/a/From$3$1;->Code:Ljava/lang/String;

    iput-object p3, p0, Lcn/bmob/v3/http/a/From$3$1;->V:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$3$1;->I:Lcn/bmob/v3/http/a/From$3;

    iget-object v0, v0, Lcn/bmob/v3/http/a/From$3;->I:Lcn/bmob/v3/http/a/From;

    iget-object v1, p0, Lcn/bmob/v3/http/a/From$3$1;->Code:Ljava/lang/String;

    iget-object v2, p0, Lcn/bmob/v3/http/a/From$3$1;->I:Lcn/bmob/v3/http/a/From$3;

    iget-object v2, v2, Lcn/bmob/v3/http/a/From$3;->Code:Lcn/bmob/v3/listener/BmobCallback;

    invoke-static {v0, v1, v2}, Lcn/bmob/v3/http/a/From;->Code(Lcn/bmob/v3/http/a/From;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7f13\u5b58\u7684data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/bmob/v3/http/a/From$3$1;->Code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$3$1;->I:Lcn/bmob/v3/http/a/From$3;

    iget-object v0, v0, Lcn/bmob/v3/http/a/From$3;->V:Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/bmob/v3/b/darkness;->Code(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/http/a/From$3$1;->Code:Ljava/lang/String;

    invoke-static {v1}, Lcn/bmob/v3/datatype/a/This;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bmob/v3/b/darkness;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v0, "no data need to be cache"

    invoke-static {v0}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$3$1;->V:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    goto :goto_0
.end method
