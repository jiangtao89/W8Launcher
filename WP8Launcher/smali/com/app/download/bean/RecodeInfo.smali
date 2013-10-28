.class public Lcom/app/download/bean/RecodeInfo;
.super Ljava/lang/Object;
.source "RecodeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ABSOLUTEPATH:Ljava/lang/String; = null

.field private static recodeInfo:Lcom/app/download/bean/RecodeInfo; = null

.field private static final serialVersionUID:J = -0x68f0bd4538fca00bL


# instance fields
.field private mFinishedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/app/download/bean/FileSeed;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/app/download/bean/FileSeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/app/common/config/BasePath;->getInternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "fileSeed.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/download/bean/RecodeInfo;->ABSOLUTEPATH:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    .line 248
    return-void
.end method

.method private constructor <init>(Lcom/app/download/bean/RecodeInfo;)V
    .locals 1
    .parameter "recodeInfo"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    .line 251
    iget-object v0, p1, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    iput-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    .line 252
    iget-object v0, p1, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    iput-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    .line 253
    return-void
.end method

.method private static Init(Lcom/app/download/bean/RecodeInfo;)V
    .locals 9
    .parameter "ri"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 257
    if-nez p0, :cond_1

    .line 306
    :cond_0
    return-void

    .line 260
    :cond_1
    iget-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    if-nez v4, :cond_2

    .line 261
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    .line 263
    :cond_2
    iget-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    if-nez v4, :cond_3

    .line 264
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    .line 266
    :cond_3
    iget-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 268
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/app/download/bean/FileSeed;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 292
    iget-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 293
    .local v3, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/app/download/bean/FileSeed;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/app/download/bean/FileSeed;

    .line 296
    .local v1, fs:Lcom/app/download/bean/FileSeed;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/app/download/bean/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 298
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 269
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fs:Lcom/app/download/bean/FileSeed;
    .end local v3           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/app/download/bean/FileSeed;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/app/download/bean/FileSeed;

    .line 272
    .restart local v1       #fs:Lcom/app/download/bean/FileSeed;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/app/download/bean/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 274
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 279
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 280
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 281
    iget-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_6
    :goto_2
    invoke-virtual {v1, v8}, Lcom/app/download/bean/FileSeed;->setOpen(Z)V

    .line 288
    invoke-virtual {v1, v6, v7}, Lcom/app/download/bean/FileSeed;->setuLoadedSize(J)V

    .line 289
    invoke-virtual {v1, v6, v7}, Lcom/app/download/bean/FileSeed;->setuTime(J)V

    .line 290
    invoke-virtual {v1, v8}, Lcom/app/download/bean/FileSeed;->setCoding(I)V

    goto/16 :goto_0

    .line 284
    :cond_7
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 285
    :cond_8
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/app/download/bean/FileSeed;->setState(I)V

    goto :goto_2

    .line 300
    .restart local v3       #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/app/download/bean/FileSeed;>;"
    :cond_9
    invoke-virtual {v1, v8}, Lcom/app/download/bean/FileSeed;->setOpen(Z)V

    .line 301
    invoke-virtual {v1, v6, v7}, Lcom/app/download/bean/FileSeed;->setuLoadedSize(J)V

    .line 302
    invoke-virtual {v1, v6, v7}, Lcom/app/download/bean/FileSeed;->setuTime(J)V

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/app/download/bean/RecodeInfo;
    .locals 2

    .prologue
    .line 234
    sget-object v1, Lcom/app/download/bean/RecodeInfo;->recodeInfo:Lcom/app/download/bean/RecodeInfo;

    if-eqz v1, :cond_1

    .line 235
    sget-object v0, Lcom/app/download/bean/RecodeInfo;->recodeInfo:Lcom/app/download/bean/RecodeInfo;

    .line 241
    .local v0, recodeInfo:Lcom/app/download/bean/RecodeInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 237
    .end local v0           #recodeInfo:Lcom/app/download/bean/RecodeInfo;
    :cond_1
    invoke-static {}, Lcom/app/download/bean/RecodeInfo;->readFromFile()Lcom/app/download/bean/RecodeInfo;

    move-result-object v0

    .line 238
    .restart local v0       #recodeInfo:Lcom/app/download/bean/RecodeInfo;
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/app/download/bean/RecodeInfo;

    .end local v0           #recodeInfo:Lcom/app/download/bean/RecodeInfo;
    invoke-direct {v0}, Lcom/app/download/bean/RecodeInfo;-><init>()V

    .restart local v0       #recodeInfo:Lcom/app/download/bean/RecodeInfo;
    goto :goto_0
.end method

.method public static readFromFile()Lcom/app/download/bean/RecodeInfo;
    .locals 2

    .prologue
    .line 228
    sget-object v1, Lcom/app/download/bean/RecodeInfo;->ABSOLUTEPATH:Ljava/lang/String;

    invoke-static {v1}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/RecodeInfo;

    .line 229
    .local v0, ri:Lcom/app/download/bean/RecodeInfo;
    invoke-static {v0}, Lcom/app/download/bean/RecodeInfo;->Init(Lcom/app/download/bean/RecodeInfo;)V

    .line 230
    return-object v0
.end method


# virtual methods
.method public FinishGet(I)Lcom/app/download/bean/FileSeed;
    .locals 1
    .parameter "location"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    goto :goto_0
.end method

.method public NotFinishGet(I)Lcom/app/download/bean/FileSeed;
    .locals 1
    .parameter "location"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    goto :goto_0
.end method

.method public declared-synchronized downloadFileSeed(Lcom/app/download/bean/FileSeed;)Lcom/app/download/bean/FileSeed;
    .locals 3
    .parameter "fileSeed"

    .prologue
    const/4 v0, 0x0

    .line 70
    monitor-enter p0

    if-nez p1, :cond_0

    move-object p1, v0

    .line 92
    .end local p1
    :goto_0
    monitor-exit p0

    return-object p1

    .line 73
    .restart local p1
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/app/download/bean/RecodeInfo;->getLoadingListSize()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 86
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/app/download/bean/FileSeed;->setState(I)V

    move-object p1, v0

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/app/download/bean/FileSeed;->setState(I)V

    .line 91
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getCoding()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/app/download/bean/FileSeed;->setCoding(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDealingCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFinishCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLoadingList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/app/download/bean/FileSeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 34
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/app/download/bean/FileSeed;>;"
    iget-object v2, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    return-object v1

    .line 34
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 35
    .local v0, fileSeed:Lcom/app/download/bean/FileSeed;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getLoadingListSize()I
    .locals 4

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, size:I
    iget-object v2, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    return v1

    .line 45
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 46
    .local v0, fileSeed:Lcom/app/download/bean/FileSeed;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isExisted(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;
    .locals 3
    .parameter "url"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 138
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 130
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 131
    .local v0, fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 134
    .end local v0           #fileSeed:Lcom/app/download/bean/FileSeed;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 135
    .restart local v0       #fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public isExisted(Ljava/lang/String;Ljava/lang/String;)Lcom/app/download/bean/FileSeed;
    .locals 3
    .parameter "url"
    .parameter "fileName"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 115
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 116
    .local v0, fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 119
    .end local v0           #fileSeed:Lcom/app/download/bean/FileSeed;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 120
    .restart local v0       #fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public isExistedByName(Ljava/lang/String;Z)Lcom/app/download/bean/FileSeed;
    .locals 11
    .parameter "name"
    .parameter "judgeTime"

    .prologue
    const-wide/32 v9, 0x5265c00

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    iget-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 184
    iget-object v4, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 195
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0

    .line 172
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 173
    .local v0, fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    if-eqz p2, :cond_2

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, v5, v9

    if-gez v5, :cond_4

    move v1, v2

    .line 178
    .local v1, isOverdue:Z
    :goto_1
    if-eqz v1, :cond_0

    goto :goto_0

    .end local v1           #isOverdue:Z
    :cond_4
    move v1, v3

    .line 177
    goto :goto_1

    .line 184
    .end local v0           #fileSeed:Lcom/app/download/bean/FileSeed;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 185
    .restart local v0       #fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    if-eqz p2, :cond_2

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, v5, v9

    if-gez v5, :cond_6

    move v1, v2

    .line 190
    .restart local v1       #isOverdue:Z
    :goto_2
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #isOverdue:Z
    :cond_6
    move v1, v3

    .line 189
    goto :goto_2
.end method

.method public isExistedByPath(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;
    .locals 4
    .parameter "path"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 165
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 157
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 158
    .local v0, fileSeed:Lcom/app/download/bean/FileSeed;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 161
    .end local v0           #fileSeed:Lcom/app/download/bean/FileSeed;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 162
    .restart local v0       #fileSeed:Lcom/app/download/bean/FileSeed;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public isLoadingByPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 146
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 147
    .local v0, fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/app/download/bean/FileSeed;)V
    .locals 1
    .parameter "fileSeed"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    return-void
.end method

.method public removeToFinished(Lcom/app/download/bean/FileSeed;)V
    .locals 1
    .parameter "fileSeed"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/app/download/bean/RecodeInfo;->remove(Lcom/app/download/bean/FileSeed;)V

    .line 201
    iget-object v0, p0, Lcom/app/download/bean/RecodeInfo;->mFinishedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public resumeOneWatingFileSeed()Lcom/app/download/bean/FileSeed;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/app/download/bean/RecodeInfo;->getLoadingListSize()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 65
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/app/download/bean/RecodeInfo;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 65
    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/download/bean/FileSeed;

    .line 60
    .local v0, fileSeed:Lcom/app/download/bean/FileSeed;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/app/download/bean/FileSeed;->setState(I)V

    goto :goto_0
.end method

.method public declared-synchronized saveToFile()V
    .locals 1

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/app/download/bean/RecodeInfo;->ABSOLUTEPATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
