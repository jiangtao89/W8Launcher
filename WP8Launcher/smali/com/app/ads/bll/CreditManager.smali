.class public Lcom/app/ads/bll/CreditManager;
.super Ljava/lang/Object;
.source "CreditManager.java"


# static fields
.field public static KEY_PREFERENCE_CREDIT:Ljava/lang/String;

.field public static PATH_LOAD_PACKAGE:Ljava/lang/String;

.field private static instance:Lcom/app/ads/bll/CreditManager;


# instance fields
.field private mCredits:I

.field private mLoadPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dat"

    invoke-static {v1}, Lcom/app/common/config/BasePath;->getExistPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "lp.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/ads/bll/CreditManager;->PATH_LOAD_PACKAGE:Ljava/lang/String;

    .line 28
    const-string v0, "key_preference_credit"

    sput-object v0, Lcom/app/ads/bll/CreditManager;->KEY_PREFERENCE_CREDIT:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/app/ads/bll/CreditManager;->PATH_LOAD_PACKAGE:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/app/ads/bll/CreditManager;->mLoadPackages:Ljava/util/HashMap;

    .line 41
    iget-object v0, p0, Lcom/app/ads/bll/CreditManager;->mLoadPackages:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/app/ads/bll/CreditManager;->mLoadPackages:Ljava/util/HashMap;

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/app/ads/bll/CreditManager;->setDownloadListener()V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/app/ads/bll/CreditManager;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/app/ads/bll/CreditManager;->mLoadPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/app/ads/bll/CreditManager;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/app/ads/bll/CreditManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/app/ads/bll/CreditManager;->instance:Lcom/app/ads/bll/CreditManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/app/ads/bll/CreditManager;

    invoke-direct {v0}, Lcom/app/ads/bll/CreditManager;-><init>()V

    sput-object v0, Lcom/app/ads/bll/CreditManager;->instance:Lcom/app/ads/bll/CreditManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/app/ads/bll/CreditManager;->instance:Lcom/app/ads/bll/CreditManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setDownloadListener()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    .line 69
    .local v0, dm:Lcom/app/download/bean/DownloadManager;
    invoke-virtual {v0}, Lcom/app/download/bean/DownloadManager;->getDownloadStateChange()Lcom/app/download/bean/OnDownloadStateChange;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v1

    new-instance v2, Lcom/app/ads/bll/CreditManager$1;

    invoke-direct {v2, p0}, Lcom/app/ads/bll/CreditManager$1;-><init>(Lcom/app/ads/bll/CreditManager;)V

    invoke-virtual {v1, v2}, Lcom/app/download/bean/DownloadManager;->setOnDownloadStateChange(Lcom/app/download/bean/OnDownloadStateChange;)V

    goto :goto_0
.end method


# virtual methods
.method public checkCredit(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, tmp:I
    iget-object v3, p0, Lcom/app/ads/bll/CreditManager;->mLoadPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    iget v3, p0, Lcom/app/ads/bll/CreditManager;->mCredits:I

    if-eq v2, v3, :cond_1

    .line 55
    iput v2, p0, Lcom/app/ads/bll/CreditManager;->mCredits:I

    .line 56
    sget-object v3, Lcom/app/ads/bll/CreditManager;->KEY_PREFERENCE_CREDIT:Ljava/lang/String;

    iget v4, p0, Lcom/app/ads/bll/CreditManager;->mCredits:I

    invoke-static {p1, v3, v4}, Lcom/app/common/utils/UPreference;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 58
    :cond_1
    return-void

    .line 48
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, key:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    iget-object v4, p0, Lcom/app/ads/bll/CreditManager;->mLoadPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, it:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0
.end method

.method public getCredit()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/app/ads/bll/CreditManager;->mCredits:I

    return v0
.end method
