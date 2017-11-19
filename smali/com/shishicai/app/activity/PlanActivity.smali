.class public Lcom/shishicai/app/activity/PlanActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "PlanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/PlanActivity$LoadTask;,
        Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;

.field private static task:Lcom/shishicai/app/activity/PlanActivity$LoadTask;


# instance fields
.field private inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private m_et2_line:Lcom/shishicai/app/ui/LineEditText;

.field private m_et3_line:Lcom/shishicai/app/ui/LineEditText;

.field private m_et_line:Lcom/shishicai/app/ui/LineEditText;

.field private m_listview_plan:Landroid/widget/ListView;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/PlanActivity;)Lcom/shishicai/app/ui/LineEditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PlanActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et_line:Lcom/shishicai/app/ui/LineEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/PlanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/PlanActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/shishicai/app/activity/PlanActivity;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/PlanActivity;)Lcom/shishicai/app/ui/LineEditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PlanActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et2_line:Lcom/shishicai/app/ui/LineEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/PlanActivity;)Lcom/shishicai/app/ui/LineEditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PlanActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et3_line:Lcom/shishicai/app/ui/LineEditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shishicai/app/activity/PlanActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PlanActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/shishicai/app/activity/PlanActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 262
    return-void
.end method

.method private setPlan(III)Ljava/util/ArrayList;
    .locals 8
    .param p1, "everyRateWin"    # I
    .param p2, "lowestWin"    # I
    .param p3, "chaseCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/PlanEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "planEntityArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/PlanEntity;>;"
    const/4 v4, 0x0

    .line 102
    .local v4, "sumCost":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 103
    add-int v6, p2, v4

    add-int/lit8 v7, p1, -0x2

    div-int/2addr v6, v7

    add-int/lit8 v3, v6, 0x1

    .line 104
    .local v3, "rate":I
    add-int v6, p2, v4

    add-int/lit8 v7, p1, -0x2

    rem-int/2addr v6, v7

    if-nez v6, :cond_0

    .line 105
    add-int/lit8 v3, v3, -0x1

    .line 107
    :cond_0
    mul-int v6, v3, p1

    sub-int/2addr v6, v4

    mul-int/lit8 v7, v3, 0x2

    sub-int v5, v6, v7

    .line 108
    .local v5, "win":I
    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v4, v6

    .line 110
    new-instance v1, Lcom/shishicai/app/domain/PlanEntity;

    invoke-direct {v1}, Lcom/shishicai/app/domain/PlanEntity;-><init>()V

    .line 111
    .local v1, "planEntity":Lcom/shishicai/app/domain/PlanEntity;
    add-int/lit8 v6, v0, 0x1

    iput v6, v1, Lcom/shishicai/app/domain/PlanEntity;->qs:I

    .line 112
    iput v3, v1, Lcom/shishicai/app/domain/PlanEntity;->rate:I

    .line 113
    mul-int/lit8 v6, v3, 0x2

    iput v6, v1, Lcom/shishicai/app/domain/PlanEntity;->bqtrate:I

    .line 114
    iput v4, v1, Lcom/shishicai/app/domain/PlanEntity;->sumCost:I

    .line 115
    iput v5, v1, Lcom/shishicai/app/domain/PlanEntity;->win:I

    .line 116
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "planEntity":Lcom/shishicai/app/domain/PlanEntity;
    .end local v3    # "rate":I
    .end local v5    # "win":I
    :cond_1
    return-object v2
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/LineEditText;->setCursorVisible(Z)V

    .line 254
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et2_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/LineEditText;->setCursorVisible(Z)V

    .line 255
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et3_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/LineEditText;->setCursorVisible(Z)V

    .line 256
    invoke-direct {p0}, Lcom/shishicai/app/activity/PlanActivity;->hideKeyboard()V

    .line 257
    sget-object v0, Lcom/shishicai/app/activity/PlanActivity;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/shishicai/app/activity/PlanActivity;->task:Lcom/shishicai/app/activity/PlanActivity$LoadTask;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x3b9aca00

    const/4 v10, 0x0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 185
    :sswitch_0
    invoke-direct {p0}, Lcom/shishicai/app/activity/PlanActivity;->hideKeyboard()V

    .line 186
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v9}, Lcom/shishicai/app/ui/LineEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "et1String":Ljava/lang/String;
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et2_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v9}, Lcom/shishicai/app/ui/LineEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "et2String":Ljava/lang/String;
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et3_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v9}, Lcom/shishicai/app/ui/LineEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "et3String":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 191
    const-string v9, "\u5355\u6ce8\u4e2d\u5956\u5956\u91d1\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v9}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 196
    const-string v9, "\u6700\u4f4e\u76c8\u5229\u91d1\u989d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v9}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 201
    const-string v9, "\u5355\u6ce8\u4e2d\u5956\u5956\u91d1\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v9}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 205
    .local v4, "everyRateWin":I
    if-le v4, v11, :cond_4

    .line 206
    const-string v9, "\u91d1\u989d\u592a\u5927\u4e86\u65e0\u6cd5\u8ba1\u7b97"

    invoke-static {p0, v9}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_4
    const/4 v9, 0x2

    if-gt v4, v9, :cond_5

    .line 210
    const-string v9, "\u91d1\u989d\u4e0d\u80fd\u4f4e\u4e8e\u6216\u7b49\u4e8e2"

    invoke-static {p0, v9}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 214
    .local v7, "lowestWin":I
    if-le v7, v11, :cond_6

    .line 215
    const-string v9, "\u91d1\u989d\u592a\u5927\u4e86\u65e0\u6cd5\u8ba1\u7b97"

    invoke-static {p0, v9}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 219
    .local v0, "chaseCount":I
    const/16 v9, 0x16d

    if-le v0, v9, :cond_7

    .line 220
    const-string v9, "\u671f\u6570\u4e0d\u80fd\u5927\u4e8e365"

    invoke-static {p0, v9}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_7
    invoke-direct {p0, v4, v7, v0}, Lcom/shishicai/app/activity/PlanActivity;->setPlan(III)Ljava/util/ArrayList;

    move-result-object v8

    .line 224
    .local v8, "planEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/PlanEntity;>;"
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "planEntities:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 227
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->m_listview_plan:Landroid/widget/ListView;

    new-instance v10, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;

    invoke-direct {v10, p0, v8}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;-><init>(Lcom/shishicai/app/activity/PlanActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "chaseCount":I
    .end local v1    # "et1String":Ljava/lang/String;
    .end local v2    # "et2String":Ljava/lang/String;
    .end local v3    # "et3String":Ljava/lang/String;
    .end local v4    # "everyRateWin":I
    .end local v7    # "lowestWin":I
    .end local v8    # "planEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/PlanEntity;>;"
    :sswitch_1
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "http://www.zjt-cp.com/html/whatIsZhuiHaoPlan.html?os=android&appVersion=6.2.1705&appName=Android_ssczs&visitFrom=outside"

    .line 235
    .local v6, "link":Ljava/lang/String;
    const-string v9, "link"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "link="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v9, "title"

    const-string v10, "\u8ffd\u53f7\u8ba1\u5212"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v5}, Lcom/shishicai/app/activity/PlanActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 242
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "link":Ljava/lang/String;
    :sswitch_2
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v9, v10}, Lcom/shishicai/app/ui/LineEditText;->setCursorVisible(Z)V

    .line 243
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et2_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v9, v10}, Lcom/shishicai/app/ui/LineEditText;->setCursorVisible(Z)V

    .line 244
    iget-object v9, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et3_line:Lcom/shishicai/app/ui/LineEditText;

    invoke-virtual {v9, v10}, Lcom/shishicai/app/ui/LineEditText;->setCursorVisible(Z)V

    .line 245
    invoke-direct {p0}, Lcom/shishicai/app/activity/PlanActivity;->hideKeyboard()V

    .line 246
    sget-object v9, Lcom/shishicai/app/activity/PlanActivity;->handler:Landroid/os/Handler;

    sget-object v10, Lcom/shishicai/app/activity/PlanActivity;->task:Lcom/shishicai/app/activity/PlanActivity$LoadTask;

    const-wide/16 v12, 0xc8

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 182
    :sswitch_data_0
    .sparse-switch
        0x7f090034 -> :sswitch_0
        0x7f090035 -> :sswitch_1
        0x7f0900f0 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->setContentView(I)V

    .line 47
    const-string v0, "PlanActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->TAG:Ljava/lang/String;

    .line 48
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->title:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u8ffd\u53f7\u8ba1\u5212"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/ui/LineEditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et_line:Lcom/shishicai/app/ui/LineEditText;

    .line 54
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/ui/LineEditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et2_line:Lcom/shishicai/app/ui/LineEditText;

    .line 55
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/ui/LineEditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et3_line:Lcom/shishicai/app/ui/LineEditText;

    .line 56
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_listview_plan:Landroid/widget/ListView;

    .line 57
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PlanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 61
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et_line:Lcom/shishicai/app/ui/LineEditText;

    new-instance v1, Lcom/shishicai/app/activity/PlanActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/PlanActivity$1;-><init>(Lcom/shishicai/app/activity/PlanActivity;)V

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/LineEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 72
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et2_line:Lcom/shishicai/app/ui/LineEditText;

    new-instance v1, Lcom/shishicai/app/activity/PlanActivity$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/PlanActivity$2;-><init>(Lcom/shishicai/app/activity/PlanActivity;)V

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/LineEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 83
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity;->m_et3_line:Lcom/shishicai/app/ui/LineEditText;

    new-instance v1, Lcom/shishicai/app/activity/PlanActivity$3;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/PlanActivity$3;-><init>(Lcom/shishicai/app/activity/PlanActivity;)V

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/LineEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 94
    new-instance v0, Lcom/shishicai/app/activity/PlanActivity$LoadTask;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/PlanActivity$LoadTask;-><init>(Lcom/shishicai/app/activity/PlanActivity;)V

    sput-object v0, Lcom/shishicai/app/activity/PlanActivity;->task:Lcom/shishicai/app/activity/PlanActivity$LoadTask;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/shishicai/app/activity/PlanActivity;->handler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/shishicai/app/utils/Base2Activity;->onDestroy()V

    .line 282
    sget-object v0, Lcom/shishicai/app/activity/PlanActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 283
    return-void
.end method
