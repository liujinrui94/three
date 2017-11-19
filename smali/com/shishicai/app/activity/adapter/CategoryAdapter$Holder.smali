.class Lcom/shishicai/app/activity/adapter/CategoryAdapter$Holder;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field iv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/CategoryAdapter;

.field tv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/CategoryAdapter;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/CategoryAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/CategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/CategoryAdapter;Lcom/shishicai/app/activity/adapter/CategoryAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/CategoryAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/CategoryAdapter$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/CategoryAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/CategoryAdapter;)V

    return-void
.end method
