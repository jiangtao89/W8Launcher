.class public Lcom/app/common/net/UImageSever;
.super Ljava/lang/Object;
.source "UImageSever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/net/UImageSever$DownLoadToFile;,
        Lcom/app/common/net/UImageSever$LoadTask;,
        Lcom/app/common/net/UImageSever$LoadedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownLoadToFile:Lcom/app/common/net/UImageSever$DownLoadToFile;

.field private mIsCreadNail:Z

.field private mIsLetGo:Z

.field private mIsRunning:Z

.field private mLoadedListener:Lcom/app/common/net/UImageSever$LoadedListener;

.field private mSavePathArray:[Ljava/lang/String;

.field private mUrlArray:[Ljava/lang/String;

.field private mWhichLoading:I

.field private onFinishedListener:Lcom/app/common/utils/OnFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "urlArray"
    .parameter "saveAbsDir"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v2, p0, Lcom/app/common/net/UImageSever;->mIsRunning:Z

    .line 28
    iput v2, p0, Lcom/app/common/net/UImageSever;->mWhichLoading:I

    .line 30
    new-instance v1, Lcom/app/common/net/UImageSever$DownLoadToFile;

    invoke-direct {v1, p0}, Lcom/app/common/net/UImageSever$DownLoadToFile;-><init>(Lcom/app/common/net/UImageSever;)V

    iput-object v1, p0, Lcom/app/common/net/UImageSever;->mDownLoadToFile:Lcom/app/common/net/UImageSever$DownLoadToFile;

    .line 33
    iput-boolean v2, p0, Lcom/app/common/net/UImageSever;->mIsCreadNail:Z

    .line 44
    iput-object p1, p0, Lcom/app/common/net/UImageSever;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/app/common/net/UImageSever;->mUrlArray:[Ljava/lang/String;

    .line 47
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/app/common/net/UImageSever;->mSavePathArray:[Ljava/lang/String;

    .line 49
    array-length v1, p2

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/app/common/net/UImageSever;->mSavePathArray:[Ljava/lang/String;

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/app/common/utils/UConvert;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "urlArray"
    .parameter "saveAbsPath"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/app/common/net/UImageSever;->mIsRunning:Z

    .line 28
    iput v1, p0, Lcom/app/common/net/UImageSever;->mWhichLoading:I

    .line 30
    new-instance v0, Lcom/app/common/net/UImageSever$DownLoadToFile;

    invoke-direct {v0, p0}, Lcom/app/common/net/UImageSever$DownLoadToFile;-><init>(Lcom/app/common/net/UImageSever;)V

    iput-object v0, p0, Lcom/app/common/net/UImageSever;->mDownLoadToFile:Lcom/app/common/net/UImageSever$DownLoadToFile;

    .line 33
    iput-boolean v1, p0, Lcom/app/common/net/UImageSever;->mIsCreadNail:Z

    .line 38
    iput-object p1, p0, Lcom/app/common/net/UImageSever;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/app/common/net/UImageSever;->mUrlArray:[Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/app/common/net/UImageSever;->mSavePathArray:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/app/common/net/UImageSever;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/app/common/net/UImageSever;->mWhichLoading:I

    return v0
.end method

.method static synthetic access$1(Lcom/app/common/net/UImageSever;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->mUrlArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/app/common/net/UImageSever;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->mSavePathArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/app/common/net/UImageSever;)Lcom/app/common/net/UImageSever$DownLoadToFile;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->mDownLoadToFile:Lcom/app/common/net/UImageSever$DownLoadToFile;

    return-object v0
.end method

.method static synthetic access$4(Lcom/app/common/net/UImageSever;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/app/common/net/UImageSever;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/app/common/net/UImageSever;->mWhichLoading:I

    return-void
.end method

.method static synthetic access$6(Lcom/app/common/net/UImageSever;)Lcom/app/common/net/UImageSever$LoadedListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->mLoadedListener:Lcom/app/common/net/UImageSever$LoadedListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/app/common/net/UImageSever;)Lcom/app/common/utils/OnFinishedListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->onFinishedListener:Lcom/app/common/utils/OnFinishedListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/app/common/net/UImageSever;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/app/common/net/UImageSever;->mIsCreadNail:Z

    return v0
.end method


# virtual methods
.method public getLoadedListener()Lcom/app/common/net/UImageSever$LoadedListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->mLoadedListener:Lcom/app/common/net/UImageSever$LoadedListener;

    return-object v0
.end method

.method public getOnFinishedListener()Lcom/app/common/utils/OnFinishedListener;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->onFinishedListener:Lcom/app/common/utils/OnFinishedListener;

    return-object v0
.end method

.method public isCreadNail()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/app/common/net/UImageSever;->mIsCreadNail:Z

    return v0
.end method

.method public isLetGo()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/app/common/net/UImageSever;->mIsLetGo:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/app/common/net/UImageSever;->mIsRunning:Z

    return v0
.end method

.method public setCreadNail(Z)V
    .locals 0
    .parameter "mIsCreadNail"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/app/common/net/UImageSever;->mIsCreadNail:Z

    .line 145
    return-void
.end method

.method public setIsRunning(Z)V
    .locals 0
    .parameter "mIsRunning"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/app/common/net/UImageSever;->mIsRunning:Z

    .line 76
    return-void
.end method

.method public setLetGo(Z)V
    .locals 0
    .parameter "isLetGo"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/app/common/net/UImageSever;->mIsLetGo:Z

    .line 68
    return-void
.end method

.method public setOnFinishedListener(Lcom/app/common/utils/OnFinishedListener;)V
    .locals 0
    .parameter "onFinishedListener"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/app/common/net/UImageSever;->onFinishedListener:Lcom/app/common/utils/OnFinishedListener;

    .line 253
    return-void
.end method

.method public setOnLoadedListener(Lcom/app/common/net/UImageSever$LoadedListener;)V
    .locals 0
    .parameter "mLoadedListener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/app/common/net/UImageSever;->mLoadedListener:Lcom/app/common/net/UImageSever$LoadedListener;

    .line 84
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-virtual {p0, v1}, Lcom/app/common/net/UImageSever;->setLetGo(Z)V

    .line 139
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->mDownLoadToFile:Lcom/app/common/net/UImageSever$DownLoadToFile;

    invoke-virtual {v0, v1}, Lcom/app/common/net/UImageSever$DownLoadToFile;->setLetGo(Z)V

    .line 140
    new-instance v0, Lcom/app/common/net/UImageSever$LoadTask;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/app/common/net/UImageSever$LoadTask;-><init>(Lcom/app/common/net/UImageSever;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/app/common/net/UImageSever$LoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v1}, Lcom/app/common/net/UImageSever;->setLetGo(Z)V

    .line 63
    iget-object v0, p0, Lcom/app/common/net/UImageSever;->mDownLoadToFile:Lcom/app/common/net/UImageSever$DownLoadToFile;

    invoke-virtual {v0, v1}, Lcom/app/common/net/UImageSever$DownLoadToFile;->setLetGo(Z)V

    .line 64
    return-void
.end method
