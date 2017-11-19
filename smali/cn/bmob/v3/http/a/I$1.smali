.class final Lcn/bmob/v3/http/a/I$1;
.super Lcn/bmob/v3/listener/QueryListener;
.source "NECPolicyQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/a/I;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;JLcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/QueryListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic B:Lorg/json/JSONObject;

.field private synthetic C:J

.field final synthetic Code:Ljava/lang/Class;

.field final synthetic I:Lcn/bmob/v3/http/a/I;

.field final synthetic V:Lcn/bmob/v3/listener/BmobCallback;

.field private synthetic Z:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/a/I;Ljava/util/List;Lorg/json/JSONObject;JLjava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcn/bmob/v3/http/a/I$1;->I:Lcn/bmob/v3/http/a/I;

    iput-object p2, p0, Lcn/bmob/v3/http/a/I$1;->Z:Ljava/util/List;

    iput-object p3, p0, Lcn/bmob/v3/http/a/I$1;->B:Lorg/json/JSONObject;

    iput-wide p4, p0, Lcn/bmob/v3/http/a/I$1;->C:J

    iput-object p6, p0, Lcn/bmob/v3/http/a/I$1;->Code:Ljava/lang/Class;

    iput-object p7, p0, Lcn/bmob/v3/http/a/I$1;->V:Lcn/bmob/v3/listener/BmobCallback;

    invoke-direct {p0}, Lcn/bmob/v3/listener/QueryListener;-><init>()V

    return-void
.end method

.method private Code(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V
    .locals 6

    .prologue
    .line 29
    if-eqz p2, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NETWORK_ELSE_CACHE\uff1ae->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/bmob/v3/exception/BmobException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcn/bmob/v3/http/a/I$1;->I:Lcn/bmob/v3/http/a/I;

    iget-object v1, p0, Lcn/bmob/v3/http/a/I$1;->I:Lcn/bmob/v3/http/a/I;

    iget-object v2, p0, Lcn/bmob/v3/http/a/I$1;->Z:Ljava/util/List;

    iget-object v3, p0, Lcn/bmob/v3/http/a/I$1;->B:Lorg/json/JSONObject;

    iget-wide v4, p0, Lcn/bmob/v3/http/a/I$1;->C:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/bmob/v3/http/a/I;->Code(Ljava/util/List;Lorg/json/JSONObject;J)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/http/a/I$1$1;

    invoke-direct {v2, p0}, Lcn/bmob/v3/http/a/I$1$1;-><init>(Lcn/bmob/v3/http/a/I$1;)V

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/http/a/I;->Code(Lrx/Observable;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "NETWORK_ELSE_CACHE\uff1adata->"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " empty "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcn/bmob/v3/http/a/I$1;->I:Lcn/bmob/v3/http/a/I;

    iget-object v1, p0, Lcn/bmob/v3/http/a/I$1;->Code:Ljava/lang/Class;

    iget-object v2, p0, Lcn/bmob/v3/http/a/I$1;->V:Lcn/bmob/v3/listener/BmobCallback;

    invoke-virtual {v0, v1, p1, v2}, Lcn/bmob/v3/http/a/I;->Code(Ljava/lang/Class;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;)V

    goto :goto_0

    .line 42
    :cond_1
    const-string v0, " has data "

    goto :goto_1
.end method


# virtual methods
.method public final synthetic done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/http/a/I$1;->Code(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public final synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/http/a/I$1;->Code(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method
