.class public Lcom/shishicai/app/activity/mine/MineActivity;
.super Landroid/app/Activity;
.source "MineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;
    }
.end annotation


# static fields
.field public static timeOut:J


# instance fields
.field private ckb_remember:Landroid/widget/CheckBox;

.field private dialog:Landroid/app/ProgressDialog;

.field private et_password:Landroid/widget/EditText;

.field private et_username:Landroid/widget/EditText;

.field private login:Landroid/widget/Button;

.field private password:Ljava/lang/String;

.field private register:Landroid/widget/Button;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private title:Landroid/widget/TextView;

.field private tv_forget:Landroid/widget/TextView;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MineActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shishicai/app/activity/mine/MineActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineActivity;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity;->et_username:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/mine/MineActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shishicai/app/activity/mine/MineActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineActivity;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity;->et_password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/activity/mine/MineActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineActivity;->dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/mine/MineActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/shishicai/app/activity/mine/MineActivity;->normalLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity;->ckb_remember:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private normalLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 114
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string v1, "Name"

    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "Pwd"

    invoke-virtual {v0, v1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",password="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v2, Lcom/shishicai/app/activity/mine/MineActivity$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/shishicai/app/activity/mine/MineActivity$1;-><init>(Lcom/shishicai/app/activity/mine/MineActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/shishicai/app/service/HttpUser;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v3, 0x7f030049

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineActivity;->setContentView(I)V

    .line 48
    const v3, 0x7f0900f1

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->title:Landroid/widget/TextView;

    .line 49
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->title:Landroid/widget/TextView;

    const-string v4, "\u767b\u5f55"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v3, 0x7f0900ff

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->login:Landroid/widget/Button;

    .line 51
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->login:Landroid/widget/Button;

    new-instance v4, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;

    invoke-direct {v4, p0}, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v3, 0x7f090102

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->register:Landroid/widget/Button;

    .line 53
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->register:Landroid/widget/Button;

    new-instance v4, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;

    invoke-direct {v4, p0}, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v3, 0x7f090100

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->ckb_remember:Landroid/widget/CheckBox;

    .line 55
    const v3, 0x7f090101

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->tv_forget:Landroid/widget/TextView;

    .line 56
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->tv_forget:Landroid/widget/TextView;

    new-instance v4, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;

    invoke-direct {v4, p0}, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v3, 0x7f0900fd

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->et_username:Landroid/widget/EditText;

    .line 58
    const v3, 0x7f0900fe

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/mine/MineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->et_password:Landroid/widget/EditText;

    .line 60
    const-string v3, "is_open"

    invoke-virtual {p0, v3, v5}, Lcom/shishicai/app/activity/mine/MineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "rememberPwd"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    .local v0, "isRemmeber":Z
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "username"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "password"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "password":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->ckb_remember:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->et_username:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->et_password:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineActivity;->ckb_remember:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
