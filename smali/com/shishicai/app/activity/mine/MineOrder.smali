.class public Lcom/shishicai/app/activity/mine/MineOrder;
.super Landroid/app/Activity;
.source "MineOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;
    }
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "goodstype"

.field private static final TAB2:Ljava/lang/String; = "brandtype"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private goods:Lcom/shishicai/app/domain/Goods;

.field private handler:Landroid/os/Handler;

.field private listView:Landroid/widget/ListView;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabSpec1:Landroid/widget/TabHost$TabSpec;

.field private mTabSpec2:Landroid/widget/TabHost$TabSpec;

.field private myAdapter:Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;

.field private myGoods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/Goods;",
            ">;"
        }
    .end annotation
.end field

.field private myOrder:Lcom/shishicai/app/domain/MyOrder;

.field private myOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/MyOrder;",
            ">;"
        }
    .end annotation
.end field

.field private tab:Landroid/widget/TabWidget;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "com.soshow.hiyoga.MineOrder"

    sput-object v0, Lcom/shishicai/app/activity/mine/MineOrder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Lcom/shishicai/app/activity/mine/MineOrder$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MineOrder$1;-><init>(Lcom/shishicai/app/activity/mine/MineOrder;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myAdapter:Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->goods:Lcom/shishicai/app/domain/Goods;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/domain/Goods;)Lcom/shishicai/app/domain/Goods;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;
    .param p1, "x1"    # Lcom/shishicai/app/domain/Goods;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder;->goods:Lcom/shishicai/app/domain/Goods;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shishicai/app/activity/mine/MineOrder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myGoods:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shishicai/app/activity/mine/MineOrder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/shishicai/app/activity/mine/MineOrder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->titleimgLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shishicai/app/activity/mine/MineOrder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder;->titleimgLeft:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TabWidget;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->tab:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myOrder:Lcom/shishicai/app/domain/MyOrder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/domain/MyOrder;)Lcom/shishicai/app/domain/MyOrder;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;
    .param p1, "x1"    # Lcom/shishicai/app/domain/MyOrder;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myOrder:Lcom/shishicai/app/domain/MyOrder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/shishicai/app/activity/mine/MineOrder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myOrders:Ljava/util/List;

    return-object v0
.end method

.method private createView(ILjava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "tabName"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-object v1
.end method


# virtual methods
.method public gainOrder()V
    .locals 4

    .prologue
    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shishicai/app/Constant;->URLADV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 252
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string v2, "act"

    const-string v3, "order_list"

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "authkey"

    sget-object v3, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "page"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v2, Lcom/shishicai/app/activity/mine/MineOrder$5;

    invoke-direct {v2, p0}, Lcom/shishicai/app/activity/mine/MineOrder$5;-><init>(Lcom/shishicai/app/activity/mine/MineOrder;)V

    invoke-static {v1, v0, v2}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 309
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f030008

    const/4 v2, 0x1

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrder;->requestWindowFeature(I)Z

    .line 100
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineOrder;->setContentView(I)V

    .line 102
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->title:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->title:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u8ba2\u5355"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->titleimgLeft:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineOrder$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineOrder$2;-><init>(Lcom/shishicai/app/activity/mine/MineOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->tab:Landroid/widget/TabWidget;

    .line 113
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    .line 114
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 116
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "goodstype"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    .line 117
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    const-string v1, "\u672a\u5b8c\u6210"

    invoke-direct {p0, v3, v1}, Lcom/shishicai/app/activity/mine/MineOrder;->createView(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 119
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 121
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "brandtype"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    .line 122
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    const-string v1, "\u5df2\u5b8c\u6210"

    invoke-direct {p0, v3, v1}, Lcom/shishicai/app/activity/mine/MineOrder;->createView(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 123
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 125
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 126
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 128
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 129
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->mTabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineOrder$3;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineOrder$3;-><init>(Lcom/shishicai/app/activity/mine/MineOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myOrders:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myGoods:Ljava/util/List;

    .line 157
    const-string v0, ""

    const-string v1, "\u4e0b\u8f7d\u6570\u636e\uff0c\u8bf7\u7a0d\u7b49 \u2026"

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->dialog:Landroid/app/ProgressDialog;

    .line 158
    invoke-virtual {p0}, Lcom/shishicai/app/activity/mine/MineOrder;->gainOrder()V

    .line 159
    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->listView:Landroid/widget/ListView;

    .line 160
    new-instance v0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/activity/mine/MineOrder$1;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myAdapter:Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;

    .line 161
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder;->myAdapter:Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineOrder$4;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineOrder$4;-><init>(Lcom/shishicai/app/activity/mine/MineOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    return-void
.end method
