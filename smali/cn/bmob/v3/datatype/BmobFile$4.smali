.class final Lcn/bmob/v3/datatype/BmobFile$4;
.super Ljava/lang/Object;
.source "BmobFile.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/datatype/BmobFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Void;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/datatype/BmobFile;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$4;->Code:Lcn/bmob/v3/datatype/BmobFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 326
    .line 1329
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$4;->Code:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {v1}, Lcn/bmob/v3/datatype/BmobFile;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobFile$4;->Code:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {v2}, Lcn/bmob/v3/datatype/BmobFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/bmob/v3/datatype/BmobFile$4;->Code:Lcn/bmob/v3/datatype/BmobFile;

    invoke-virtual {v3}, Lcn/bmob/v3/datatype/BmobFile;->getLocalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;J)Lrx/Observable;

    move-result-object v0

    .line 326
    return-object v0
.end method
