.class public Lcom/shishicai/app/domain/Total;
.super Ljava/lang/Object;
.source "Total.java"


# instance fields
.field private goods_amount:Ljava/lang/String;

.field private goods_jifen:Ljava/lang/String;

.field private goods_price:Ljava/lang/String;

.field private goods_price_formated:Ljava/lang/String;

.field private market_price:Ljava/lang/String;

.field private market_price_formated:Ljava/lang/String;

.field private real_goods_count:Ljava/lang/String;

.field private save_rate:Ljava/lang/String;

.field private saving:Ljava/lang/String;

.field private saving_formated:Ljava/lang/String;

.field private virtual_goods_count:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoods_amount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->goods_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_jifen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->goods_jifen:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->goods_price:Ljava/lang/String;

    return-object v0
.end method

.method public getGoods_price_formated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->goods_price_formated:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket_price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->market_price:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket_price_formated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->market_price_formated:Ljava/lang/String;

    return-object v0
.end method

.method public getReal_goods_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->real_goods_count:Ljava/lang/String;

    return-object v0
.end method

.method public getSave_rate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->save_rate:Ljava/lang/String;

    return-object v0
.end method

.method public getSaving()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->saving:Ljava/lang/String;

    return-object v0
.end method

.method public getSaving_formated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->saving_formated:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtual_goods_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/shishicai/app/domain/Total;->virtual_goods_count:Ljava/lang/String;

    return-object v0
.end method

.method public setGoods_amount(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_amount"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->goods_amount:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setGoods_jifen(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_jifen"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->goods_jifen:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setGoods_price(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_price"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->goods_price:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setGoods_price_formated(Ljava/lang/String;)V
    .locals 0
    .param p1, "goods_price_formated"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->goods_price_formated:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setMarket_price(Ljava/lang/String;)V
    .locals 0
    .param p1, "market_price"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->market_price:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMarket_price_formated(Ljava/lang/String;)V
    .locals 0
    .param p1, "market_price_formated"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->market_price_formated:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setReal_goods_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "real_goods_count"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->real_goods_count:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSave_rate(Ljava/lang/String;)V
    .locals 0
    .param p1, "save_rate"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->save_rate:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSaving(Ljava/lang/String;)V
    .locals 0
    .param p1, "saving"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->saving:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setSaving_formated(Ljava/lang/String;)V
    .locals 0
    .param p1, "saving_formated"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->saving_formated:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setVirtual_goods_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "virtual_goods_count"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/shishicai/app/domain/Total;->virtual_goods_count:Ljava/lang/String;

    .line 86
    return-void
.end method
