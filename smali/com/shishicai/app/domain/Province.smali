.class public Lcom/shishicai/app/domain/Province;
.super Ljava/lang/Object;
.source "Province.java"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private region_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "region_id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/shishicai/app/domain/Province;->id:I

    .line 20
    iput-object p2, p0, Lcom/shishicai/app/domain/Province;->region_id:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/shishicai/app/domain/Province;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "region_id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shishicai/app/domain/Province;->region_id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/shishicai/app/domain/Province;->name:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/shishicai/app/domain/Province;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/shishicai/app/domain/Province;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/domain/Province;->region_id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/shishicai/app/domain/Province;->id:I

    .line 30
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/domain/Province;->name:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setRegion_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "region_id"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/shishicai/app/domain/Province;->region_id:Ljava/lang/String;

    .line 38
    return-void
.end method
