.class public final Lrx/subjects/SubjectSubscriptionManager$State;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

.field static final NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

.field static final TERMINATED:Lrx/subjects/SubjectSubscriptionManager$State;


# instance fields
.field final observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

.field final terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-array v0, v3, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 154
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$State;

    const/4 v1, 0x1

    sget-object v2, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, v1, v2}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->TERMINATED:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 155
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$State;

    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, v3, v1}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    return-void
.end method

.method public constructor <init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 0
    .param p1, "terminated"    # Z
    .param p2, "observers"    # [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .line 157
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-boolean p1, p0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    .line 159
    iput-object p2, p0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 160
    return-void
.end method


# virtual methods
.method public add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;
    .locals 5
    .param p1, "o"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 163
    .local v0, "a":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v2, v0

    .line 164
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 165
    .local v1, "b":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    iget-object v3, p0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    aput-object p1, v1, v2

    .line 167
    new-instance v3, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-boolean v4, p0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    invoke-direct {v3, v4, v1}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-object v3
.end method

.method public remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;
    .locals 10
    .param p1, "o"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    const/4 v9, 0x0

    .line 170
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 171
    .local v0, "a":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v7, v0

    .line 172
    .local v7, "n":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    aget-object v8, v0, v9

    if-ne v8, p1, :cond_1

    .line 173
    sget-object p0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 197
    .end local p0    # "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 175
    .restart local p0    # "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    :cond_1
    if-eqz v7, :cond_0

    .line 178
    add-int/lit8 v8, v7, -0x1

    new-array v2, v8, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 179
    .local v2, "b":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    const/4 v5, 0x0

    .line 180
    .local v5, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 181
    aget-object v1, v0, v4

    .line 182
    .local v1, "ai":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    if-eq v1, p1, :cond_5

    .line 183
    add-int/lit8 v8, v7, -0x1

    if-eq v6, v8, :cond_0

    .line 186
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v1, v2, v6

    .line 180
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_1

    .line 189
    .end local v1    # "ai":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    :cond_2
    if-nez v6, :cond_3

    .line 190
    sget-object p0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    goto :goto_0

    .line 192
    :cond_3
    add-int/lit8 v8, v7, -0x1

    if-ge v6, v8, :cond_4

    .line 193
    new-array v3, v6, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 194
    .local v3, "c":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    invoke-static {v2, v9, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    move-object v2, v3

    .line 197
    .end local v3    # "c":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    :cond_4
    new-instance v8, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-boolean v9, p0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    invoke-direct {v8, v9, v2}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    move-object p0, v8

    goto :goto_0

    .restart local v1    # "ai":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    :cond_5
    move v5, v6

    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_2
.end method
