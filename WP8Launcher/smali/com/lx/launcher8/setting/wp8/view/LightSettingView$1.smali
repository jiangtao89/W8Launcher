.class Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/LightSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 632
    :goto_0
    return-void

    .line 545
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 546
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "changeid"

    const v5, 0x7f090042

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v4, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 550
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "extral_type"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string v4, "extral_title"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a0050

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v4, "changeid"

    const v5, 0x7f090044

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v4, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 558
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v1, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v4, v4, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    if-eq v4, v7, :cond_1

    .line 561
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v4, v4, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    if-eq v4, v8, :cond_1

    .line 562
    const/4 v2, 0x0

    .line 563
    .local v2, cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 564
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v4}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v4

    .line 565
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 566
    .local v0, app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_0

    .line 567
    iget-object v4, v0, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 572
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_0
    :goto_1
    const-string v4, "aspectX"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string v4, "aspectY"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 575
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v4, v3, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 570
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 578
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 580
    .restart local v1       #b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v4, v4, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    if-eq v4, v7, :cond_3

    .line 581
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v4, v4, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    if-eq v4, v8, :cond_3

    .line 582
    const/4 v2, 0x0

    .line 583
    .restart local v2       #cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 584
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v4}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v4

    .line 585
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 586
    .restart local v0       #app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_2

    .line 587
    iget-object v4, v0, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 592
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_2
    :goto_2
    const-string v4, "aspectX"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    const-string v4, "aspectY"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 595
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/16 v5, 0x9

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 590
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 598
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "PAGE"

    const/16 v5, 0x2bc

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const-string v4, "extral_value"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v5}, Lcom/lx/launcher8/bean/LightCell;->getImgGravity()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 604
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 605
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/bean/LightCell;->setIntentParam(Landroid/content/Intent;)V

    .line 606
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 607
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 610
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_6
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setResult(I)V

    .line 611
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 614
    :sswitch_7
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 615
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "page"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const-string v4, "item"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/16 v5, 0x21

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 620
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_8
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "page"

    const/16 v5, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const-string v4, "item"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/16 v5, 0x22

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 626
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_9
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "page"

    const/16 v5, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const-string v4, "item"

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/16 v5, 0x23

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 543
    :sswitch_data_0
    .sparse-switch
        0x7f090042 -> :sswitch_0
        0x7f090122 -> :sswitch_1
        0x7f090194 -> :sswitch_5
        0x7f090196 -> :sswitch_6
        0x7f0901cf -> :sswitch_2
        0x7f0901d2 -> :sswitch_2
        0x7f0901d4 -> :sswitch_4
        0x7f0901df -> :sswitch_7
        0x7f0901e1 -> :sswitch_8
        0x7f0901e3 -> :sswitch_9
        0x7f0901e4 -> :sswitch_3
    .end sparse-switch
.end method
