.class public Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;
.super Ljava/lang/Object;
.source "LuzhuInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBeanX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
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
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;->data:Ljava/util/List;

    .line 166
    return-void
.end method
