.class public Lcom/shishicai/app/activity/SuoShuiListActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "SuoShuiListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static final SUOSHUI_STR:Ljava/lang/String; = "SUOSHUI_STR"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method public static OnNewInstance(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 30
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SUOSHUI_STR"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 32
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    const-class v2, Lcom/shishicai/app/activity/SuoShuiListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/SuoShuiListActivity;->finish()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f03003d

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/SuoShuiListActivity;->setContentView(I)V

    .line 46
    const-string v1, "SuoShuiListActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity;->TAG:Ljava/lang/String;

    .line 47
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/SuoShuiListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity;->title:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/SuoShuiListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 49
    iget-object v1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object v1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u7f29\u6c34\u7ed3\u679c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/shishicai/app/activity/SuoShuiListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SUOSHUI_STR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .local v0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const v1, 0x7f0900c6

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/SuoShuiListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity;->mListView:Landroid/widget/ListView;

    .line 54
    iget-object v1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;

    invoke-direct {v2, p0, v0}, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;-><init>(Lcom/shishicai/app/activity/SuoShuiListActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    return-void
.end method
