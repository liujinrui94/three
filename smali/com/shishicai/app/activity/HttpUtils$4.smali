.class Lcom/shishicai/app/activity/HttpUtils$4;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/HttpUtils;->onSuccess(Lcom/shishicai/app/activity/HttpUtils$HttpCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/HttpUtils;

.field final synthetic val$callback:Lcom/shishicai/app/activity/HttpUtils$HttpCallback;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/HttpUtils;Lcom/shishicai/app/activity/HttpUtils$HttpCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/HttpUtils;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/shishicai/app/activity/HttpUtils$4;->this$0:Lcom/shishicai/app/activity/HttpUtils;

    iput-object p2, p0, Lcom/shishicai/app/activity/HttpUtils$4;->val$callback:Lcom/shishicai/app/activity/HttpUtils$HttpCallback;

    iput-object p3, p0, Lcom/shishicai/app/activity/HttpUtils$4;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/shishicai/app/activity/HttpUtils$4;->val$callback:Lcom/shishicai/app/activity/HttpUtils$HttpCallback;

    iget-object v1, p0, Lcom/shishicai/app/activity/HttpUtils$4;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/activity/HttpUtils$HttpCallback;->onSuccess(Ljava/lang/String;)V

    .line 227
    return-void
.end method
