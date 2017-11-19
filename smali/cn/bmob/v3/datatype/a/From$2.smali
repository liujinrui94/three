.class final Lcn/bmob/v3/datatype/a/From$2;
.super Ljava/lang/Object;
.source "UpYunUploader.java"

# interfaces
.implements Lcn/bmob/v3/datatype/a/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/datatype/a/From;->Code()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/datatype/a/From;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/a/From;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcn/bmob/v3/datatype/a/From$2;->Code:Lcn/bmob/v3/datatype/a/From;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From$2;->Code:Lcn/bmob/v3/datatype/a/From;

    invoke-static {v0, p1, p2}, Lcn/bmob/v3/datatype/a/From;->Code(Lcn/bmob/v3/datatype/a/From;ZLjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From$2;->Code:Lcn/bmob/v3/datatype/a/From;

    invoke-static {v0}, Lcn/bmob/v3/datatype/a/From;->Code(Lcn/bmob/v3/datatype/a/From;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From$2;->Code:Lcn/bmob/v3/datatype/a/From;

    invoke-static {v0}, Lcn/bmob/v3/datatype/a/From;->Code(Lcn/bmob/v3/datatype/a/From;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From$2;->Code:Lcn/bmob/v3/datatype/a/From;

    iget-object v0, v0, Lcn/bmob/v3/datatype/a/From;->V:Lcn/bmob/v3/listener/UploadFileListener;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcn/bmob/v3/datatype/a/From$2;->Code:Lcn/bmob/v3/datatype/a/From;

    iget-object v0, v0, Lcn/bmob/v3/datatype/a/From;->V:Lcn/bmob/v3/listener/UploadFileListener;

    invoke-virtual {v0}, Lcn/bmob/v3/listener/UploadFileListener;->onFinish()V

    .line 93
    :cond_1
    return-void
.end method
