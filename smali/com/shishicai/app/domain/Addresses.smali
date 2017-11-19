.class public Lcom/shishicai/app/domain/Addresses;
.super Ljava/lang/Object;
.source "Addresses.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private address:Ljava/lang/String;

.field private address_id:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private consignee:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private tel:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->address_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getConsignee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->consignee:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/shishicai/app/domain/Addresses;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->address:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setAddress_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "address_id"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->address_id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->city:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setConsignee(Ljava/lang/String;)V
    .locals 0
    .param p1, "consignee"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->consignee:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->country:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->district:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->email:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->mobile:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->province:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->tel:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/shishicai/app/domain/Addresses;->user_id:Ljava/lang/String;

    .line 47
    return-void
.end method
