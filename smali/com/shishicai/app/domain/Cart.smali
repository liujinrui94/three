.class public Lcom/shishicai/app/domain/Cart;
.super Ljava/lang/Object;
.source "Cart.java"


# instance fields
.field private goods_attr:Ljava/lang/String;

.field private goods_id:Ljava/lang/String;

.field private goods_jifen:Ljava/lang/String;

.field private goods_name:Ljava/lang/String;

.field private goods_number:Ljava/lang/String;

.field private goods_price:Ljava/lang/String;

.field private goods_sn:Ljava/lang/String;

.field private goods_thumb:Ljava/lang/String;

.field private market_price:Ljava/lang/String;

.field private rec_id:Ljava/lang/String;

.field private subtotal:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoods_attr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->goods_attr:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->goods_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_jifen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->goods_jifen:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->goods_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->goods_number:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->goods_price:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_sn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->goods_sn:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_thumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->goods_thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket_price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->market_price:Ljava/lang/String;

    return-object v0
.end method

.method public getRec_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->rec_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->subtotal:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/shishicai/app/domain/Cart;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setGoods_attr(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_attr"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->goods_attr:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setGoods_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_id"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->goods_id:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setGoods_jifen(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_jifen"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->goods_jifen:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setGoods_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_name"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->goods_name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setGoods_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_number"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->goods_number:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setGoods_price(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_price"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->goods_price:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setGoods_sn(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_sn"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->goods_sn:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setGoods_thumb(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_thumb"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->goods_thumb:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setMarket_price(Ljava/lang/String;)V
    .locals 0
    .param p1, "market_price"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->market_price:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setRec_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "rec_id"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->rec_id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSubtotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtotal"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->subtotal:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/shishicai/app/domain/Cart;->user_id:Ljava/lang/String;

    .line 36
    return-void
.end method
