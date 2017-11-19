.class final Lcn/bmob/v3/datatype/BmobFile$7;
.super Lcn/bmob/v3/listener/UploadFileListener;
.source "BmobFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/datatype/BmobFile;->Code(ZII[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic B:Z

.field private synthetic C:I

.field private synthetic Code:Lcn/bmob/v3/datatype/BmobFile;

.field private synthetic F:I

.field private synthetic I:Ljava/util/List;

.field private synthetic S:[Ljava/lang/String;

.field private synthetic V:Ljava/util/List;

.field private synthetic Z:Lcn/bmob/v3/listener/UploadBatchListener;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;ZI[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$7;->Code:Lcn/bmob/v3/datatype/BmobFile;

    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobFile$7;->V:Ljava/util/List;

    iput-object p3, p0, Lcn/bmob/v3/datatype/BmobFile$7;->I:Ljava/util/List;

    iput-object p4, p0, Lcn/bmob/v3/datatype/BmobFile$7;->Z:Lcn/bmob/v3/listener/UploadBatchListener;

    iput-boolean p5, p0, Lcn/bmob/v3/datatype/BmobFile$7;->B:Z

    iput p6, p0, Lcn/bmob/v3/datatype/BmobFile$7;->C:I

    iput-object p7, p0, Lcn/bmob/v3/datatype/BmobFile$7;->S:[Ljava/lang/String;

    iput p8, p0, Lcn/bmob/v3/datatype/BmobFile$7;->F:I

    invoke-direct {p0}, Lcn/bmob/v3/listener/UploadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcn/bmob/v3/exception/BmobException;)V
    .locals 5
    .param p1, "e"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 610
    if-nez p1, :cond_1

    .line 611
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$7;->Code:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {v0}, Lcn/bmob/v3/datatype/BmobFile;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$7;->V:Ljava/util/List;

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobFile$7;->Code:Lcn/bmob/v3/datatype/BmobFile;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$7;->I:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$7;->Z:Lcn/bmob/v3/listener/UploadBatchListener;

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$7;->V:Ljava/util/List;

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobFile$7;->I:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcn/bmob/v3/listener/UploadBatchListener;->onSuccess(Ljava/util/List;Ljava/util/List;)V

    .line 615
    iget-boolean v0, p0, Lcn/bmob/v3/datatype/BmobFile$7;->B:Z

    if-nez v0, :cond_0

    .line 617
    iget v0, p0, Lcn/bmob/v3/datatype/BmobFile$7;->C:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$7;->S:[Ljava/lang/String;

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobFile$7;->V:Ljava/util/List;

    iget-object v3, p0, Lcn/bmob/v3/datatype/BmobFile$7;->I:Ljava/util/List;

    iget-object v4, p0, Lcn/bmob/v3/datatype/BmobFile$7;->Z:Lcn/bmob/v3/listener/UploadBatchListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/bmob/v3/datatype/BmobFile;->Code(I[Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcn/bmob/v3/listener/UploadBatchListener;)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$7;->Z:Lcn/bmob/v3/listener/UploadBatchListener;

    invoke-virtual {p1}, Lcn/bmob/v3/exception/BmobException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/bmob/v3/exception/BmobException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/bmob/v3/listener/UploadBatchListener;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Integer;)V
    .locals 10
    .param p1, "percent"    # Ljava/lang/Integer;

    .prologue
    .line 626
    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$7;->Z:Lcn/bmob/v3/listener/UploadBatchListener;

    iget v0, p0, Lcn/bmob/v3/datatype/BmobFile$7;->C:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcn/bmob/v3/datatype/BmobFile$7;->F:I

    iget v0, p0, Lcn/bmob/v3/datatype/BmobFile$7;->C:I

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcn/bmob/v3/datatype/BmobFile$7;->F:I

    .line 1259
    const/16 v0, 0x64

    .line 1260
    if-ge v5, v6, :cond_0

    .line 1261
    int-to-double v8, v5

    int-to-double v6, v6

    div-double v6, v8, v6

    .line 1262
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 626
    :cond_0
    invoke-interface {v1, v2, v3, v4, v0}, Lcn/bmob/v3/listener/UploadBatchListener;->onProgress(IIII)V

    .line 627
    return-void
.end method
