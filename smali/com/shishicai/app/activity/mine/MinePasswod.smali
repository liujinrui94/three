.class public Lcom/shishicai/app/activity/mine/MinePasswod;
.super Landroid/app/Activity;
.source "MinePasswod.java"


# static fields
.field public static isChange:Z


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private etNewpwd:Landroid/widget/EditText;

.field private etOldpwd:Landroid/widget/EditText;

.field private etRenewpwd:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private newpwd:Ljava/lang/String;

.field private oldpwd:Ljava/lang/String;

.field private renewpwd:Ljava/lang/String;

.field private submit:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shishicai/app/activity/mine/MinePasswod;->isChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/shishicai/app/activity/mine/MinePasswod$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MinePasswod$1;-><init>(Lcom/shishicai/app/activity/mine/MinePasswod;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->etOldpwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->etNewpwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->etRenewpwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->oldpwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shishicai/app/activity/mine/MinePasswod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->oldpwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->newpwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/activity/mine/MinePasswod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->newpwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->renewpwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shishicai/app/activity/mine/MinePasswod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->renewpwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/shishicai/app/activity/mine/MinePasswod;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->setContentView(I)V

    .line 64
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->title:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->title:Landroid/widget/TextView;

    const-string v1, "\u5bc6\u7801\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->titleimgLeft:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MinePasswod$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MinePasswod$2;-><init>(Lcom/shishicai/app/activity/mine/MinePasswod;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f090167

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->etOldpwd:Landroid/widget/EditText;

    .line 76
    const v0, 0x7f090168

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->etNewpwd:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f090169

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->etRenewpwd:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f09016a

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->submit:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod;->submit:Landroid/widget/Button;

    new-instance v1, Lcom/shishicai/app/activity/mine/MinePasswod$3;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MinePasswod$3;-><init>(Lcom/shishicai/app/activity/mine/MinePasswod;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method
