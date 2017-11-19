.class public Lcom/shishicai/app/activity/mine/MineBonus;
.super Landroid/app/Activity;
.source "MineBonus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;,
        Lcom/shishicai/app/activity/mine/MineBonus$MyClickListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private bonus:Lcom/shishicai/app/domain/Bonus;

.field private handler:Landroid/os/Handler;

.field private linear:Landroid/widget/LinearLayout;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/Bonus;",
            ">;"
        }
    .end annotation
.end field

.field private lvCoupon:Landroid/widget/ListView;

.field private myAdapter:Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "MineCoupon"

    sput-object v0, Lcom/shishicai/app/activity/mine/MineBonus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->list:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/shishicai/app/activity/mine/MineBonus$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MineBonus$1;-><init>(Lcom/shishicai/app/activity/mine/MineBonus;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MineBonus;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->myAdapter:Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/mine/MineBonus;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/domain/Bonus;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->bonus:Lcom/shishicai/app/domain/Bonus;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/activity/mine/MineBonus;Lcom/shishicai/app/domain/Bonus;)Lcom/shishicai/app/domain/Bonus;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineBonus;
    .param p1, "x1"    # Lcom/shishicai/app/domain/Bonus;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineBonus;->bonus:Lcom/shishicai/app/domain/Bonus;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/mine/MineBonus;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public gainData()V
    .locals 2

    .prologue
    .line 146
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?act=bonus&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/mine/MineBonus$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineBonus$2;-><init>(Lcom/shishicai/app/activity/mine/MineBonus;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineBonus;->setContentView(I)V

    .line 65
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineBonus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->title:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->title:Landroid/widget/TextView;

    const-string v1, "\u4f18\u60e0\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineBonus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->titleimgLeft:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineBonus$MyClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineBonus$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineBonus;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/shishicai/app/activity/mine/MineBonus;->gainData()V

    .line 72
    const v0, 0x7f09010d

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineBonus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->linear:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineBonus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->lvCoupon:Landroid/widget/ListView;

    .line 75
    new-instance v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineBonus;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->myAdapter:Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;

    .line 76
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus;->lvCoupon:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineBonus;->myAdapter:Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method
