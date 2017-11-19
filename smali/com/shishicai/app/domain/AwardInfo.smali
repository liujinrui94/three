.class public Lcom/shishicai/app/domain/AwardInfo;
.super Ljava/lang/Object;
.source "AwardInfo.java"


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private rows:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/DataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardInfo;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/shishicai/app/domain/AwardInfo;->rows:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardInfo;->code:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/DataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/DataBean;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardInfo;->data:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardInfo;->info:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRows(I)V
    .locals 0
    .param p1, "rows"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/shishicai/app/domain/AwardInfo;->rows:I

    .line 31
    return-void
.end method
