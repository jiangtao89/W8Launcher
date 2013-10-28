.class Lcom/lx/launcher8/setting/view/LightSettingView$1;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/LightSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LightSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LightSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 633
    :goto_0
    return-void

    .line 544
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/AppPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "extral_short_cut"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 549
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "changeid"

    const v5, 0x7f090042

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 554
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "extral_type"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    const-string v4, "changeid"

    const v5, 0x7f090044

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 560
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/IconPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 564
    .local v1, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget v4, v4, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    if-eq v4, v6, :cond_1

    .line 565
    const/4 v2, 0x0

    .line 566
    .local v2, cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

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

    .line 568
    .local v0, app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 573
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_0
    :goto_1
    const-string v4, "aspectX"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    const-string v4, "aspectY"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 576
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 571
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 579
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/IconPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 583
    .restart local v1       #b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget v4, v4, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    if-eq v4, v6, :cond_3

    .line 584
    const/4 v2, 0x0

    .line 585
    .restart local v2       #cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 586
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

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

    .line 587
    .restart local v0       #app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 592
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_2
    :goto_2
    const-string v4, "aspectX"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    const-string v4, "aspectY"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 595
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 590
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->loadIntralBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 598
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "PAGE"

    const/16 v5, 0x2bc

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const-string v4, "extral_value"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/bean/LightCell;->getImgGravity()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 604
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_6
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$3(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    .line 605
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 606
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/bean/LightCell;->setIntentParam(Landroid/content/Intent;)V

    .line 607
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 608
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 611
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_7
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setResult(I)V

    .line 612
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 615
    :sswitch_8
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/SettingLightItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "page"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    const-string v4, "item"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x21

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 621
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_9
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/SettingLightItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "page"

    const/16 v5, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    const-string v4, "item"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 627
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_a
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lx/launcher8/setting/SettingLightItemsAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "page"

    const/16 v5, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    const-string v4, "item"

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 542
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
        0x7f0901df -> :sswitch_8
        0x7f0901e1 -> :sswitch_9
        0x7f0901e3 -> :sswitch_a
        0x7f0901e4 -> :sswitch_4
    .end sparse-switch
.end method
