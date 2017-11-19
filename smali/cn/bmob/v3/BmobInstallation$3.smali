.class final Lcn/bmob/v3/BmobInstallation$3;
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
        "Ljava/util/List",
        "<",
        "Lcn/bmob/v3/BmobInstallation;",
        ">;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/util/List;

.field private synthetic V:Lcn/bmob/v3/BmobInstallation;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobInstallation;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation$3;->V:Lcn/bmob/v3/BmobInstallation;

    iput-object p2, p0, Lcn/bmob/v3/BmobInstallation$3;->Code:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 205
    check-cast p1, Ljava/util/List;

    .line 1208
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1209
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/BmobInstallation;

    .line 1210
    iget-object v1, p0, Lcn/bmob/v3/BmobInstallation$3;->V:Lcn/bmob/v3/BmobInstallation;

    iget-object v2, p0, Lcn/bmob/v3/BmobInstallation$3;->Code:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcn/bmob/v3/BmobInstallation;->Code(Lcn/bmob/v3/BmobInstallation;Lcn/bmob/v3/BmobInstallation;Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1212
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation$3;->V:Lcn/bmob/v3/BmobInstallation;

    invoke-static {v0}, Lcn/bmob/v3/BmobInstallation;->Code(Lcn/bmob/v3/BmobInstallation;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
