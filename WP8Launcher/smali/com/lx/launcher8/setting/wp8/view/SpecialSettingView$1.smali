.class Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x2bc

    const/4 v4, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 543
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/AppPickAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extral_text"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0052

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v2, v2, 0xfff

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 546
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v2, v2, 0xfff

    if-ne v2, v6, :cond_2

    .line 547
    :cond_1
    const-string v2, "extral_short_cut"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 552
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "extral_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string v2, "changeid"

    const v3, 0x7f090044

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 559
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    instance-of v2, v2, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v2, :cond_3

    .line 560
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, b:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/TimeCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 564
    const-string v2, "aspectX"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    const-string v2, "aspectY"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 567
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 568
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    instance-of v2, v2, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v2, :cond_0

    .line 569
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .restart local v0       #b:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/DynCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 573
    const-string v2, "aspectX"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    const-string v2, "aspectY"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 576
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 580
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    instance-of v2, v2, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v2, :cond_4

    .line 581
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string v3, "extral_value"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/TimeCell;

    iget v2, v2, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 585
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    instance-of v2, v2, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v2, :cond_0

    .line 586
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string v2, "extral_value"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/ItemCell;->getImgGravity()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 594
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 595
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/bean/ItemCell;->setIntentParam(Landroid/content/Intent;)V

    .line 596
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 597
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 600
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 601
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090122 -> :sswitch_1
        0x7f090194 -> :sswitch_4
        0x7f090196 -> :sswitch_5
        0x7f0901cf -> :sswitch_2
        0x7f0901d2 -> :sswitch_2
        0x7f0901d4 -> :sswitch_3
        0x7f0901d6 -> :sswitch_0
    .end sparse-switch
.end method
