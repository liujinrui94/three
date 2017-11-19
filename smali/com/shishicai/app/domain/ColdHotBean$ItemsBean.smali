.class public Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;
.super Ljava/lang/Object;
.source "ColdHotBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/ColdHotBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation


# instance fields
.field private ball:Ljava/lang/String;

.field private cold:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private warm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->ball:Ljava/lang/String;

    return-object v0
.end method

.method public getCold()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->cold:Ljava/util/List;

    return-object v0
.end method

.method public getHot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->hot:Ljava/util/List;

    return-object v0
.end method

.method public getWarm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->warm:Ljava/util/List;

    return-object v0
.end method

.method public setBall(Ljava/lang/String;)V
    .locals 0
    .param p1, "ball"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->ball:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCold(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "cold":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->cold:Ljava/util/List;

    .line 88
    return-void
.end method

.method public setHot(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "hot":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->hot:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setWarm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "warm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->warm:Ljava/util/List;

    .line 80
    return-void
.end method
