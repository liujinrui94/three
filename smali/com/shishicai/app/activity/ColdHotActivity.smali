.class public Lcom/shishicai/app/activity/ColdHotActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "ColdHotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

.field private coldGv:Landroid/widget/GridView;

.field private coldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

.field private hotGv:Landroid/widget/GridView;

.field private hotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/shishicai/app/domain/ColdHotBean;

.field private linear:Landroid/widget/LinearLayout;

.field private msgLayout:Landroid/widget/LinearLayout;

.field private tab_1:Landroid/widget/LinearLayout;

.field private tab_10:Landroid/widget/LinearLayout;

.field private tab_2:Landroid/widget/LinearLayout;

.field private tab_3:Landroid/widget/LinearLayout;

.field private tab_4:Landroid/widget/LinearLayout;

.field private tab_5:Landroid/widget/LinearLayout;

.field private tab_6:Landroid/widget/LinearLayout;

.field private tab_7:Landroid/widget/LinearLayout;

.field private tab_8:Landroid/widget/LinearLayout;

.field private tab_9:Landroid/widget/LinearLayout;

.field private title:Landroid/widget/TextView;

.field private warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

.field private warmGv:Landroid/widget/GridView;

.field private warmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/activity/adapter/ColdHotAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/activity/adapter/ColdHotAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/domain/ColdHotBean;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/activity/ColdHotActivity;Lcom/shishicai/app/domain/ColdHotBean;)Lcom/shishicai/app/domain/ColdHotBean;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;
    .param p1, "x1"    # Lcom/shishicai/app/domain/ColdHotBean;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/activity/adapter/ColdHotAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    return-object v0
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shishicai/app/Constant;->COLD_HOT_ANALYSIS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ball="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/shishicai/app/activity/ColdHotActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/ColdHotActivity$1;-><init>(Lcom/shishicai/app/activity/ColdHotActivity;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 143
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 527
    :goto_0
    return-void

    .line 149
    :sswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 150
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 151
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 152
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 153
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 154
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 155
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 156
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 157
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 158
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 159
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getHot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getWarm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getCold()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 177
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 178
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 180
    :cond_3
    const-string v0, "\u8bf7\u7b49\u5f85\u6570\u636e\u52a0\u8f7d\u5b8c\u6210!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 198
    :sswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 199
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 200
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 201
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 202
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 203
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 204
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 205
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 206
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 208
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 210
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    :cond_6
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getHot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getWarm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getCold()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 226
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 227
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 229
    :cond_7
    const-string v0, "\u8bf7\u7b49\u5f85\u6570\u636e\u52a0\u8f7d\u5b8c\u6210!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 247
    :sswitch_2
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 248
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 249
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 250
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 251
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 252
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 253
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 254
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 255
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 256
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 257
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_b

    .line 259
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 261
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    :cond_8
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    :cond_9
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 269
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    :cond_a
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getHot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getWarm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getCold()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 275
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 276
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 278
    :cond_b
    const-string v0, "\u8bf7\u7b49\u5f85\u6570\u636e\u52a0\u8f7d\u5b8c\u6210!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 296
    :sswitch_3
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 297
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 298
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 299
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 300
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 301
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 302
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 303
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 304
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 305
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 306
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_f

    .line 308
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 310
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    :cond_c
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 314
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    :cond_d
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 318
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    :cond_e
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getHot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getWarm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getCold()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 324
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 325
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 327
    :cond_f
    const-string v0, "\u8bf7\u7b49\u5f85\u6570\u636e\u52a0\u8f7d\u5b8c\u6210!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 345
    :sswitch_4
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 346
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 347
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 348
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 349
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 350
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 351
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 352
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 353
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 354
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 355
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_13

    .line 357
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 359
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    :cond_10
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 363
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    :cond_11
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 367
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    :cond_12
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getHot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getWarm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->info:Lcom/shishicai/app/domain/ColdHotBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getCold()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 373
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 374
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 376
    :cond_13
    const-string v0, "\u8bf7\u7b49\u5f85\u6570\u636e\u52a0\u8f7d\u5b8c\u6210!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 394
    :sswitch_5
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 395
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 396
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 397
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 398
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 399
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 400
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 401
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 402
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 403
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 405
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 407
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 409
    :cond_14
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 411
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    :cond_15
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 415
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 417
    :cond_16
    invoke-direct {p0}, Lcom/shishicai/app/activity/ColdHotActivity;->gainData()V

    goto/16 :goto_0

    .line 420
    :sswitch_6
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 421
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 422
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 423
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 424
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 425
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 426
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 427
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 428
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 429
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 431
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 433
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 435
    :cond_17
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 437
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 439
    :cond_18
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 441
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    :cond_19
    invoke-direct {p0}, Lcom/shishicai/app/activity/ColdHotActivity;->gainData()V

    goto/16 :goto_0

    .line 446
    :sswitch_7
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 447
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 448
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 449
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 450
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 451
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 452
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 453
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 454
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 455
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 457
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 459
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    :cond_1a
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 463
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 465
    :cond_1b
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 467
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 469
    :cond_1c
    invoke-direct {p0}, Lcom/shishicai/app/activity/ColdHotActivity;->gainData()V

    goto/16 :goto_0

    .line 472
    :sswitch_8
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 473
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 474
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 475
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 476
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 477
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 478
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 479
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 480
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 481
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 483
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 485
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 487
    :cond_1d
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 489
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 491
    :cond_1e
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 493
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 495
    :cond_1f
    invoke-direct {p0}, Lcom/shishicai/app/activity/ColdHotActivity;->gainData()V

    goto/16 :goto_0

    .line 498
    :sswitch_9
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 499
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 500
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 501
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 502
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 503
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 504
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 505
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 506
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 507
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 509
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 511
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 513
    :cond_20
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 515
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 517
    :cond_21
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 519
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 521
    :cond_22
    invoke-direct {p0}, Lcom/shishicai/app/activity/ColdHotActivity;->gainData()V

    goto/16 :goto_0

    .line 524
    :sswitch_a
    invoke-virtual {p0}, Lcom/shishicai/app/activity/ColdHotActivity;->finish()V

    goto/16 :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090015 -> :sswitch_1
        0x7f090016 -> :sswitch_2
        0x7f090017 -> :sswitch_3
        0x7f090018 -> :sswitch_4
        0x7f090019 -> :sswitch_5
        0x7f09001a -> :sswitch_6
        0x7f09001b -> :sswitch_7
        0x7f09001c -> :sswitch_8
        0x7f09001d -> :sswitch_9
        0x7f0900f0 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/ColdHotActivity;->requestWindowFeature(I)Z

    .line 46
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->setContentView(I)V

    .line 47
    const-string v1, "ColdHotActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->TAG:Ljava/lang/String;

    .line 49
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->title:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .local v0, "titleimgLeft":Landroid/widget/ImageView;
    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u51b7\u70ed\u5206\u6790"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    .line 55
    const v1, 0x7f090015

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    .line 56
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    .line 57
    const v1, 0x7f090017

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    .line 58
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    .line 59
    const v1, 0x7f090019

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    .line 60
    const v1, 0x7f09001a

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    .line 61
    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    .line 62
    const v1, 0x7f09001c

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    .line 63
    const v1, 0x7f09001d

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    .line 64
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f090021

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->msgLayout:Landroid/widget/LinearLayout;

    .line 75
    const v1, 0x7f090025

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->linear:Landroid/widget/LinearLayout;

    .line 76
    const v1, 0x7f090022

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotGv:Landroid/widget/GridView;

    .line 77
    const v1, 0x7f090023

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmGv:Landroid/widget/GridView;

    .line 78
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ColdHotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldGv:Landroid/widget/GridView;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    .line 82
    new-instance v1, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    .line 83
    new-instance v1, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    .line 84
    new-instance v1, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    .line 85
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotGv:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity;->hotAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmGv:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity;->warmAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldGv:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity;->coldAdapter:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 89
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/shishicai/app/activity/ColdHotActivity;->linear:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    invoke-direct {p0}, Lcom/shishicai/app/activity/ColdHotActivity;->gainData()V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 532
    invoke-super {p0}, Lcom/shishicai/app/utils/Base2Activity;->onDestroy()V

    .line 533
    invoke-static {p0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 534
    return-void
.end method
