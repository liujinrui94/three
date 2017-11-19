.class Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;
.super Ljava/lang/Object;
.source "CategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/CategoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field iv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/CategoryListAdapter;

.field tv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/CategoryListAdapter;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/CategoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/CategoryListAdapter;Lcom/shishicai/app/activity/adapter/CategoryListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/CategoryListAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/CategoryListAdapter$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/CategoryListAdapter;)V

    return-void
.end method
