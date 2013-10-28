.class Lcom/app/ads/bll/CreditManager$1;
.super Ljava/lang/Object;
.source "CreditManager.java"

# interfaces
.implements Lcom/app/download/bean/OnDownloadStateChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/bll/CreditManager;->setDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/bll/CreditManager;


# direct methods
.method constructor <init>(Lcom/app/ads/bll/CreditManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/bll/CreditManager$1;->this$0:Lcom/app/ads/bll/CreditManager;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinished(Lcom/app/download/bean/FileSeed;)Z
    .locals 9
    .parameter "fileSeed"

    .prologue
    const/4 v8, 0x1

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, credit:I
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 75
    .local v4, tmp:Ljava/lang/Integer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 76
    :cond_0
    if-lez v1, :cond_1

    sget-object v5, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    if-nez v5, :cond_2

    .line 84
    :cond_1
    :goto_0
    return v8

    .line 77
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, path:Ljava/lang/String;
    sget-object v5, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    invoke-virtual {v5}, Lcom/app/common/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 79
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    .line 80
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 81
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/app/ads/bll/CreditManager$1;->this$0:Lcom/app/ads/bll/CreditManager;

    #getter for: Lcom/app/ads/bll/CreditManager;->mLoadPackages:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/app/ads/bll/CreditManager;->access$0(Lcom/app/ads/bll/CreditManager;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v5, p0, Lcom/app/ads/bll/CreditManager$1;->this$0:Lcom/app/ads/bll/CreditManager;

    #getter for: Lcom/app/ads/bll/CreditManager;->mLoadPackages:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/app/ads/bll/CreditManager;->access$0(Lcom/app/ads/bll/CreditManager;)Ljava/util/HashMap;

    move-result-object v5

    sget-object v6, Lcom/app/ads/bll/CreditManager;->PATH_LOAD_PACKAGE:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0
.end method
