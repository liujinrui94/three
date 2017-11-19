.class final Lcn/bmob/v3/http/thing$5$1;
.super Ljava/lang/Object;
.source "BmobFactory.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/thing$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/http/bean/Upyun;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/thing$5;Lcn/bmob/v3/http/bean/Upyun;)V
    .locals 0

    .prologue
    .line 366
    iput-object p2, p0, Lcn/bmob/v3/http/thing$5$1;->Code:Lcn/bmob/v3/http/bean/Upyun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcn/bmob/v3/http/thing$5$1;->Code:Lcn/bmob/v3/http/bean/Upyun;

    invoke-static {v0}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Lcn/bmob/v3/b/The;

    invoke-direct {v1}, Lcn/bmob/v3/b/The;-><init>()V

    .line 372
    const-string v2, "upyun"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "upyunVer"

    sget v2, Lcn/bmob/v3/http/This;->V:I

    invoke-virtual {v1, v0, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;I)V

    .line 375
    return-void
.end method
