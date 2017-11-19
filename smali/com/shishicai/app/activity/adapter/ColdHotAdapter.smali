.class public Lcom/shishicai/app/activity/adapter/ColdHotAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColdHotAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->list:Ljava/util/List;

    .line 21
    return-void
.end method

.method private getBackGround(I)I
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "res":I
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    return v0

    .line 68
    :pswitch_0
    const v0, 0x7f02000e

    .line 69
    goto :goto_0

    .line 71
    :pswitch_1
    const v0, 0x7f02000b

    .line 72
    goto :goto_0

    .line 74
    :pswitch_2
    const v0, 0x7f020010

    .line 75
    goto :goto_0

    .line 77
    :pswitch_3
    const v0, 0x7f02000f

    .line 78
    goto :goto_0

    .line 80
    :pswitch_4
    const v0, 0x7f020009

    .line 81
    goto :goto_0

    .line 83
    :pswitch_5
    const v0, 0x7f020008

    .line 84
    goto :goto_0

    .line 86
    :pswitch_6
    const v0, 0x7f02000d

    .line 87
    goto :goto_0

    .line 89
    :pswitch_7
    const v0, 0x7f02000c

    .line 90
    goto :goto_0

    .line 92
    :pswitch_8
    const v0, 0x7f020007

    .line 93
    goto :goto_0

    .line 95
    :pswitch_9
    const v0, 0x7f02000a

    .line 96
    goto :goto_0

    .line 98
    :pswitch_a
    const v0, 0x7f02000e

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;

    invoke-direct {v0, p0, v4}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/ColdHotAdapter;Lcom/shishicai/app/activity/adapter/ColdHotAdapter$1;)V

    .line 47
    .local v0, "holder":Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->context:Landroid/content/Context;

    const v3, 0x7f030025

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    const v2, 0x7f090085

    .line 50
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;->msgNum:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 56
    .local v1, "number":I
    iget-object v2, v0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;->msgNum:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, v0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;->msgNum:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->getBackGround(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 58
    return-object p2

    .line 53
    .end local v0    # "holder":Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;
    .end local v1    # "number":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;
    goto :goto_0
.end method
