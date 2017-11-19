.class final Lcn/bmob/v3/datatype/a/The$2$1;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/datatype/a/The$2;->Code(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Z

.field private synthetic I:Lcn/bmob/v3/datatype/a/The$2;

.field private synthetic V:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/a/The$2;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcn/bmob/v3/datatype/a/The$2$1;->I:Lcn/bmob/v3/datatype/a/The$2;

    iput-boolean p2, p0, Lcn/bmob/v3/datatype/a/The$2$1;->Code:Z

    iput-object p3, p0, Lcn/bmob/v3/datatype/a/The$2$1;->V:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/The$2$1;->I:Lcn/bmob/v3/datatype/a/The$2;

    iget-object v0, v0, Lcn/bmob/v3/datatype/a/The$2;->Code:Lcn/bmob/v3/datatype/a/I;

    iget-boolean v1, p0, Lcn/bmob/v3/datatype/a/The$2$1;->Code:Z

    iget-object v2, p0, Lcn/bmob/v3/datatype/a/The$2$1;->V:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/bmob/v3/datatype/a/I;->Code(ZLjava/lang/String;)V

    .line 106
    return-void
.end method
