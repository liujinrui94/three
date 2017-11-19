.class public final Lcn/bmob/v3/b/This$thing;
.super Ljava/lang/Object;
.source "BLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/b/This;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "thing"
.end annotation


# instance fields
.field Code:I

.field I:I

.field V:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/4 v0, 0x5

    iput v0, p0, Lcn/bmob/v3/b/This$thing;->Code:I

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/v3/b/This$thing;->V:Z

    .line 394
    sget v0, Lcn/bmob/v3/b/This$This;->Code:I

    iput v0, p0, Lcn/bmob/v3/b/This$thing;->I:I

    return-void
.end method
