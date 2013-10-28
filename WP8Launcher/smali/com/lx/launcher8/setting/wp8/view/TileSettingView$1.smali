.class Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TileSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x3

    const/4 v5, 0x1

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 559
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v7, v7, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v8, Lcom/lx/launcher8/setting/wp8/AppPickAct;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "extral_text"

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v8, v8, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a0054

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v7, "extral_short_cut"

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v8}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v8

    if-nez v8, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 565
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 566
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "changeid"

    const v7, 0x7f090042

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v6, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 570
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "extral_type"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const-string v6, "extral_title"

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v7, v7, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0050

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v6, "changeid"

    const v7, 0x7f090044

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v6, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 578
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 582
    .local v1, b:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v6, v6, 0xfff

    if-eq v6, v5, :cond_2

    .line 583
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v5, v5, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v5, v5, 0xfff

    if-eq v5, v8, :cond_2

    .line 584
    const/4 v2, 0x0

    .line 585
    .local v2, cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 586
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v5}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v5

    .line 587
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 588
    .local v0, app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_1

    .line 589
    iget-object v5, v0, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v5}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 594
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_1
    :goto_1
    const-string v5, "aspectX"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 595
    const-string v5, "aspectY"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 596
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 597
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v5, v3, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 592
    :cond_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-static {v5}, Lcom/lx/launcher8/util/Utils;->loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 600
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 602
    .restart local v1       #b:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v6, v6, 0xfff

    if-eq v6, v5, :cond_4

    .line 603
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v5, v5, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v5, v5, 0xfff

    if-eq v5, v8, :cond_4

    .line 604
    const/4 v2, 0x0

    .line 605
    .restart local v2       #cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 606
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v5}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v5

    .line 607
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 608
    .restart local v0       #app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_3

    .line 609
    iget-object v5, v0, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v5}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 614
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_3
    :goto_2
    const-string v5, "aspectX"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    const-string v5, "aspectY"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 617
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/16 v6, 0x9

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 612
    :cond_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-static {v5}, Lcom/lx/launcher8/util/Utils;->loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 620
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "PAGE"

    const/16 v6, 0x2bc

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v6}, Lcom/lx/launcher8/bean/AppCell;->getImgGravity()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/4 v6, 0x5

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 626
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 627
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v5, v3}, Lcom/lx/launcher8/bean/AppCell;->setIntentParam(Landroid/content/Intent;)V

    .line 628
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 629
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 632
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_7
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    .line 633
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 636
    :sswitch_8
    const/4 v4, 0x1

    .line 637
    .local v4, val:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v6, v6, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 638
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v6, v6, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;I)I

    move-result v4

    .line 640
    :cond_5
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "page"

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    const-string v5, "item"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/16 v6, 0x21

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 557
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090042 -> :sswitch_1
        0x7f090122 -> :sswitch_2
        0x7f090194 -> :sswitch_6
        0x7f090196 -> :sswitch_7
        0x7f0901cf -> :sswitch_3
        0x7f0901d2 -> :sswitch_3
        0x7f0901d4 -> :sswitch_5
        0x7f0901d6 -> :sswitch_0
        0x7f0901e4 -> :sswitch_4
        0x7f0901ea -> :sswitch_8
    .end sparse-switch
.end method
