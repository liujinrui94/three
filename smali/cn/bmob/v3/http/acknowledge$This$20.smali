.class final Lcn/bmob/v3/http/acknowledge$This$20;
.super Ljava/lang/Object;
.source "RxBmob.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/acknowledge$This;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 167
    iput-object p2, p0, Lcn/bmob/v3/http/acknowledge$This$20;->Code:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 167
    check-cast p1, Lrx/Subscriber;

    .line 1170
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$20;->Code:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$20;->Code:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/http/bean/R1;

    invoke-virtual {v0}, Lcn/bmob/v3/http/bean/R1;->getB()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$20;->Code:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/http/bean/R1;

    invoke-virtual {v0}, Lcn/bmob/v3/http/bean/R1;->getE()Lcn/bmob/v3/exception/BmobException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 1173
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
