.class Lcom/shishicai/app/fragment/AwardCategory$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "AwardCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/AwardCategory;->gainData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/AwardCategory;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/AwardCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardCategory;->access$000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardCategory;->access$700(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardCategory;->access$800(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0, v3}, Lcom/shishicai/app/fragment/AwardCategory;->access$902(Lcom/shishicai/app/fragment/AwardCategory;Z)Z

    .line 293
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardCategory;->access$400(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/MainActivity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 9
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 298
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4, v7}, Lcom/shishicai/app/fragment/AwardCategory;->access$902(Lcom/shishicai/app/fragment/AwardCategory;Z)Z

    .line 299
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    .line 300
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v2, 0x0

    .line 303
    .local v2, "info":Lcom/shishicai/app/domain/PKshiInfo;
    :try_start_0
    const-class v4, Lcom/shishicai/app/domain/PKshiInfo;

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/shishicai/app/domain/PKshiInfo;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    if-eqz v2, :cond_1

    .line 309
    invoke-virtual {v2}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 310
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$1000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$700(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$800(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$1100(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->notifyDataSetChanged()V

    .line 324
    :goto_1
    return-void

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$700(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$800(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$400(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/MainActivity;

    move-result-object v4

    const-string v5, "\u6682\u65e0\u6570\u636e!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 320
    :cond_1
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$700(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$800(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory$2;->this$0:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-static {v4}, Lcom/shishicai/app/fragment/AwardCategory;->access$400(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/MainActivity;

    move-result-object v4

    const-string v5, "\u6682\u65e0\u6570\u636e!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
