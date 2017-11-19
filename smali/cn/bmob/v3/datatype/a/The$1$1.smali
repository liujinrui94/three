.class final Lcn/bmob/v3/datatype/a/The$1$1;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/datatype/a/The$1;->Code(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:J

.field private synthetic I:Lcn/bmob/v3/datatype/a/The$1;

.field private synthetic V:J


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/a/The$1;JJ)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/bmob/v3/datatype/a/The$1$1;->I:Lcn/bmob/v3/datatype/a/The$1;

    iput-wide p2, p0, Lcn/bmob/v3/datatype/a/The$1$1;->Code:J

    iput-wide p4, p0, Lcn/bmob/v3/datatype/a/The$1$1;->V:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/The$1$1;->I:Lcn/bmob/v3/datatype/a/The$1;

    iget-object v0, v0, Lcn/bmob/v3/datatype/a/The$1;->Code:Lcn/bmob/v3/datatype/a/mine;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/The$1$1;->I:Lcn/bmob/v3/datatype/a/The$1;

    iget-object v0, v0, Lcn/bmob/v3/datatype/a/The$1;->Code:Lcn/bmob/v3/datatype/a/mine;

    iget-wide v2, p0, Lcn/bmob/v3/datatype/a/The$1$1;->Code:J

    iget-wide v4, p0, Lcn/bmob/v3/datatype/a/The$1$1;->V:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcn/bmob/v3/datatype/a/mine;->Code(JJ)V

    .line 94
    :cond_0
    return-void
.end method
