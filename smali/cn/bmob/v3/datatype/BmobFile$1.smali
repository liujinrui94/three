.class final Lcn/bmob/v3/datatype/BmobFile$1;
.super Ljava/lang/Object;
.source "BmobFile.java"

# interfaces
.implements Lcn/bmob/v3/listener/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/datatype/BmobFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/listener/UploadFileListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/listener/UploadFileListener;)V
    .locals 0

    .prologue
    .line 246
    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile$1;->Code:Lcn/bmob/v3/listener/UploadFileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgress(Ljava/lang/Integer;J)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 249
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$1;->Code:Lcn/bmob/v3/listener/UploadFileListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$1;->Code:Lcn/bmob/v3/listener/UploadFileListener;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/listener/UploadFileListener;->onProgress(Ljava/lang/Integer;)V

    .line 252
    :cond_0
    return-void
.end method
