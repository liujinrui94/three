.class public Lcom/shishicai/app/activity/mine/MineCollection;
.super Landroid/app/Activity;
.source "MineCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineCollection$MyClickListener;,
        Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;,
        Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;
    }
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "read"

.field private static final TAB2:Ljava/lang/String; = "activity"

.field private static final TAB3:Ljava/lang/String; = "goods"

.field private static final TAG:Ljava/lang/String; = "com.soshow.hiyoga.MineCollection"


# instance fields
.field private article:Lcom/shishicai/app/domain/News;

.field public cursorWidth:I

.field private dialog:Landroid/app/ProgressDialog;

.field private goods:Lcom/shishicai/app/domain/Goods;

.field private handler:Landroid/os/Handler;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/Goods;",
            ">;"
        }
    .end annotation
.end field

.field private listactivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/News;",
            ">;"
        }
    .end annotation
.end field

.field private listarticle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/News;",
            ">;"
        }
    .end annotation
.end field

.field private lvactivity:Landroid/widget/ListView;

.field private lvarticle:Landroid/widget/ListView;

.field private lvgoods:Landroid/widget/ListView;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabSpec1:Landroid/widget/TabHost$TabSpec;

.field private mTabSpec2:Landroid/widget/TabHost$TabSpec;

.field private mTabSpec3:Landroid/widget/TabHost$TabSpec;

.field private myActivityAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

.field private myAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;

.field private myArticleAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

.field private tab:Landroid/widget/TabWidget;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lcom/shishicai/app/activity/mine/MineCollection$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MineCollection$1;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myArticleAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/News;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->article:Lcom/shishicai/app/domain/News;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/shishicai/app/activity/mine/MineCollection;Lcom/shishicai/app/domain/News;)Lcom/shishicai/app/domain/News;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;
    .param p1, "x1"    # Lcom/shishicai/app/domain/News;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->article:Lcom/shishicai/app/domain/News;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->listactivity:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myActivityAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabWidget;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->tab:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->goods:Lcom/shishicai/app/domain/Goods;

    return-object v0
.end method

.method static synthetic access$702(Lcom/shishicai/app/activity/mine/MineCollection;Lcom/shishicai/app/domain/Goods;)Lcom/shishicai/app/domain/Goods;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;
    .param p1, "x1"    # Lcom/shishicai/app/domain/Goods;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->goods:Lcom/shishicai/app/domain/Goods;

    return-object p1
.end method

.method static synthetic access$800(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->listarticle:Ljava/util/List;

    return-object v0
.end method

.method private createView(ILjava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "tabName"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    .line 306
    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 307
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-object v1
.end method

.method private gainActivityCollection()V
    .locals 5

    .prologue
    .line 257
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 258
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 261
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v2, "act"

    const-string v3, "collection_article_list"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "authkey"

    sget-object v3, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "is_act"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "com.soshow.hiyoga.MineCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?act=collection_article_list&authkey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v2, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v3, Lcom/shishicai/app/activity/mine/MineCollection$6;

    invoke-direct {v3, p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection$6;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;Landroid/os/Message;)V

    invoke-static {v2, v1, v3}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V

    .line 301
    .end local v1    # "params":Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 298
    :cond_0
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 299
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private gainArticleCollection()V
    .locals 5

    .prologue
    .line 199
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 203
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v2, "act"

    const-string v3, "collection_article_list"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "authkey"

    sget-object v3, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "is_act"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "com.soshow.hiyoga.MineCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?act=collection_article_list&authkey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v2, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v3, Lcom/shishicai/app/activity/mine/MineCollection$5;

    invoke-direct {v3, p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection$5;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;Landroid/os/Message;)V

    invoke-static {v2, v1, v3}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V

    .line 254
    .end local v1    # "params":Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 251
    :cond_0
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 252
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private gainCollection()V
    .locals 5

    .prologue
    .line 548
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 549
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 552
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v2, "act"

    const-string v3, "collection_goods_list"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "authkey"

    sget-object v3, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v2, "com.soshow.hiyoga.MineCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?act=collection_goodslist&authkey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v2, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v3, Lcom/shishicai/app/activity/mine/MineCollection$7;

    invoke-direct {v3, p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection$7;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;Landroid/os/Message;)V

    invoke-static {v2, v1, v3}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V

    .line 594
    .end local v1    # "params":Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 591
    :cond_0
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 592
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f030026

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection;->setContentView(I)V

    .line 101
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->title:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->title:Landroid/widget/TextView;

    const-string v1, "\u5173\u6ce8\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->titleimgLeft:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->tab:Landroid/widget/TabWidget;

    .line 106
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    .line 107
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 108
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "read"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    .line 109
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    const-string v1, "\u9605\u8bfb"

    invoke-direct {p0, v2, v1}, Lcom/shishicai/app/activity/mine/MineCollection;->createView(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 110
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 111
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    .line 112
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    const-string v1, "\u53c2\u4e0e"

    invoke-direct {p0, v2, v1}, Lcom/shishicai/app/activity/mine/MineCollection;->createView(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 113
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 114
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "goods"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec3:Landroid/widget/TabHost$TabSpec;

    .line 115
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec3:Landroid/widget/TabHost$TabSpec;

    const-string v1, "\u5546\u54c1"

    invoke-direct {p0, v2, v1}, Lcom/shishicai/app/activity/mine/MineCollection;->createView(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 116
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec3:Landroid/widget/TabHost$TabSpec;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 117
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 118
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 119
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabSpec3:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 120
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 121
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x40

    const/16 v2, 0xe0

    const/16 v3, 0xd0

    .line 122
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->mTabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineCollection$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineCollection$2;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineCollection$MyClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineCollection$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f090115

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->lvgoods:Landroid/widget/ListView;

    .line 149
    const v0, 0x7f090111

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->lvarticle:Landroid/widget/ListView;

    .line 150
    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/mine/MineCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->lvactivity:Landroid/widget/ListView;

    .line 151
    const-string v0, ""

    const-string v1, "\u4e0b\u8f7d\u6570\u636e\uff0c\u8bf7\u7a0d\u7b49 \u2026"

    invoke-static {p0, v0, v1, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->dialog:Landroid/app/ProgressDialog;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->list:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->listarticle:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->listactivity:Ljava/util/List;

    .line 155
    new-instance v0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;Lcom/shishicai/app/activity/mine/MineCollection$1;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;

    .line 156
    new-instance v0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->listarticle:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;Ljava/util/List;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myArticleAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    .line 157
    new-instance v0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->listactivity:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;Ljava/util/List;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myActivityAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    .line 158
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->lvgoods:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->lvarticle:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myArticleAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->lvactivity:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection;->myActivityAdapter:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->lvgoods:Landroid/widget/ListView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineCollection$3;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineCollection$3;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection;->lvarticle:Landroid/widget/ListView;

    new-instance v1, Lcom/shishicai/app/activity/mine/MineCollection$4;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/mine/MineCollection$4;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/shishicai/app/activity/mine/MineCollection;->gainCollection()V

    .line 193
    invoke-direct {p0}, Lcom/shishicai/app/activity/mine/MineCollection;->gainArticleCollection()V

    .line 194
    invoke-direct {p0}, Lcom/shishicai/app/activity/mine/MineCollection;->gainActivityCollection()V

    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 196
    return-void
.end method
