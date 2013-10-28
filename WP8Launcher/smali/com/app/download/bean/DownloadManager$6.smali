.class Lcom/app/download/bean/DownloadManager$6;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/bean/DownloadManager;->showNotification(Lcom/app/download/bean/FileSeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/bean/DownloadManager;

.field private final synthetic val$NOTIFICATION_ID:I

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$fileSeed:Lcom/app/download/bean/FileSeed;

.field private final synthetic val$mHandler:Landroid/os/Handler;

.field private final synthetic val$nTime:J

.field private final synthetic val$notification:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/app/download/bean/DownloadManager;Lcom/app/download/bean/FileSeed;JILandroid/app/Notification;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/bean/DownloadManager$6;->this$0:Lcom/app/download/bean/DownloadManager;

    iput-object p2, p0, Lcom/app/download/bean/DownloadManager$6;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    iput-wide p3, p0, Lcom/app/download/bean/DownloadManager$6;->val$nTime:J

    iput p5, p0, Lcom/app/download/bean/DownloadManager$6;->val$NOTIFICATION_ID:I

    iput-object p6, p0, Lcom/app/download/bean/DownloadManager$6;->val$notification:Landroid/app/Notification;

    iput-object p7, p0, Lcom/app/download/bean/DownloadManager$6;->val$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/app/download/bean/DownloadManager$6;->val$mHandler:Landroid/os/Handler;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x400

    const/4 v8, 0x2

    .line 283
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v8}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/app/download/bean/DownloadManager$6;->val$nTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 284
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->this$0:Lcom/app/download/bean/DownloadManager;

    #getter for: Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/app/download/bean/DownloadManager;->access$1(Lcom/app/download/bean/DownloadManager;)Landroid/app/NotificationManager;

    move-result-object v4

    iget v5, p0, Lcom/app/download/bean/DownloadManager$6;->val$NOTIFICATION_ID:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 285
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->this$0:Lcom/app/download/bean/DownloadManager;

    iget-object v5, p0, Lcom/app/download/bean/DownloadManager$6;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v5}, Lcom/app/download/bean/DownloadManager;->showNotification(Lcom/app/download/bean/FileSeed;)V

    .line 310
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v8}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    sget-object v0, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    .line 291
    .local v0, cur:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/app/download/bean/DownloadManager$6;->this$0:Lcom/app/download/bean/DownloadManager;

    #getter for: Lcom/app/download/bean/DownloadManager;->mManagerAct:Ljava/lang/Class;
    invoke-static {v5}, Lcom/app/download/bean/DownloadManager;->access$2(Lcom/app/download/bean/DownloadManager;)Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 292
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->this$0:Lcom/app/download/bean/DownloadManager;

    #getter for: Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/app/download/bean/DownloadManager;->access$1(Lcom/app/download/bean/DownloadManager;)Landroid/app/NotificationManager;

    move-result-object v4

    iget v5, p0, Lcom/app/download/bean/DownloadManager$6;->val$NOTIFICATION_ID:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 306
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 294
    :cond_2
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v4

    div-long/2addr v4, v9

    long-to-int v1, v4

    .line 295
    .local v1, fileSize:I
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4}, Lcom/app/download/bean/FileSeed;->getLoadedSize()J

    move-result-wide v4

    div-long/2addr v4, v9

    long-to-int v2, v4

    .line 296
    .local v2, loadSize:I
    if-eqz v1, :cond_1

    .line 297
    mul-int/lit8 v4, v2, 0x64

    div-int v3, v4, v1

    .line 298
    .local v3, progress:I
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/app/download/bean/DownloadManager$6;->val$context:Landroid/content/Context;

    const-string v6, "progress"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 299
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/app/download/bean/DownloadManager$6;->val$context:Landroid/content/Context;

    const-string v6, "text_title"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/app/download/bean/DownloadManager$6;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v6}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 300
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/app/download/bean/DownloadManager$6;->val$context:Landroid/content/Context;

    const-string v6, "text1"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 301
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->val$context:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->this$0:Lcom/app/download/bean/DownloadManager;

    #getter for: Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/app/download/bean/DownloadManager;->access$1(Lcom/app/download/bean/DownloadManager;)Landroid/app/NotificationManager;

    move-result-object v4

    iget v5, p0, Lcom/app/download/bean/DownloadManager$6;->val$NOTIFICATION_ID:I

    iget-object v6, p0, Lcom/app/download/bean/DownloadManager$6;->val$notification:Landroid/app/Notification;

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 308
    .end local v0           #cur:Landroid/app/Activity;
    .end local v1           #fileSize:I
    .end local v2           #loadSize:I
    .end local v3           #progress:I
    :cond_3
    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$6;->this$0:Lcom/app/download/bean/DownloadManager;

    #getter for: Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/app/download/bean/DownloadManager;->access$1(Lcom/app/download/bean/DownloadManager;)Landroid/app/NotificationManager;

    move-result-object v4

    iget v5, p0, Lcom/app/download/bean/DownloadManager$6;->val$NOTIFICATION_ID:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method
