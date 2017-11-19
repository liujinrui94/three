.class public final Lcn/bmob/push/lib/util/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BmobPush"

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcn/bmob/push/lib/util/LogUtil;->isDebug:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static C(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcn/bmob/push/config/Constant;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "BmobPush"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcn/bmob/push/lib/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method
