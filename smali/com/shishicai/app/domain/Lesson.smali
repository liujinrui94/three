.class public Lcom/shishicai/app/domain/Lesson;
.super Ljava/lang/Object;
.source "Lesson.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x52358a374e3367ecL


# instance fields
.field private app_pic:Ljava/lang/String;

.field private cate_id:Ljava/lang/String;

.field private company_id:Ljava/lang/String;

.field private course_name:Ljava/lang/String;

.field private course_text:Ljava/lang/String;

.field private course_type:Ljava/lang/String;

.field private examlock:Ljava/lang/String;

.field private favorite:Ljava/lang/String;

.field private group_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private iflearning:Ljava/lang/String;

.field private ifshow:Ljava/lang/String;

.field private lastreadtime:Ljava/lang/String;

.field private lock:Ljava/lang/String;

.field private sort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->app_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getCate_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->cate_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->company_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->course_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->course_text:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->course_type:Ljava/lang/String;

    return-object v0
.end method

.method public getExamlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->examlock:Ljava/lang/String;

    return-object v0
.end method

.method public getFavorite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->favorite:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIflearning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->iflearning:Ljava/lang/String;

    return-object v0
.end method

.method public getIfshow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->ifshow:Ljava/lang/String;

    return-object v0
.end method

.method public getLastreadtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->lastreadtime:Ljava/lang/String;

    return-object v0
.end method

.method public getLock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->lock:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/shishicai/app/domain/Lesson;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_pic"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->app_pic:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCate_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "cate_id"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->cate_id:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCompany_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_id"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->company_id:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCourse_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "course_name"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->course_name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCourse_text(Ljava/lang/String;)V
    .locals 0
    .param p1, "course_text"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->course_text:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setCourse_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "course_type"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->course_type:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setExamlock(Ljava/lang/String;)V
    .locals 0
    .param p1, "examlock"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->examlock:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setFavorite(Ljava/lang/String;)V
    .locals 0
    .param p1, "favorite"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->favorite:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setGroup_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "group_id"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->group_id:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setIflearning(Ljava/lang/String;)V
    .locals 0
    .param p1, "iflearning"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->iflearning:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setIfshow(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifshow"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->ifshow:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setLastreadtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastreadtime"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->lastreadtime:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setLock(Ljava/lang/String;)V
    .locals 0
    .param p1, "lock"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->lock:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/shishicai/app/domain/Lesson;->sort:Ljava/lang/String;

    .line 92
    return-void
.end method
