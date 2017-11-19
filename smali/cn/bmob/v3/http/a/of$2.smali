.class final Lcn/bmob/v3/http/a/of$2;
.super Lcn/bmob/v3/listener/QueryListener;
.source "CTEPolicyQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/a/of;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;JLcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
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
.field private synthetic Code:Ljava/lang/Class;

.field private synthetic I:Lcn/bmob/v3/http/a/of;

.field private synthetic V:Lcn/bmob/v3/listener/BmobCallback;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/a/of;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/bmob/v3/http/a/of$2;->I:Lcn/bmob/v3/http/a/of;

    iput-object p2, p0, Lcn/bmob/v3/http/a/of$2;->Code:Ljava/lang/Class;

    iput-object p3, p0, Lcn/bmob/v3/http/a/of$2;->V:Lcn/bmob/v3/listener/BmobCallback;

    invoke-direct {p0}, Lcn/bmob/v3/listener/QueryListener;-><init>()V

    return-void
.end method

.method private Code(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V
    .locals 3

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    iget-object v0, p0, Lcn/bmob/v3/http/a/of$2;->I:Lcn/bmob/v3/http/a/of;

    iget-object v1, p0, Lcn/bmob/v3/http/a/of$2;->Code:Ljava/lang/Class;

    iget-object v2, p0, Lcn/bmob/v3/http/a/of$2;->V:Lcn/bmob/v3/listener/BmobCallback;

    invoke-virtual {v0, v1, p1, v2}, Lcn/bmob/v3/http/a/of;->Code(Ljava/lang/Class;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/http/a/of$2;->V:Lcn/bmob/v3/listener/BmobCallback;

    invoke-static {p2, v0}, Lcn/bmob/v3/http/a/of;->Code(Ljava/lang/Throwable;Lcn/bmob/v3/listener/BmobCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/http/a/of$2;->Code(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public final synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/http/a/of$2;->Code(Ljava/lang/String;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method
