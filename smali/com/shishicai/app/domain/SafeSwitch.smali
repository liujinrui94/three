.class public Lcom/shishicai/app/domain/SafeSwitch;
.super Lcn/bmob/v3/BmobObject;
.source "SafeSwitch.java"


# instance fields
.field private bundleID:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private isOpen:Ljava/lang/Boolean;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundleID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/shishicai/app/domain/SafeSwitch;->bundleID:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/shishicai/app/domain/SafeSwitch;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOpen()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/shishicai/app/domain/SafeSwitch;->isOpen:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/shishicai/app/domain/SafeSwitch;->link:Ljava/lang/String;

    return-object v0
.end method

.method public setBundleID(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleID"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/shishicai/app/domain/SafeSwitch;->bundleID:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/shishicai/app/domain/SafeSwitch;->desc:Ljava/lang/String;

    return-void
.end method

.method public setIsOpen(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isOpen"    # Ljava/lang/Boolean;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/shishicai/app/domain/SafeSwitch;->isOpen:Ljava/lang/Boolean;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/shishicai/app/domain/SafeSwitch;->link:Ljava/lang/String;

    return-void
.end method
