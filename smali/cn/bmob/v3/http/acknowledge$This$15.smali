.class final Lcn/bmob/v3/http/acknowledge$This$15;
.super Ljava/lang/Object;
.source "RxBmob.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/acknowledge$This;->Code(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;
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
        "Lcom/google/gson/JsonElement;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/listener/BmobCallback;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/acknowledge$This;Lcn/bmob/v3/listener/BmobCallback;)V
    .locals 0

    .prologue
    .line 637
    iput-object p2, p0, Lcn/bmob/v3/http/acknowledge$This$15;->Code:Lcn/bmob/v3/listener/BmobCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 637
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1641
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$15;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/QueryListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$15;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/SQLQueryListener;

    if-eqz v0, :cond_1

    .line 1642
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_0
    return-object v0

    .line 1643
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$15;->Code:Lcn/bmob/v3/listener/BmobCallback;

    instance-of v0, v0, Lcn/bmob/v3/listener/FindListener;

    if-eqz v0, :cond_2

    .line 1644
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "results"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1646
    :cond_2
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    const-string v1, " mapPolicyQuery does not support this BmobCallback"

    invoke-direct {v0, v1}, Lcn/bmob/v3/exception/BmobException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
