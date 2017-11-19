.class public Lcom/shishicai/app/domain/GoodsParams;
.super Ljava/lang/Object;
.source "GoodsParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2cb0285dc69b2e22L


# instance fields
.field private goods_id:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private parent:I

.field private quick:I

.field private spec:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "quick"    # I
    .param p2, "spec"    # [Ljava/lang/String;
    .param p3, "goods_id"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "parent"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/shishicai/app/domain/GoodsParams;->quick:I

    .line 25
    iput-object p2, p0, Lcom/shishicai/app/domain/GoodsParams;->spec:[Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/shishicai/app/domain/GoodsParams;->goods_id:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/shishicai/app/domain/GoodsParams;->number:Ljava/lang/String;

    .line 28
    iput p5, p0, Lcom/shishicai/app/domain/GoodsParams;->parent:I

    .line 29
    return-void
.end method


# virtual methods
.method public getGoods_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/shishicai/app/domain/GoodsParams;->goods_id:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shishicai/app/domain/GoodsParams;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/shishicai/app/domain/GoodsParams;->parent:I

    return v0
.end method

.method public getQuick()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/shishicai/app/domain/GoodsParams;->quick:I

    return v0
.end method

.method public getSpec()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shishicai/app/domain/GoodsParams;->spec:[Ljava/lang/String;

    return-object v0
.end method

.method public setGoods_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_id"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/shishicai/app/domain/GoodsParams;->goods_id:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/shishicai/app/domain/GoodsParams;->number:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setParent(I)V
    .locals 0
    .param p1, "parent"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/shishicai/app/domain/GoodsParams;->parent:I

    .line 69
    return-void
.end method

.method public setQuick(I)V
    .locals 0
    .param p1, "quick"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/shishicai/app/domain/GoodsParams;->quick:I

    .line 37
    return-void
.end method

.method public setSpec([Ljava/lang/String;)V
    .locals 0
    .param p1, "spec"    # [Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/shishicai/app/domain/GoodsParams;->spec:[Ljava/lang/String;

    .line 45
    return-void
.end method
