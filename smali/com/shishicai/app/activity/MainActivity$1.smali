.class Lcom/shishicai/app/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/MainActivity;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/16 v6, 0xa

    .line 413
    iget-object v3, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v3, p2}, Lcom/shishicai/app/activity/MainActivity;->access$002(Lcom/shishicai/app/activity/MainActivity;I)I

    .line 414
    iget-object v3, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v3, p3}, Lcom/shishicai/app/activity/MainActivity;->access$102(Lcom/shishicai/app/activity/MainActivity;I)I

    .line 415
    iget-object v3, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v3, p4}, Lcom/shishicai/app/activity/MainActivity;->access$202(Lcom/shishicai/app/activity/MainActivity;I)I

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/MainActivity;->access$000(Lcom/shishicai/app/activity/MainActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v3}, Lcom/shishicai/app/activity/MainActivity;->access$100(Lcom/shishicai/app/activity/MainActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/MainActivity;->access$100(Lcom/shishicai/app/activity/MainActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    .line 417
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v3}, Lcom/shishicai/app/activity/MainActivity;->access$200(Lcom/shishicai/app/activity/MainActivity;)I

    move-result v3

    if-ge v3, v6, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/MainActivity;->access$200(Lcom/shishicai/app/activity/MainActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "date":Ljava/lang/String;
    invoke-static {}, Lcom/shishicai/app/utils/DateUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "currentDay":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/shishicai/app/utils/DateUtil;->getDiffDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 420
    .local v2, "diff":I
    if-gtz v2, :cond_2

    .line 422
    iget-object v3, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v3}, Lcom/shishicai/app/activity/MainActivity;->access$300(Lcom/shishicai/app/activity/MainActivity;)Lcom/shishicai/app/fragment/AwardCategory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/shishicai/app/fragment/AwardCategory;->gainData(Ljava/lang/String;)V

    .line 426
    :goto_2
    return-void

    .line 416
    .end local v0    # "currentDay":Ljava/lang/String;
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "diff":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/MainActivity;->access$100(Lcom/shishicai/app/activity/MainActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 417
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/MainActivity;->access$200(Lcom/shishicai/app/activity/MainActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 424
    .restart local v0    # "currentDay":Ljava/lang/String;
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v2    # "diff":I
    :cond_2
    iget-object v3, p0, Lcom/shishicai/app/activity/MainActivity$1;->this$0:Lcom/shishicai/app/activity/MainActivity;

    const-string v4, "\u8fd8\u672a\u5230\u5f00\u5956\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9!"

    invoke-static {v3, v4}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method
