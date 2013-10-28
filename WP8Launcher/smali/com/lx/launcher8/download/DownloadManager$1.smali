.class Lcom/lx/launcher8/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/download/DownloadManager;->showNotification(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/download/DownloadManager;

.field private final synthetic val$NOTIFICATION_ID:I

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

.field private final synthetic val$mHandler:Landroid/os/Handler;

.field private final synthetic val$mNotificationManager:Landroid/app/NotificationManager;

.field private final synthetic val$nTime:J

.field private final synthetic val$notification:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/download/DownloadManager;Lcom/lx/launcher8/download/FileSeed;JLandroid/app/NotificationManager;ILandroid/content/Context;Landroid/app/Notification;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadManager$1;->this$0:Lcom/lx/launcher8/download/DownloadManager;

    iput-object p2, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    iput-wide p3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$nTime:J

    iput-object p5, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$mNotificationManager:Landroid/app/NotificationManager;

    iput p6, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$NOTIFICATION_ID:I

    iput-object p7, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$notification:Landroid/app/Notification;

    iput-object p9, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$mHandler:Landroid/os/Handler;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    const/4 v7, 0x2

    .line 159
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$nTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$mNotificationManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$NOTIFICATION_ID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->this$0:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v4, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3, v4, v5}, Lcom/lx/launcher8/download/DownloadManager;->showNotification(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;)V

    .line 181
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 165
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v3

    div-long/2addr v3, v8

    long-to-int v0, v3

    .line 166
    .local v0, fileSize:I
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getLoadedSize()J

    move-result-wide v3

    div-long/2addr v3, v8

    long-to-int v1, v3

    .line 167
    .local v1, loadSize:I
    if-eqz v0, :cond_1

    .line 168
    mul-int/lit8 v3, v1, 0x64

    div-int v2, v3, v0

    .line 169
    .local v2, progress:I
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f0900df

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 170
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f0900be

    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v5}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 171
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f0900de

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$context:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$mNotificationManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$NOTIFICATION_ID:I

    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$notification:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 180
    .end local v0           #fileSize:I
    .end local v1           #loadSize:I
    .end local v2           #progress:I
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 177
    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$mNotificationManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/lx/launcher8/download/DownloadManager$1;->val$NOTIFICATION_ID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
