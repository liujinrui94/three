.class public Lcom/shishicai/app/activity/mine/MineRegister;
.super Landroid/app/Activity;
.source "MineRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private email:Ljava/lang/String;

.field private et_email:Landroid/widget/EditText;

.field private et_nickname:Landroid/widget/EditText;

.field private et_pwd:Landroid/widget/EditText;

.field private et_repwd:Landroid/widget/EditText;

.field private et_username:Landroid/widget/EditText;

.field private nickname:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneET:Landroid/widget/EditText;

.field private pwd:Ljava/lang/String;

.field private repwd:Ljava/lang/String;

.field private submit:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private normalRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "\u8bf7\u8f93\u5165\u7528\u6237\u540d\uff01"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 161
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineRegister;->pwd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff01"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineRegister;->repwd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const-string v2, "\u8bf7\u786e\u8ba4\u5bc6\u7801\uff01"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineRegister;->pwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    .line 102
    const-string v2, "\u5bc6\u7801\u4e0d\u80fd\u5c11\u4e8e6\u4e2a\u5b57\u7b26\uff01"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    const-string v2, "\u8bf7\u8f93\u5165\u90ae\u7bb1\uff01"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    :cond_5
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineRegister;->pwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineRegister;->repwd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 114
    const-string v2, "\u4e24\u6b21\u5bc6\u7801\u8f93\u5165\u4e0d\u4e00\u81f4\uff01"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 118
    :cond_6
    const-string v2, ""

    const-string v3, "\u6b63\u5728\u6ce8\u518c\uff0c\u8bf7\u7a0d\u7b49 \u2026"

    invoke-static {p0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 120
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 121
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 122
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "pwd"

    invoke-virtual {v1, v2, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "nick_name"

    invoke-virtual {v1, v2, p3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "email"

    invoke-virtual {v1, v2, p4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "phone"

    invoke-virtual {v1, v2, p5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "regist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/shishicai/app/Constant;->URLRegist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "regist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Pwd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",nick_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",email="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v2, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v3, Lcom/shishicai/app/activity/mine/MineRegister$1;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/shishicai/app/activity/mine/MineRegister$1;-><init>(Lcom/shishicai/app/activity/mine/MineRegister;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-static {v2, v1, v3}, Lcom/shishicai/app/service/HttpUser;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 66
    :sswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/mine/MineRegister;->finish()V

    goto :goto_0

    .line 70
    :sswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->username:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->nickname:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->pwd:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_repwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->repwd:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->email:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->phoneET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->phone:Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineRegister;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineRegister;->pwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineRegister;->nickname:Ljava/lang/String;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineRegister;->email:Ljava/lang/String;

    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineRegister;->phone:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/shishicai/app/activity/mine/MineRegister;->normalRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900f0 -> :sswitch_0
        0x7f090170 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->setContentView(I)V

    .line 47
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->title:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->title:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u518c\u7528\u6237"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->titleimgLeft:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    const v0, 0x7f09016b

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_username:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_nickname:Landroid/widget/EditText;

    .line 53
    const v0, 0x7f09016c

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_pwd:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f09016d

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_repwd:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f09016f

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->et_email:Landroid/widget/EditText;

    .line 56
    const v0, 0x7f090126

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->phoneET:Landroid/widget/EditText;

    .line 57
    const v0, 0x7f090170

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->submit:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineRegister;->submit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
