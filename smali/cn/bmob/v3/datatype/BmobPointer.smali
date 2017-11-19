.class public Lcn/bmob/v3/datatype/BmobPointer;
.super Ljava/lang/Object;
.source "BmobPointer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x28576957d3dc3deaL


# instance fields
.field private __type:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private objectId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Pointer"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->__type:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Pointer"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->__type:Ljava/lang/String;

    .line 31
    instance-of v0, p1, Lcn/bmob/v3/BmobUser;

    if-eqz v0, :cond_1

    .line 32
    check-cast p1, Lcn/bmob/v3/BmobUser;

    .line 33
    .end local p1    # "value":Ljava/lang/Object;
    const-string v0, "_User"

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setClassName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setObjectId(Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcn/bmob/v3/BmobRole;

    if-eqz v0, :cond_2

    .line 36
    check-cast p1, Lcn/bmob/v3/BmobRole;

    .line 37
    .end local p1    # "value":Ljava/lang/Object;
    sget-object v0, Lcn/bmob/v3/BmobRole;->tableName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setClassName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setObjectId(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Lcn/bmob/v3/BmobObject;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcn/bmob/v3/BmobObject;

    .line 41
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setClassName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcn/bmob/v3/BmobObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/datatype/BmobPointer;->setObjectId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Pointer"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->__type:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcn/bmob/v3/datatype/BmobPointer;->setClassName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p2}, Lcn/bmob/v3/datatype/BmobPointer;->setObjectId(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobPointer;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobPointer;->className:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobPointer;->objectId:Ljava/lang/String;

    .line 64
    return-void
.end method
