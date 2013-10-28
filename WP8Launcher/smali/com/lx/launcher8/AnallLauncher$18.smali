.class Lcom/lx/launcher8/AnallLauncher$18;
.super Landroid/content/BroadcastReceiver;
.source "AnallLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->registerTimeUpdate()V
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
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$18;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 1376
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1383
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$18;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/AnallLauncher;->access$3(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    goto :goto_0

    .line 1385
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$18;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/view/DynamicCell;

    .line 1386
    .local v1, dc:Lcom/lx/launcher8/view/DynamicCell;
    if-eqz v1, :cond_0

    .line 1387
    invoke-interface {v1}, Lcom/lx/launcher8/view/DynamicCell;->onStart()V

    goto :goto_0
.end method
