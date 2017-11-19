.class public Lcom/shishicai/app/domain/City;
.super Ljava/lang/Object;
.source "City.java"


# instance fields
.field private city_region:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private province_name:Ljava/lang/String;

.field private region_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "region_id"    # Ljava/lang/String;
    .param p2, "province_name"    # Ljava/lang/String;
    .param p3, "city_region"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shishicai/app/domain/City;->region_id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/shishicai/app/domain/City;->province_name:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/shishicai/app/domain/City;->city_region:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/shishicai/app/domain/City;->name:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getCity_region()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/domain/City;->city_region:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/shishicai/app/domain/City;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/domain/City;->province_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/domain/City;->region_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCity_region(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_region"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/shishicai/app/domain/City;->city_region:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/shishicai/app/domain/City;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setProvince_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "province_name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/shishicai/app/domain/City;->province_name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setRegion_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "region_id"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shishicai/app/domain/City;->region_id:Ljava/lang/String;

    .line 27
    return-void
.end method
