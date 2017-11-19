.class final Lcn/bmob/v3/http/This$1;
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
        "Lcn/bmob/v3/http/bean/Init;",
        "Lrx/Observable",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:Lcn/bmob/v3/http/This;

.field private synthetic V:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/This;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcn/bmob/v3/http/This$1;->I:Lcn/bmob/v3/http/This;

    iput-object p2, p0, Lcn/bmob/v3/http/This$1;->Code:Ljava/lang/String;

    iput-object p3, p0, Lcn/bmob/v3/http/This$1;->V:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 137
    check-cast p1, Lcn/bmob/v3/http/bean/Init;

    .line 1140
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/bmob/v3/http/This;->Code(Z)Z

    .line 1141
    iget-object v0, p0, Lcn/bmob/v3/http/This$1;->I:Lcn/bmob/v3/http/This;

    invoke-static {v0, p1}, Lcn/bmob/v3/http/This;->Code(Lcn/bmob/v3/http/This;Lcn/bmob/v3/http/bean/Init;)V

    .line 1142
    iget-object v0, p0, Lcn/bmob/v3/http/This$1;->I:Lcn/bmob/v3/http/This;

    iget-object v1, p0, Lcn/bmob/v3/http/This$1;->Code:Ljava/lang/String;

    iget-object v2, p0, Lcn/bmob/v3/http/This$1;->V:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcn/bmob/v3/http/This;->Code(Lcn/bmob/v3/http/This;Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    .line 137
    return-object v0
.end method
