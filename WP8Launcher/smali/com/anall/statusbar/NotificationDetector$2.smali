.class Lcom/anall/statusbar/NotificationDetector$2;
.super Ljava/lang/Object;
.source "NotificationDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/NotificationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/NotificationDetector;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/NotificationDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/NotificationDetector$2;->this$0:Lcom/anall/statusbar/NotificationDetector;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 342
    iget-object v6, p0, Lcom/anall/statusbar/NotificationDetector$2;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #getter for: Lcom/anall/statusbar/NotificationDetector;->mSdf:Ljava/text/SimpleDateFormat;
    invoke-static {v6}, Lcom/anall/statusbar/NotificationDetector;->access$2(Lcom/anall/statusbar/NotificationDetector;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, date:Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v3, v6, v7

    .line 344
    .local v3, time:Ljava/lang/String;
    iget-object v6, p0, Lcom/anall/statusbar/NotificationDetector$2;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #getter for: Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/anall/statusbar/NotificationDetector;->access$3(Lcom/anall/statusbar/NotificationDetector;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 345
    const-string v7, "time_12_24"

    .line 344
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, timeFormat:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lx/launcher8/util/Utils;->getPmTime(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, times:[Ljava/lang/String;
    aget-object v6, v5, v9

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 348
    aget-object v2, v5, v8

    .line 352
    .local v2, resultTiem:Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 353
    .local v1, msg:Landroid/os/Message;
    const/16 v6, 0x19

    iput v6, v1, Landroid/os/Message;->what:I

    .line 354
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    iget-object v6, p0, Lcom/anall/statusbar/NotificationDetector$2;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V
    invoke-static {v6, v1}, Lcom/anall/statusbar/NotificationDetector;->access$0(Lcom/anall/statusbar/NotificationDetector;Landroid/os/Message;)V

    .line 357
    iget-object v6, p0, Lcom/anall/statusbar/NotificationDetector$2;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #getter for: Lcom/anall/statusbar/NotificationDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/anall/statusbar/NotificationDetector;->access$4(Lcom/anall/statusbar/NotificationDetector;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/anall/statusbar/NotificationDetector$2;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #getter for: Lcom/anall/statusbar/NotificationDetector;->mTimeRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/anall/statusbar/NotificationDetector;->access$5(Lcom/anall/statusbar/NotificationDetector;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void

    .line 350
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #resultTiem:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, v5, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #resultTiem:Ljava/lang/String;
    goto :goto_0
.end method
