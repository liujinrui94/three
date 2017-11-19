.class final enum Lcom/shishicai/app/ui/DragImageView$MODE;
.super Ljava/lang/Enum;
.source "DragImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/ui/DragImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/shishicai/app/ui/DragImageView$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shishicai/app/ui/DragImageView$MODE;

.field public static final enum DRAG:Lcom/shishicai/app/ui/DragImageView$MODE;

.field public static final enum NONE:Lcom/shishicai/app/ui/DragImageView$MODE;

.field public static final enum ZOOM:Lcom/shishicai/app/ui/DragImageView$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/shishicai/app/ui/DragImageView$MODE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/shishicai/app/ui/DragImageView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->NONE:Lcom/shishicai/app/ui/DragImageView$MODE;

    new-instance v0, Lcom/shishicai/app/ui/DragImageView$MODE;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v3}, Lcom/shishicai/app/ui/DragImageView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->DRAG:Lcom/shishicai/app/ui/DragImageView$MODE;

    new-instance v0, Lcom/shishicai/app/ui/DragImageView$MODE;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v4}, Lcom/shishicai/app/ui/DragImageView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->ZOOM:Lcom/shishicai/app/ui/DragImageView$MODE;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shishicai/app/ui/DragImageView$MODE;

    sget-object v1, Lcom/shishicai/app/ui/DragImageView$MODE;->NONE:Lcom/shishicai/app/ui/DragImageView$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/shishicai/app/ui/DragImageView$MODE;->DRAG:Lcom/shishicai/app/ui/DragImageView$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shishicai/app/ui/DragImageView$MODE;->ZOOM:Lcom/shishicai/app/ui/DragImageView$MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->$VALUES:[Lcom/shishicai/app/ui/DragImageView$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shishicai/app/ui/DragImageView$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/shishicai/app/ui/DragImageView$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/ui/DragImageView$MODE;

    return-object v0
.end method

.method public static values()[Lcom/shishicai/app/ui/DragImageView$MODE;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->$VALUES:[Lcom/shishicai/app/ui/DragImageView$MODE;

    invoke-virtual {v0}, [Lcom/shishicai/app/ui/DragImageView$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shishicai/app/ui/DragImageView$MODE;

    return-object v0
.end method
