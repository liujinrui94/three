.class public Lcom/shishicai/app/activity/mine/MineFindPassword;
.super Landroid/app/Activity;
.source "MineFindPassword.java"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private email:Ljava/lang/String;

.field private et_email:Landroid/widget/EditText;

.field private et_username:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private submit:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/shishicai/app/activity/mine/MineFindPassword$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MineFindPassword$1;-><init>(Lcom/shishicai/app/activity/mine/MineFindPassword;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->et_username:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->et_email:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/mine/MineFindPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shishicai/app/activity/mine/MineFindPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/mine/MineFindPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shishicai/app/activity/mine/MineFindPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/activity/mine/MineFindPassword;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->setContentView(I)V

    .line 60
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->title:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->title:Landroid/widget/TextView;

    const-string v1, "\u627e\u56de\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->titleimgLeft:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineFindPassword$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineFindPassword$2;-><init>(Lcom/shishicai/app/activity/mine/MineFindPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->et_username:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->et_email:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->submit:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword;->submit:Landroid/widget/Button;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineFindPassword$3;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineFindPassword$3;-><init>(Lcom/shishicai/app/activity/mine/MineFindPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method
