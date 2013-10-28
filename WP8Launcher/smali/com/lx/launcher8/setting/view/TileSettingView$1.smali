.class Lcom/lx/launcher8/setting/view/TileSettingView$1;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/TileSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/TileSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 604
    :goto_0
    return-void

    .line 533
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/AppPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "extral_short_cut"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 538
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "changeid"

    const v5, 0x7f090042

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 543
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "extral_type"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    const-string v4, "changeid"

    const v5, 0x7f090044

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 549
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/IconPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v1, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget v4, v4, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    if-eq v4, v6, :cond_1

    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 556
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v4}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 557
    .local v0, app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 562
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_0
    :goto_1
    const-string v4, "aspectX"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    const-string v4, "aspectY"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 565
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 560
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 568
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/IconPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 572
    .restart local v1       #b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget v4, v4, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    if-eq v4, v6, :cond_3

    .line 573
    const/4 v2, 0x0

    .line 574
    .restart local v2       #cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 575
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v4}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 576
    .restart local v0       #app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 581
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_2
    :goto_2
    const-string v4, "aspectX"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    const-string v4, "aspectY"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 584
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 579
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 587
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "PAGE"

    const/16 v5, 0x2bc

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    const-string v4, "extral_value"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/bean/AppCell;->getImgGravity()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 593
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_6
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$3(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 594
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 595
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/bean/AppCell;->setIntentParam(Landroid/content/Intent;)V

    .line 596
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 597
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 600
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_7
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setResult(I)V

    .line 601
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 531
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x14 -> :sswitch_7
        0x7f090042 -> :sswitch_1
        0x7f090122 -> :sswitch_2
        0x7f0901cf -> :sswitch_3
        0x7f0901d4 -> :sswitch_5
        0x7f0901d6 -> :sswitch_0
        0x7f0901e4 -> :sswitch_4
    .end sparse-switch
.end method
