.class public Lcom/shishicai/app/fragment/Chat;
.super Landroid/support/v4/app/Fragment;
.source "Chat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapter:Lcom/shishicai/app/activity/adapter/TextAdapter;

.field private chat:Landroid/view/View;

.field private content_str:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/ListData;",
            ">;"
        }
    .end annotation
.end field

.field private lv:Landroid/widget/ListView;

.field private send_btn:Landroid/widget/Button;

.field private sendtext:Landroid/widget/EditText;

.field private welcomeArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const-string v0, "Chat"

    iput-object v0, p0, Lcom/shishicai/app/fragment/Chat;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/fragment/Chat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Chat;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/fragment/Chat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/fragment/Chat;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Chat;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/fragment/Chat;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/fragment/Chat;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Chat;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/fragment/Chat;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/fragment/Chat;)Lcom/shishicai/app/activity/adapter/TextAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Chat;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/fragment/Chat;->adapter:Lcom/shishicai/app/activity/adapter/TextAdapter;

    return-object v0
.end method

.method private gainData(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shishicai/app/Constant;->TULING_ROBOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/shishicai/app/Constant;->TULING_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/fragment/Chat;->TAG:Ljava/lang/String;

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

    .line 71
    new-instance v1, Lcom/shishicai/app/fragment/Chat$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/fragment/Chat$1;-><init>(Lcom/shishicai/app/fragment/Chat;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 97
    return-void
.end method

.method private getRandomWelcomeTips()Ljava/lang/String;
    .locals 6

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/shishicai/app/fragment/Chat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shishicai/app/fragment/Chat;->welcomeArray:[Ljava/lang/String;

    .line 148
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->welcomeArray:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 149
    .local v0, "index":I
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->welcomeArray:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 150
    .local v1, "welcome_tipe":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    iput-object p1, p0, Lcom/shishicai/app/fragment/Chat;->context:Landroid/app/Activity;

    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->sendtext:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shishicai/app/fragment/Chat;->content_str:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->sendtext:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->content_str:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->content_str:Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "dropk":Ljava/lang/String;
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .end local v1    # "dropk":Ljava/lang/String;
    .local v0, "droph":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    .line 131
    .local v3, "listdata":Lcom/shishicai/app/domain/ListData;
    new-instance v3, Lcom/shishicai/app/domain/ListData;

    .end local v3    # "listdata":Lcom/shishicai/app/domain/ListData;
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->content_str:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/shishicai/app/domain/ListData;-><init>(Ljava/lang/String;I)V

    .line 132
    .restart local v3    # "listdata":Lcom/shishicai/app/domain/ListData;
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_1

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->list:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    .end local v0    # "droph":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "listdata":Lcom/shishicai/app/domain/ListData;
    :cond_0
    const-string v0, ""

    .line 128
    .restart local v0    # "droph":Ljava/lang/String;
    const-string v4, ""

    iput-object v4, p0, Lcom/shishicai/app/fragment/Chat;->content_str:Ljava/lang/String;

    goto :goto_1

    .line 138
    .restart local v3    # "listdata":Lcom/shishicai/app/domain/ListData;
    :cond_1
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->adapter:Lcom/shishicai/app/activity/adapter/TextAdapter;

    invoke-virtual {v4}, Lcom/shishicai/app/activity/adapter/TextAdapter;->notifyDataSetChanged()V

    .line 139
    invoke-direct {p0, v0}, Lcom/shishicai/app/fragment/Chat;->gainData(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x7f090082
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->chat:Landroid/view/View;

    if-nez v2, :cond_0

    .line 47
    const v2, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/shishicai/app/fragment/Chat;->chat:Landroid/view/View;

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->chat:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 51
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 53
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->chat:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/fragment/Chat;->list:Ljava/util/List;

    .line 56
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->chat:Landroid/view/View;

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Chat;->lv:Landroid/widget/ListView;

    .line 57
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->chat:Landroid/view/View;

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Chat;->send_btn:Landroid/widget/Button;

    .line 58
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->chat:Landroid/view/View;

    const v3, 0x7f090081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Chat;->sendtext:Landroid/widget/EditText;

    .line 59
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->send_btn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v2, Lcom/shishicai/app/activity/adapter/TextAdapter;

    iget-object v3, p0, Lcom/shishicai/app/fragment/Chat;->list:Ljava/util/List;

    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat;->context:Landroid/app/Activity;

    invoke-direct {v2, v3, v4}, Lcom/shishicai/app/activity/adapter/TextAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/shishicai/app/fragment/Chat;->adapter:Lcom/shishicai/app/activity/adapter/TextAdapter;

    .line 61
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->lv:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/shishicai/app/fragment/Chat;->adapter:Lcom/shishicai/app/activity/adapter/TextAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "listData":Lcom/shishicai/app/domain/ListData;
    new-instance v0, Lcom/shishicai/app/domain/ListData;

    .end local v0    # "listData":Lcom/shishicai/app/domain/ListData;
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Chat;->getRandomWelcomeTips()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/shishicai/app/domain/ListData;-><init>(Ljava/lang/String;I)V

    .line 64
    .restart local v0    # "listData":Lcom/shishicai/app/domain/ListData;
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/shishicai/app/fragment/Chat;->chat:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/shishicai/app/fragment/Chat;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 113
    return-void
.end method
