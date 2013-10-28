.class Lcom/lx/launcher8/AnallLauncher$17;
.super Landroid/content/BroadcastReceiver;
.source "AnallLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->registSDReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$17;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 1347
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1350
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1353
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1355
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$17;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #calls: Lcom/lx/launcher8/AnallLauncher;->rebake(ZZ)V
    invoke-static {v1, v3, v2}, Lcom/lx/launcher8/AnallLauncher;->access$16(Lcom/lx/launcher8/AnallLauncher;ZZ)V

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1357
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$17;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #calls: Lcom/lx/launcher8/AnallLauncher;->rebake(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/AnallLauncher;->access$16(Lcom/lx/launcher8/AnallLauncher;ZZ)V

    goto :goto_0

    .line 1358
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1359
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$17;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #calls: Lcom/lx/launcher8/AnallLauncher;->rebake(ZZ)V
    invoke-static {v1, v2, v2}, Lcom/lx/launcher8/AnallLauncher;->access$16(Lcom/lx/launcher8/AnallLauncher;ZZ)V

    goto :goto_0

    .line 1360
    :cond_3
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1361
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$17;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #calls: Lcom/lx/launcher8/AnallLauncher;->rebake(ZZ)V
    invoke-static {v1, v3, v2}, Lcom/lx/launcher8/AnallLauncher;->access$16(Lcom/lx/launcher8/AnallLauncher;ZZ)V

    goto :goto_0

    .line 1362
    :cond_4
    const-string v1, "com.anall.action.screen.unlock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$17;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$17(Lcom/lx/launcher8/AnallLauncher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
