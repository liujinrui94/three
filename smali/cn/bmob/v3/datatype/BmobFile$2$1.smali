.class final Lcn/bmob/v3/datatype/BmobFile$2$1;
.super Ljava/lang/Object;
.source "BmobFile.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/datatype/BmobFile$2;
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
        "Lcn/bmob/v3/http/bean/Upyun;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/datatype/BmobFile$2;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/BmobFile$2;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobFile$2$1;->Code:Lcn/bmob/v3/datatype/BmobFile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 280
    check-cast p1, Lcn/bmob/v3/http/bean/Upyun;

    .line 1283
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobFile$2$1;->Code:Lcn/bmob/v3/datatype/BmobFile$2;

    iget-object v0, v0, Lcn/bmob/v3/datatype/BmobFile$2;->V:Lcn/bmob/v3/datatype/BmobFile;

    iget-object v1, p0, Lcn/bmob/v3/datatype/BmobFile$2$1;->Code:Lcn/bmob/v3/datatype/BmobFile$2;

    iget-object v1, v1, Lcn/bmob/v3/datatype/BmobFile$2;->Code:Lcn/bmob/v3/listener/ProgressCallback;

    invoke-static {v0, p1, v1}, Lcn/bmob/v3/datatype/BmobFile;->Code(Lcn/bmob/v3/datatype/BmobFile;Lcn/bmob/v3/http/bean/Upyun;Lcn/bmob/v3/listener/ProgressCallback;)Lrx/Observable;

    move-result-object v0

    .line 280
    return-object v0
.end method
