.class final Lcn/bmob/v3/BmobInstallation$2;
.super Ljava/lang/Object;
.source "BmobInstallation.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobInstallation;->Code(Ljava/util/List;)Lrx/Observable;
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
        "Ljava/lang/Throwable;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/BmobInstallation;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobInstallation;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation$2;->Code:Lcn/bmob/v3/BmobInstallation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 215
    check-cast p1, Ljava/lang/Throwable;

    .line 1218
    instance-of v0, p1, Lcn/bmob/v3/exception/BmobException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1219
    check-cast v0, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {v0}, Lcn/bmob/v3/exception/BmobException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 1220
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation$2;->Code:Lcn/bmob/v3/BmobInstallation;

    invoke-static {v0}, Lcn/bmob/v3/BmobInstallation;->Code(Lcn/bmob/v3/BmobInstallation;)Lrx/Observable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1223
    :cond_0
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
