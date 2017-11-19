.class public Lcn/bmob/v3/datatype/BmobDate;
.super Ljava/lang/Object;
.source "BmobDate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6b6926d089f9d15fL


# instance fields
.field private __type:Ljava/lang/String;

.field private iso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "Date"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobDate;->__type:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobDate;->iso:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static createBmobDate(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/datatype/BmobDate;
    .locals 3
    .param p0, "formatType"    # Ljava/lang/String;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 68
    new-instance v0, Lcn/bmob/v3/datatype/BmobDate;

    invoke-direct {v0, v2}, Lcn/bmob/v3/datatype/BmobDate;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTimeStamp(Ljava/lang/String;)J
    .locals 4
    .param p0, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    .line 49
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 55
    :goto_0
    return-wide v0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobDate;->iso:Ljava/lang/String;

    return-object v0
.end method
