.class Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;
.super Ljava/lang/Object;
.source "NewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/NewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field msgPic:Landroid/widget/ImageView;

.field msgTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/NewsAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/NewsAdapter;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/NewsAdapter;Lcom/shishicai/app/activity/adapter/NewsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/NewsAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/NewsAdapter$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/NewsAdapter;)V

    return-void
.end method
