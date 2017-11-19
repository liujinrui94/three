.class public Lcom/shishicai/app/activity/LuzhuActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "LuzhuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ""

    .local v1, "title":Ljava/lang/String;
    const-string v2, ""

    .line 41
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    .line 78
    const-string v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_0
    return-void

    .line 44
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/LuzhuDetailActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "\u9f99\u864e\u8def\u73e0"

    .line 46
    sget-object v2, Lcom/shishicai/app/Constant;->LONGHU_LUZHU:Ljava/lang/String;

    .line 47
    goto :goto_0

    .line 50
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/LuzhuDetailActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "\u603b\u548c\u8def\u73e0"

    .line 52
    sget-object v2, Lcom/shishicai/app/Constant;->SUM_LUZHU:Ljava/lang/String;

    .line 53
    goto :goto_0

    .line 56
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/LuzhuDetailActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "\u53f7\u7801\u8def\u73e0"

    .line 58
    sget-object v2, Lcom/shishicai/app/Constant;->CODE_LUZHU:Ljava/lang/String;

    .line 59
    goto :goto_0

    .line 62
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/LuzhuDetailActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "\u5927\u5c0f\u8def\u73e0"

    .line 64
    sget-object v2, Lcom/shishicai/app/Constant;->BIG_SMALL_LUZHU:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 67
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/shishicai/app/activity/LuzhuDetailActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "\u5355\u53cc\u8def\u73e0"

    .line 69
    sget-object v2, Lcom/shishicai/app/Constant;->ODD_EVEN_LUZHU:Ljava/lang/String;

    .line 70
    goto :goto_0

    .line 73
    :sswitch_5
    invoke-virtual {p0}, Lcom/shishicai/app/activity/LuzhuActivity;->finish()V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x7f09002a -> :sswitch_0
        0x7f09002b -> :sswitch_3
        0x7f09002c -> :sswitch_4
        0x7f09002d -> :sswitch_1
        0x7f09002e -> :sswitch_2
        0x7f0900f0 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->setContentView(I)V

    .line 24
    const-string v0, "LuzhuActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/LuzhuActivity;->TAG:Ljava/lang/String;

    .line 25
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/LuzhuActivity;->title:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u8def\u73e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/LuzhuActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/LuzhuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
