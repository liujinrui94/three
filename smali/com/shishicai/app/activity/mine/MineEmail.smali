.class public Lcom/shishicai/app/activity/mine/MineEmail;
.super Landroid/app/Activity;
.source "MineEmail.java"


# instance fields
.field private eEmail:Landroid/widget/EditText;

.field private email:Ljava/lang/String;

.field private submit:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MineEmail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineEmail;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shishicai/app/activity/mine/MineEmail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineEmail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineEmail;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MineEmail;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineEmail;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->eEmail:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineEmail;->setContentView(I)V

    .line 31
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->title:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->title:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91\u90ae\u7bb1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->tv:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->tv:Landroid/widget/TextView;

    const-string v1, "\u90ae\u7bb1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->titleimgLeft:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineEmail$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineEmail$1;-><init>(Lcom/shishicai/app/activity/mine/MineEmail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->eEmail:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->submit:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineEmail;->submit:Landroid/widget/Button;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineEmail$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineEmail$2;-><init>(Lcom/shishicai/app/activity/mine/MineEmail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
