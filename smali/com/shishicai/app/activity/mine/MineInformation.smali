.class public Lcom/shishicai/app/activity/mine/MineInformation;
.super Landroid/app/Activity;
.source "MineInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineInformation$MyNotClickListener;,
        Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;
    }
.end annotation


# static fields
.field private static final DATE_ID:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private birthday:Landroid/widget/TextView;

.field private birthdayDay:Ljava/lang/String;

.field private birthdayMonth:Ljava/lang/String;

.field private birthdayYear:Ljava/lang/String;

.field private cancel:Landroid/widget/TextView;

.field private email:Landroid/widget/TextView;

.field private emailStr:Ljava/lang/String;

.field private finish:Landroid/widget/TextView;

.field private gender:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private img:Landroid/widget/ImageView;

.field private img1:Landroid/widget/ImageView;

.field private img2:Landroid/widget/ImageView;

.field private img3:Landroid/widget/ImageView;

.field private nickname:Landroid/widget/TextView;

.field private nicknamestr:Ljava/lang/String;

.field onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private rBirthday:Landroid/widget/RelativeLayout;

.field private rEmail:Landroid/widget/RelativeLayout;

.field private rGender:Landroid/widget/RelativeLayout;

.field private rNickname:Landroid/widget/RelativeLayout;

.field private rightImg:Landroid/widget/ImageView;

.field private sex:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, "MineInformation"

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/shishicai/app/activity/mine/MineInformation$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MineInformation$1;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->handler:Landroid/os/Handler;

    .line 267
    new-instance v0, Lcom/shishicai/app/activity/mine/MineInformation$6;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MineInformation$6;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rightImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->titleimgLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rBirthday:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rEmail:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->birthday:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->gender:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->emailStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation;->emailStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->email:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->nicknamestr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation;->nicknamestr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->nickname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->birthdayYear:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation;->birthdayYear:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->finish:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->birthdayMonth:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation;->birthdayMonth:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->birthdayDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation;->birthdayDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/shishicai/app/activity/mine/MineInformation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->sex:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/shishicai/app/activity/mine/MineInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation;->sex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->cancel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rNickname:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rGender:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 280
    packed-switch p2, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 282
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 283
    .local v0, "bl":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation;->nickname:Landroid/widget/TextView;

    const-string v3, "nickname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 286
    .end local v0    # "bl":Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 287
    .local v1, "bl1":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation;->email:Landroid/widget/TextView;

    const-string v3, "email"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x4

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->setContentView(I)V

    .line 90
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->title:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->title:Landroid/widget/TextView;

    const-string v1, "\u4e2a\u4eba\u8d44\u6599"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->titleimgLeft:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->finish:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f09019d

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->cancel:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f09012b

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f09012e

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img1:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img2:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img3:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f0900f3

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rightImg:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineInformation$2;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$3;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineInformation$3;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->finish:Landroid/widget/TextView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$4;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineInformation$4;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$5;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineInformation$5;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rNickname:Landroid/widget/RelativeLayout;

    .line 199
    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rGender:Landroid/widget/RelativeLayout;

    .line 200
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rBirthday:Landroid/widget/RelativeLayout;

    .line 201
    const v0, 0x7f090133

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->rEmail:Landroid/widget/RelativeLayout;

    .line 202
    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->nickname:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->birthday:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->gender:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->email:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation;->img3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 261
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation;->onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/16 v3, 0x7c6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
