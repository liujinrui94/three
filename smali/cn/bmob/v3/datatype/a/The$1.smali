.class final Lcn/bmob/v3/datatype/a/The$1;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Lcn/bmob/v3/datatype/a/mine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/datatype/a/The;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/datatype/a/mine;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/a/The;Lcn/bmob/v3/datatype/a/mine;)V
    .locals 0

    .prologue
    .line 85
    iput-object p2, p0, Lcn/bmob/v3/datatype/a/The$1;->Code:Lcn/bmob/v3/datatype/a/mine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(JJ)V
    .locals 7

    .prologue
    .line 88
    new-instance v0, Lcn/bmob/v3/datatype/a/The$1$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/datatype/a/The$1$1;-><init>(Lcn/bmob/v3/datatype/a/The$1;JJ)V

    invoke-static {v0}, Lcn/bmob/v3/datatype/a/This;->Code(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
