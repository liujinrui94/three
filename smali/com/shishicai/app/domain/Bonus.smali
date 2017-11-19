.class public Lcom/shishicai/app/domain/Bonus;
.super Ljava/lang/Object;
.source "Bonus.java"


# instance fields
.field private bonus_id:Ljava/lang/String;

.field private bonus_money_formated:Ljava/lang/String;

.field private bonus_sn:Ljava/lang/String;

.field private min_goods_amount:Ljava/lang/String;

.field private order_id:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private type_id:Ljava/lang/String;

.field private type_money:Ljava/lang/String;

.field private type_name:Ljava/lang/String;

.field private use_enddate:Ljava/lang/String;

.field private use_startdate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBonus_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->bonus_id:Ljava/lang/String;

    return-object v0
.end method

.method public getBonus_money_formated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->bonus_money_formated:Ljava/lang/String;

    return-object v0
.end method

.method public getBonus_sn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->bonus_sn:Ljava/lang/String;

    return-object v0
.end method

.method public getMin_goods_amount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->min_goods_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->type_id:Ljava/lang/String;

    return-object v0
.end method

.method public getType_money()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->type_money:Ljava/lang/String;

    return-object v0
.end method

.method public getType_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->type_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_enddate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->use_enddate:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_startdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/shishicai/app/domain/Bonus;->use_startdate:Ljava/lang/String;

    return-object v0
.end method

.method public setBonus_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "bonus_id"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->bonus_id:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setBonus_money_formated(Ljava/lang/String;)V
    .locals 0
    .param p1, "bonus_money_formated"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->bonus_money_formated:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setBonus_sn(Ljava/lang/String;)V
    .locals 0
    .param p1, "bonus_sn"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->bonus_sn:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMin_goods_amount(Ljava/lang/String;)V
    .locals 0
    .param p1, "min_goods_amount"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->min_goods_amount:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setOrder_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_id"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->order_id:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->status:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setType_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "type_id"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->type_id:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setType_money(Ljava/lang/String;)V
    .locals 0
    .param p1, "type_money"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->type_money:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setType_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "type_name"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->type_name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setUse_enddate(Ljava/lang/String;)V
    .locals 0
    .param p1, "use_enddate"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->use_enddate:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setUse_startdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "use_startdate"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/shishicai/app/domain/Bonus;->use_startdate:Ljava/lang/String;

    .line 82
    return-void
.end method
