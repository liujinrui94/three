.class public Lcn/bmob/v3/BmobACL;
.super Ljava/lang/Object;
.source "BmobACL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33711f2dd5b5281fL


# instance fields
.field private Code:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobACL;->Code:Ljava/util/Map;

    .line 26
    return-void
.end method

.method private Code(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/bmob/v3/BmobACL;->Code:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcn/bmob/v3/BmobACL;->Code:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 39
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcn/bmob/v3/BmobACL;->Code:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcn/bmob/v3/BmobACL;->Code:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getAcl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcn/bmob/v3/BmobACL;->Code:Ljava/util/Map;

    return-object v0
.end method

.method public setAcl(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "acl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcn/bmob/v3/BmobACL;->Code:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public setPublicReadAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/BmobACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/BmobACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 191
    :cond_0
    return-void
.end method

.method public setReadAccess(Lcn/bmob/v3/BmobUser;Z)V
    .locals 2
    .param p1, "user"    # Lcn/bmob/v3/BmobUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    if-eqz p2, :cond_2

    .line 76
    const-string v0, "read"

    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    :cond_2
    return-void
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-eqz p2, :cond_1

    .line 58
    const-string v0, "read"

    invoke-direct {p0, v0, p1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    :cond_1
    return-void
.end method

.method public setRoleReadAccess(Lcn/bmob/v3/BmobRole;Z)V
    .locals 3
    .param p1, "role"    # Lcn/bmob/v3/BmobRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null role"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null roleName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    if-eqz p2, :cond_2

    .line 138
    const-string v0, "read"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    :cond_2
    return-void
.end method

.method public setRoleReadAccess(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null roleName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-eqz p2, :cond_1

    .line 121
    const-string v0, "read"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public setRoleWriteAccess(Lcn/bmob/v3/BmobRole;Z)V
    .locals 3
    .param p1, "role"    # Lcn/bmob/v3/BmobRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null role"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null roleName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    if-eqz p2, :cond_2

    .line 169
    const-string v0, "write"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/bmob/v3/BmobRole;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    :cond_2
    return-void
.end method

.method public setRoleWriteAccess(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null roleName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    if-eqz p2, :cond_1

    .line 152
    const-string v0, "write"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    :cond_1
    return-void
.end method

.method public setWriteAccess(Lcn/bmob/v3/BmobUser;Z)V
    .locals 2
    .param p1, "user"    # Lcn/bmob/v3/BmobUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    if-eqz p2, :cond_2

    .line 107
    const-string v0, "write"

    invoke-virtual {p1}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    :cond_2
    return-void
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-eqz p2, :cond_1

    .line 90
    const-string v0, "write"

    invoke-direct {p0, v0, p1, p2}, Lcn/bmob/v3/BmobACL;->Code(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    :cond_1
    return-void
.end method
