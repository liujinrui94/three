.class public Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;
.super Ljava/lang/Object;
.source "AwardNewInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NextBean"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private delayinterval:I

.field private interval:I

.field private period:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayinterval()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->delayinterval:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->interval:I

    return v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->date:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setDelayinterval(I)V
    .locals 0
    .param p1, "delayinterval"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->delayinterval:I

    .line 187
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->interval:I

    .line 179
    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->period:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->time:Ljava/lang/String;

    .line 171
    return-void
.end method
