.class Lcom/lx/launcher8/receiver/LauncherNotificationManager$1;
.super Landroid/database/ContentObserver;
.source "LauncherNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/receiver/LauncherNotificationManager;->registerSMSContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/receiver/LauncherNotificationManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$1;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    .line 96
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$1;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    #getter for: Lcom/lx/launcher8/receiver/LauncherNotificationManager;->msgListenerList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->access$0(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 110
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$1;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    #getter for: Lcom/lx/launcher8/receiver/LauncherNotificationManager;->msgListenerList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->access$0(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$1;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    iget-object v2, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$1;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    #getter for: Lcom/lx/launcher8/receiver/LauncherNotificationManager;->msgListenerList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->access$0(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;

    #calls: Lcom/lx/launcher8/receiver/LauncherNotificationManager;->checkUnReadSMS(Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;)V
    invoke-static {v3, v2}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->access$1(Lcom/lx/launcher8/receiver/LauncherNotificationManager;Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
