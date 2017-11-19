.class final Lcn/bmob/v3/update/BmobUpdateAgent$3;
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
        "Ljava/lang/Throwable;",
        "Lrx/Observable",
        "<+",
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
    .line 71
    iput-object p1, p0, Lcn/bmob/v3/update/BmobUpdateAgent$3;->Code:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Throwable;

    .line 1074
    instance-of v0, p1, Lcn/bmob/v3/exception/BmobException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1075
    check-cast v0, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {v0}, Lcn/bmob/v3/exception/BmobException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 1076
    iget-object v0, p0, Lcn/bmob/v3/update/BmobUpdateAgent$3;->Code:Lrx/Observable;

    :goto_0
    return-object v0

    .line 1079
    :cond_0
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
