.class public final Lcn/bmob/v3/update/a/This;
.super Ljava/lang/Object;
.source "UpdateConfig.java"


# static fields
.field private static B:Z

.field private static Code:Ljava/lang/String;

.field private static I:Z

.field private static V:Z

.field private static Z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 10
    sput-boolean v1, Lcn/bmob/v3/update/a/This;->V:Z

    .line 11
    sput-boolean v0, Lcn/bmob/v3/update/a/This;->I:Z

    .line 12
    sput-boolean v1, Lcn/bmob/v3/update/a/This;->Z:Z

    .line 13
    sput-boolean v0, Lcn/bmob/v3/update/a/This;->B:Z

    return-void
.end method

.method public static B()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcn/bmob/v3/update/a/This;->B:Z

    return v0
.end method

.method public static Code(Z)V
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lcn/bmob/v3/update/a/This;->V:Z

    .line 21
    return-void
.end method

.method public static Code()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcn/bmob/v3/update/a/This;->V:Z

    return v0
.end method

.method public static I(Z)V
    .locals 0

    .prologue
    .line 47
    sput-boolean p0, Lcn/bmob/v3/update/a/This;->Z:Z

    .line 48
    return-void
.end method

.method public static I()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcn/bmob/v3/update/a/This;->I:Z

    return v0
.end method

.method public static V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcn/bmob/v3/update/a/This;->Code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "BMOB_CHANNEL"

    invoke-static {v0}, Lcn/bmob/v3/b/From;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/bmob/v3/update/a/This;->Code:Ljava/lang/String;

    .line 31
    :cond_0
    sget-object v0, Lcn/bmob/v3/update/a/This;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public static V(Z)V
    .locals 0

    .prologue
    .line 39
    sput-boolean p0, Lcn/bmob/v3/update/a/This;->I:Z

    .line 40
    return-void
.end method

.method public static Z(Z)V
    .locals 0

    .prologue
    .line 55
    sput-boolean p0, Lcn/bmob/v3/update/a/This;->B:Z

    .line 56
    return-void
.end method

.method public static Z()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcn/bmob/v3/update/a/This;->Z:Z

    return v0
.end method
