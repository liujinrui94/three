.class final Lcn/bmob/v3/http/acknowledge$This$13;
.super Ljava/lang/Object;
.source "RxBmob.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/acknowledge$This;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/acknowledge$This;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 533
    iput-object p2, p0, Lcn/bmob/v3/http/acknowledge$This$13;->Code:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 533
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1536
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$13;->Code:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcn/bmob/v3/helper/GsonUtil;->toObject(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    return-object v0
.end method
