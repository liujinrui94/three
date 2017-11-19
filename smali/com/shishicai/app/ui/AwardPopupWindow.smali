.class public Lcom/shishicai/app/ui/AwardPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AwardPopupWindow.java"


# instance fields
.field private font1:Landroid/widget/LinearLayout;

.field private font10:Landroid/widget/LinearLayout;

.field private font2:Landroid/widget/LinearLayout;

.field private font3:Landroid/widget/LinearLayout;

.field private font4:Landroid/widget/LinearLayout;

.field private font5:Landroid/widget/LinearLayout;

.field private font6:Landroid/widget/LinearLayout;

.field private font7:Landroid/widget/LinearLayout;

.field private font8:Landroid/widget/LinearLayout;

.field private font9:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;I)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "itemsOnClick"    # Landroid/view/View$OnClickListener;
    .param p3, "length"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v2, "layout_inflater"

    .line 32
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, "mMenuView":Landroid/view/View;
    const v2, 0x7f090060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    .line 35
    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    .line 36
    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    .line 37
    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    .line 38
    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    .line 39
    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    .line 40
    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    .line 41
    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    .line 42
    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    .line 43
    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    .line 44
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/AwardPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/shishicai/app/ui/AwardPopupWindow;->setContentView(Landroid/view/View;)V

    .line 58
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/AwardPopupWindow;->setWidth(I)V

    .line 60
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/AwardPopupWindow;->setHeight(I)V

    .line 62
    invoke-virtual {p0, v6}, Lcom/shishicai/app/ui/AwardPopupWindow;->setFocusable(Z)V

    .line 64
    const/high16 v2, 0x7f0b0000

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/AwardPopupWindow;->setAnimationStyle(I)V

    .line 66
    new-instance v2, Lcom/shishicai/app/ui/AwardPopupWindow$1;

    invoke-direct {v2, p0, v1}, Lcom/shishicai/app/ui/AwardPopupWindow$1;-><init>(Lcom/shishicai/app/ui/AwardPopupWindow;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    if-ne p3, v6, :cond_1

    .line 85
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_2
    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_3
    const/4 v2, 0x4

    if-ne p3, v2, :cond_4

    .line 124
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 135
    :cond_4
    const/4 v2, 0x5

    if-ne p3, v2, :cond_5

    .line 137
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 148
    :cond_5
    const/4 v2, 0x6

    if-ne p3, v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 161
    :cond_6
    const/4 v2, 0x7

    if-ne p3, v2, :cond_7

    .line 163
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 174
    :cond_7
    if-ne p3, v5, :cond_8

    .line 176
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 187
    :cond_8
    const/16 v2, 0x9

    if-ne p3, v2, :cond_9

    .line 189
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 200
    :cond_9
    const/16 v2, 0xa

    if-ne p3, v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font6:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font8:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font9:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/shishicai/app/ui/AwardPopupWindow;->font10:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method
