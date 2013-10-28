.class Lcom/lx/launcher8/AnallLauncher$12;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->startStatusBar()V
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
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$12;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 271
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher$12;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/AnallLauncher;->access$3(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v2

    .line 272
    .local v2, statusStyle:I
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher$12;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/AnallLauncher;->access$3(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeLock()I

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher$12;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/AnallLauncher;->access$3(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/DeskSetting;->getLockStatusBar()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 273
    .local v1, lockStyle:Z
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher$12;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const-class v6, Lcom/anall/statusbar/BarService;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_2

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$12;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v3, v0}, Lcom/lx/launcher8/AnallLauncher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    :goto_1
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$12;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #calls: Lcom/lx/launcher8/AnallLauncher;->changeNotificationStatus(Z)V
    invoke-static {v3, v4}, Lcom/lx/launcher8/AnallLauncher;->access$11(Lcom/lx/launcher8/AnallLauncher;Z)V

    .line 280
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #lockStyle:Z
    :cond_1
    move v1, v4

    .line 272
    goto :goto_0

    .line 277
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #lockStyle:Z
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$12;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v3, v0}, Lcom/lx/launcher8/AnallLauncher;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method
