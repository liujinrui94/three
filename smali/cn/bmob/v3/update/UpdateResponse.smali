.class public Lcn/bmob/v3/update/UpdateResponse;
.super Ljava/lang/Object;
.source "UpdateResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3fc3de830e5675bL


# instance fields
.field public exception:Lcn/bmob/v3/exception/BmobException;

.field public isforce:Ljava/lang/Boolean;

.field public path:Ljava/lang/String;

.field public path_md5:Ljava/lang/String;

.field public target_size:J

.field public updateLog:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public version_i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->version:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 70
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v0, p1, p2}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->exception:Lcn/bmob/v3/exception/BmobException;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcn/bmob/v3/update/AppVersion;)V
    .locals 2
    .param p1, "app"    # Lcn/bmob/v3/update/AppVersion;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->version:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 1082
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getUpdate_log()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 1083
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->version:Ljava/lang/String;

    .line 1084
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getVersion_i()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->version_i:Ljava/lang/Integer;

    .line 1085
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->version_i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1086
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->version_i:Ljava/lang/Integer;

    .line 1088
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getIsforce()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->isforce:Ljava/lang/Boolean;

    .line 1089
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->isforce:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1090
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->isforce:Ljava/lang/Boolean;

    .line 1092
    :cond_1
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getPath()Lcn/bmob/v3/datatype/BmobFile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1093
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getPath()Lcn/bmob/v3/datatype/BmobFile;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/datatype/BmobFile;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->path:Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->path:Ljava/lang/String;

    invoke-static {v0}, Lcn/bmob/v3/b/mine;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->path_md5:Ljava/lang/String;

    .line 1102
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getTarget_size()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/bmob/v3/update/UpdateResponse;->target_size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :goto_1
    return-void

    .line 1096
    :cond_3
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getAndroid_url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1097
    invoke-virtual {p1}, Lcn/bmob/v3/update/AppVersion;->getAndroid_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->path:Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->path:Ljava/lang/String;

    invoke-static {v0}, Lcn/bmob/v3/b/mine;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->path_md5:Ljava/lang/String;

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/bmob/v3/update/UpdateResponse;->target_size:J

    goto :goto_1
.end method

.method private Code(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 133
    const-string v1, ""

    .line 134
    const/4 v0, 0x0

    .line 135
    iget-object v2, p0, Lcn/bmob/v3/update/UpdateResponse;->updateLog:Ljava/lang/String;

    const-string v3, "\uff1b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->updateLog:Ljava/lang/String;

    const-string v1, "\uff1b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 137
    array-length v3, v2

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    add-int/lit8 v0, v3, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 140
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 141
    const-string v1, "%s %s\n%s\n\n%s"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 143
    const/4 v1, 0x1

    iget-object v5, p0, Lcn/bmob/v3/update/UpdateResponse;->version:Ljava/lang/String;

    aput-object v5, v0, v1

    .line 144
    const/4 v1, 0x2

    aput-object p5, v0, v1

    .line 145
    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 155
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 156
    add-int/lit8 v5, v3, -0x1

    if-eq v1, v5, :cond_2

    .line 157
    const-string v5, "\n%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    add-int v5, p1, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff1b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 155
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 147
    const-string v1, "%s %s\n%s %s%s\n\n%s"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 149
    const/4 v1, 0x1

    iget-object v5, p0, Lcn/bmob/v3/update/UpdateResponse;->version:Ljava/lang/String;

    aput-object v5, v0, v1

    .line 150
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 151
    const/4 v1, 0x3

    aput-object p7, v0, v1

    .line 152
    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 153
    const/4 v1, 0x5

    aput-object p4, v0, v1

    goto :goto_0

    .line 160
    :cond_2
    const-string v5, "\n%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int v5, p1, v1

    aget-object v6, v2, v1

    aput-object v6, v0, v5

    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    :cond_4
    :goto_3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_5
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    .line 167
    const-string v1, "%s %s\n%s\n\n%s\n%s\n"

    .line 168
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/bmob/v3/update/UpdateResponse;->version:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p5, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcn/bmob/v3/update/UpdateResponse;->updateLog:Ljava/lang/String;

    aput-object v3, v0, v2

    goto :goto_3

    .line 170
    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 171
    const-string v1, "%s %s\n%s %s%s\n\n%s\n%s\n"

    .line 172
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/bmob/v3/update/UpdateResponse;->version:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p7, v0, v2

    const/4 v2, 0x4

    aput-object p6, v0, v2

    const/4 v2, 0x5

    aput-object p4, v0, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcn/bmob/v3/update/UpdateResponse;->updateLog:Ljava/lang/String;

    aput-object v3, v0, v2

    goto :goto_3
.end method


# virtual methods
.method public getException()Lcn/bmob/v3/exception/BmobException;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateResponse;->exception:Lcn/bmob/v3/exception/BmobException;

    return-object v0
.end method

.method public getUpdateInfo(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 12
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "isDownloaded"    # Z

    .prologue
    .line 109
    invoke-static {p1}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v1, "BMNewVersion"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {p1}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v1, "BMTargetSize"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {p1}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v1, "BMUpdateContent"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {p1}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v1, "BMDialog_InstallAPK"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/b/of;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    if-eqz p2, :cond_0

    .line 118
    const/4 v1, 0x4

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcn/bmob/v3/update/UpdateResponse;->Code(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string v6, ""

    .line 122
    iget-wide v0, p0, Lcn/bmob/v3/update/UpdateResponse;->target_size:J

    .line 1293
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "#.00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1295
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_4

    .line 1296
    const-wide/16 v8, 0x400

    cmp-long v8, v0, v8

    if-gez v8, :cond_1

    .line 1297
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v0, v0

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    :goto_1
    const/4 v1, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcn/bmob/v3/update/UpdateResponse;->Code(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1298
    :cond_1
    const-wide/32 v8, 0x100000

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    .line 1299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v0, v0

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v10

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1300
    :cond_2
    const-wide/32 v8, 0x40000000

    cmp-long v8, v0, v8

    if-gez v8, :cond_3

    .line 1301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v0, v0

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v10

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1303
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v0, v0

    const-wide/high16 v10, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v10

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1306
    :cond_4
    const-string v7, "0B"

    goto :goto_1
.end method
