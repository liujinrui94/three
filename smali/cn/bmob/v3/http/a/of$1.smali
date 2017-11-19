.class final Lcn/bmob/v3/http/a/of$1;
.super Ljava/lang/Object;
.source "CTEPolicyQuery.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic B:Lcn/bmob/v3/http/a/of;

.field private synthetic Code:Ljava/util/List;

.field private synthetic I:Lorg/json/JSONObject;

.field private synthetic V:Ljava/lang/String;

.field private synthetic Z:Lcn/bmob/v3/listener/BmobCallback;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/a/of;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcn/bmob/v3/http/a/of$1;->B:Lcn/bmob/v3/http/a/of;

    iput-object p2, p0, Lcn/bmob/v3/http/a/of$1;->Code:Ljava/util/List;

    iput-object p3, p0, Lcn/bmob/v3/http/a/of$1;->V:Ljava/lang/String;

    iput-object p4, p0, Lcn/bmob/v3/http/a/of$1;->I:Lorg/json/JSONObject;

    iput-object p5, p0, Lcn/bmob/v3/http/a/of$1;->Z:Lcn/bmob/v3/listener/BmobCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 45
    .line 1048
    iget-object v0, p0, Lcn/bmob/v3/http/a/of$1;->B:Lcn/bmob/v3/http/a/of;

    iget-object v1, p0, Lcn/bmob/v3/http/a/of$1;->Code:Ljava/util/List;

    iget-object v2, p0, Lcn/bmob/v3/http/a/of$1;->V:Ljava/lang/String;

    iget-object v3, p0, Lcn/bmob/v3/http/a/of$1;->I:Lorg/json/JSONObject;

    iget-object v4, p0, Lcn/bmob/v3/http/a/of$1;->Z:Lcn/bmob/v3/listener/BmobCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/bmob/v3/http/a/of;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Observable;

    move-result-object v0

    .line 45
    return-object v0
.end method
