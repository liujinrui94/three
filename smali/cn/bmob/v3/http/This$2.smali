.class final Lcn/bmob/v3/http/This$2;
.super Ljava/lang/Object;
.source "BmobClient.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
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
        "Lcn/bmob/v3/http/bean/Sk;",
        "Lrx/Observable",
        "<",
        "Lcn/bmob/v3/http/bean/Init;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/http/This;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/This;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcn/bmob/v3/http/This$2;->Code:Lcn/bmob/v3/http/This;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p1, Lcn/bmob/v3/http/bean/Sk;

    .line 1134
    invoke-virtual {p1}, Lcn/bmob/v3/http/bean/Sk;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/helper/BmobNative;->saveKey(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcn/bmob/v3/http/This$2;->Code:Lcn/bmob/v3/http/This;

    invoke-static {v0}, Lcn/bmob/v3/http/This;->Code(Lcn/bmob/v3/http/This;)Lrx/Observable;

    move-result-object v0

    .line 131
    return-object v0
.end method
