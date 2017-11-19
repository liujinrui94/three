.class public Lcom/shishicai/app/domain/ShoeSize;
.super Ljava/lang/Object;
.source "ShoeSize.java"


# instance fields
.field private format_price:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormat_price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/domain/ShoeSize;->format_price:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/shishicai/app/domain/ShoeSize;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/domain/ShoeSize;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/shishicai/app/domain/ShoeSize;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setFormat_price(Ljava/lang/String;)V
    .locals 0
    .param p1, "format_price"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/shishicai/app/domain/ShoeSize;->format_price:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/shishicai/app/domain/ShoeSize;->id:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/shishicai/app/domain/ShoeSize;->label:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/shishicai/app/domain/ShoeSize;->price:Ljava/lang/String;

    .line 25
    return-void
.end method
