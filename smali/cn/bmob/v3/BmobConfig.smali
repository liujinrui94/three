.class public final Lcn/bmob/v3/BmobConfig;
.super Ljava/lang/Object;
.source "BmobConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/BmobConfig$Builder;
    }
.end annotation


# instance fields
.field public applicationId:Ljava/lang/String;

.field public connectTimeout:J

.field public context:Landroid/content/Context;

.field public fileExpiration:J

.field public uploadBlockSize:I


# direct methods
.method private constructor <init>(Lcn/bmob/v3/BmobConfig$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcn/bmob/v3/BmobConfig$Builder;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcn/bmob/v3/BmobConfig$Builder;->Code(Lcn/bmob/v3/BmobConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/BmobConfig;->context:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lcn/bmob/v3/BmobConfig$Builder;->V(Lcn/bmob/v3/BmobConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/BmobConfig;->applicationId:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcn/bmob/v3/BmobConfig$Builder;->I(Lcn/bmob/v3/BmobConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/bmob/v3/BmobConfig;->connectTimeout:J

    .line 23
    invoke-static {p1}, Lcn/bmob/v3/BmobConfig$Builder;->Z(Lcn/bmob/v3/BmobConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcn/bmob/v3/BmobConfig;->uploadBlockSize:I

    .line 24
    invoke-static {p1}, Lcn/bmob/v3/BmobConfig$Builder;->B(Lcn/bmob/v3/BmobConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/bmob/v3/BmobConfig;->fileExpiration:J

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcn/bmob/v3/BmobConfig$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcn/bmob/v3/BmobConfig$Builder;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcn/bmob/v3/BmobConfig;-><init>(Lcn/bmob/v3/BmobConfig$Builder;)V

    return-void
.end method
