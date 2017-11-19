.class public Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;
.super Ljava/lang/Object;
.source "LuzhuInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/LuzhuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;,
        Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;
    }
.end annotation


# instance fields
.field private closeTotal:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;",
            ">;"
        }
    .end annotation
.end field

.field private extData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private fCount:I

.field private fTotalCount:I

.field private name:Ljava/lang/String;

.field private sCount:I

.field private sTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloseTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->closeTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getExtData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->extData:Ljava/util/List;

    return-object v0
.end method

.method public getFCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->fCount:I

    return v0
.end method

.method public getFTotalCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->fTotalCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->sCount:I

    return v0
.end method

.method public getSTotalCount()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->sTotalCount:I

    return v0
.end method

.method public setCloseTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "closeTotal"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->closeTotal:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->data:Ljava/util/List;

    .line 129
    return-void
.end method

.method public setExtData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "extData":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->extData:Ljava/util/List;

    .line 121
    return-void
.end method

.method public setFCount(I)V
    .locals 0
    .param p1, "fCount"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->fCount:I

    .line 81
    return-void
.end method

.method public setFTotalCount(I)V
    .locals 0
    .param p1, "fTotalCount"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->fTotalCount:I

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSCount(I)V
    .locals 0
    .param p1, "sCount"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->sCount:I

    .line 89
    return-void
.end method

.method public setSTotalCount(I)V
    .locals 0
    .param p1, "sTotalCount"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->sTotalCount:I

    .line 105
    return-void
.end method
