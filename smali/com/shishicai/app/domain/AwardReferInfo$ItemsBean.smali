.class public Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;
.super Ljava/lang/Object;
.source "AwardReferInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/AwardReferInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/lang/String;

.field private period:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private star:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getStar()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->star:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->data:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->date:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->period:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->result:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setStar(I)V
    .locals 0
    .param p1, "star"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->star:I

    .line 90
    return-void
.end method
