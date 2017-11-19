.class Lcom/shishicai/app/fragment/Prediction$MyHandler;
.super Landroid/os/Handler;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/fragment/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field adapter:Lcom/shishicai/app/activity/adapter/MyAdapter;

.field final synthetic this$0:Lcom/shishicai/app/fragment/Prediction;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/fragment/Prediction;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/fragment/Prediction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p2, "x1"    # Lcom/shishicai/app/fragment/Prediction$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/shishicai/app/fragment/Prediction$MyHandler;-><init>(Lcom/shishicai/app/fragment/Prediction;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 122
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$100(Lcom/shishicai/app/fragment/Prediction;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Prediction;->access$000(Lcom/shishicai/app/fragment/Prediction;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$200(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Landroid/widget/ImageView;

    .line 129
    .local v2, "img":[Landroid/widget/ImageView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$300(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 130
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$400()Lcom/shishicai/app/activity/MainActivity;

    move-result-object v5

    const v6, 0x7f030010

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 131
    .local v4, "view1":Landroid/view/View;
    const v5, 0x7f09004c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v2, v1

    .line 132
    invoke-static {}, Lcom/shishicai/app/utils/ImageLoaderUtils;->getInstance()Lcom/shishicai/app/utils/ImageLoaderUtils;

    move-result-object v6

    aget-object v7, v2, v1

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$300(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/shishicai/app/utils/ImageLoaderUtils;->setImageNetResource(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$500(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v4    # "view1":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$602(Lcom/shishicai/app/fragment/Prediction;Ljava/util/List;)Ljava/util/List;

    .line 137
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$500(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 138
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$400()Lcom/shishicai/app/activity/MainActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030038

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 139
    .local v3, "indicator":Landroid/view/View;
    const v5, 0x7f0900b7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 140
    .local v0, "dot":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$702(Lcom/shishicai/app/fragment/Prediction;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$700(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$600(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    .end local v0    # "dot":Landroid/widget/ImageView;
    .end local v3    # "indicator":Landroid/view/View;
    :cond_1
    new-instance v5, Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$400()Lcom/shishicai/app/activity/MainActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v7}, Lcom/shishicai/app/fragment/Prediction;->access$500(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v8}, Lcom/shishicai/app/fragment/Prediction;->access$200(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v9}, Lcom/shishicai/app/fragment/Prediction;->access$900(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/shishicai/app/activity/adapter/MyAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->adapter:Lcom/shishicai/app/activity/adapter/MyAdapter;

    .line 148
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$100(Lcom/shishicai/app/fragment/Prediction;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->adapter:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 150
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$100(Lcom/shishicai/app/fragment/Prediction;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 153
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    new-instance v6, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;

    iget-object v7, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v7}, Lcom/shishicai/app/fragment/Prediction;->access$600(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v8}, Lcom/shishicai/app/fragment/Prediction;->access$000(Lcom/shishicai/app/fragment/Prediction;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;-><init>(Ljava/util/List;I)V

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$1002(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/activity/adapter/MyPageChangeListener;)Lcom/shishicai/app/activity/adapter/MyPageChangeListener;

    .line 154
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$100(Lcom/shishicai/app/fragment/Prediction;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Prediction;->access$1000(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/activity/adapter/MyPageChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 155
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$1102(Lcom/shishicai/app/fragment/Prediction;Z)Z

    .line 156
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$MyHandler;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$1200(Lcom/shishicai/app/fragment/Prediction;)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
