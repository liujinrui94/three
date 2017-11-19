.class final Lcn/bmob/v3/update/BmobUpdateAgent$4;
.super Ljava/lang/Object;
.source "BmobUpdateAgent.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/update/BmobUpdateAgent;->initAppVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/util/List",
        "<",
        "Lcn/bmob/v3/update/AppVersion;",
        ">;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcn/bmob/v3/update/BmobUpdateAgent$4;->Code:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 61
    check-cast p1, Ljava/util/List;

    .line 1065
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1066
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/update/BmobUpdateAgent$4;->Code:Lrx/Observable;

    :goto_0
    return-object v0

    .line 1068
    :cond_1
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    const-string v1, "AppVersion is exists,no need recreate"

    invoke-direct {v0, v1}, Lcn/bmob/v3/exception/BmobException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
