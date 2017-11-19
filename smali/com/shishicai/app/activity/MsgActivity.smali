.class public Lcom/shishicai/app/activity/MsgActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "MsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/shishicai/app/activity/adapter/MsgAdapter;

.field private listMsg:Landroid/widget/ListView;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/db/dao/MsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/MsgActivity;->finish()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f03005a

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/MsgActivity;->setContentView(I)V

    .line 32
    const-string v1, "MsgActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->TAG:Ljava/lang/String;

    .line 33
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/MsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->title:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u6d88\u606f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/MsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 36
    iget-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/MsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->listMsg:Landroid/widget/ListView;

    .line 40
    const-string v1, "time desc"

    invoke-static {v1}, Lorg/litepal/crud/DataSupport;->order(Ljava/lang/String;)Lorg/litepal/crud/ClusterQuery;

    move-result-object v1

    const-class v2, Lcom/shishicai/app/db/dao/MsgInfo;

    invoke-virtual {v1, v2}, Lorg/litepal/crud/ClusterQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->mInfos:Ljava/util/List;

    .line 41
    iget-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->mInfos:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->mInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->mInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/db/dao/MsgInfo;

    .line 44
    .local v0, "info":Lcom/shishicai/app/db/dao/MsgInfo;
    iget-object v2, p0, Lcom/shishicai/app/activity/MsgActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shishicai/app/db/dao/MsgInfo;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shishicai/app/db/dao/MsgInfo;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shishicai/app/db/dao/MsgInfo;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0    # "info":Lcom/shishicai/app/db/dao/MsgInfo;
    :cond_0
    new-instance v1, Lcom/shishicai/app/activity/adapter/MsgAdapter;

    iget-object v2, p0, Lcom/shishicai/app/activity/MsgActivity;->mInfos:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/shishicai/app/activity/adapter/MsgAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->adapter:Lcom/shishicai/app/activity/adapter/MsgAdapter;

    .line 47
    iget-object v1, p0, Lcom/shishicai/app/activity/MsgActivity;->listMsg:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shishicai/app/activity/MsgActivity;->adapter:Lcom/shishicai/app/activity/adapter/MsgAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    :cond_1
    return-void
.end method
