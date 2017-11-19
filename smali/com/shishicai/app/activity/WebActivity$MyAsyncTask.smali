.class public Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/WebActivity;


# direct methods
.method public constructor <init>(Lcom/shishicai/app/activity/WebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 515
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;->this$0:Lcom/shishicai/app/activity/WebActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/WebActivity;->access$1300(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 515
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;->this$0:Lcom/shishicai/app/activity/WebActivity;

    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebActivity;->access$1200(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 520
    return-void
.end method
