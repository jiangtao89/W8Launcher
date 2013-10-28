.class Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/SettingDeskItemsAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 11
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/16 v6, 0x8

    const/high16 v10, -0x100

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 734
    div-int/lit8 v5, p2, 0x64

    packed-switch v5, :pswitch_data_0

    .line 844
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 736
    :pswitch_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->gaps:[I

    rem-int/lit16 v7, p2, 0xc8

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellGap(I)V

    .line 737
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 738
    const v6, 0x7f070001

    .line 737
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, gaps:[Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 740
    .local v1, data:Landroid/content/Intent;
    const-string v5, "extral_value"

    rem-int/lit16 v6, p2, 0xc8

    aget-object v6, v2, v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 742
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto :goto_0

    .line 745
    .end local v1           #data:Landroid/content/Intent;
    .end local v2           #gaps:[Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->background:[I

    rem-int/lit16 v7, p2, 0x12c

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 746
    rem-int/lit16 v5, p2, 0x12c

    if-nez v5, :cond_2

    .line 747
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$1(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 748
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$1(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppTextColor(I)V

    .line 753
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 754
    const/high16 v6, 0x7f07

    .line 753
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, back:[Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 756
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    rem-int/lit16 v6, p2, 0x12c

    aget-object v6, v0, v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 758
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 749
    .end local v0           #back:[Ljava/lang/String;
    .end local v1           #data:Landroid/content/Intent;
    :cond_2
    rem-int/lit16 v5, p2, 0x12c

    if-ne v5, v9, :cond_1

    .line 750
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$1(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 751
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$1(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppTextColor(I)V

    goto :goto_1

    .line 761
    :pswitch_3
    const/16 v5, 0x19a

    if-ge p2, v5, :cond_7

    .line 762
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->statusBar:[I

    rem-int/lit16 v8, p2, 0x190

    aget v4, v5, v8

    .line 763
    .local v4, statusIndex:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 764
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v8, v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mHoldTimeView:Landroid/view/View;

    if-eq v4, v9, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 766
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mStatusView:Landroid/view/View;

    const/4 v8, 0x2

    if-ge v4, v8, :cond_4

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 768
    if-nez v4, :cond_5

    .line 769
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    .end local v4           #statusIndex:I
    :goto_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #calls: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->startBarService()V
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$2(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V

    .line 783
    const/16 v5, 0x191

    if-eq p2, v5, :cond_0

    const/16 v5, 0x192

    if-eq p2, v5, :cond_0

    .line 784
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .restart local v4       #statusIndex:I
    :cond_3
    move v5, v7

    .line 765
    goto :goto_2

    :cond_4
    move v6, v7

    .line 767
    goto :goto_3

    .line 771
    :cond_5
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    if-ne v4, v9, :cond_6

    const v5, 0x7f0a01fa

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 773
    :cond_6
    const v5, 0x7f0a01f6

    goto :goto_5

    .line 775
    .end local v4           #statusIndex:I
    :cond_7
    const/16 v5, 0x1a4

    if-ge p2, v5, :cond_8

    .line 776
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->holdTime:[I

    .line 777
    rem-int/lit16 v7, p2, 0x19a

    aget v6, v6, v7

    .line 776
    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    goto :goto_4

    .line 779
    :cond_8
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->hideStatusBar:[I

    .line 780
    rem-int/lit16 v7, p2, 0x1a4

    aget v6, v6, v7

    .line 779
    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_4

    .line 787
    :pswitch_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$1(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->applistStyle:[I

    rem-int/lit16 v7, p2, 0x258

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    .line 788
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 791
    :pswitch_5
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 792
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->picPositions:[I

    .line 793
    rem-int/lit16 v7, p2, 0x2bc

    aget v6, v6, v7

    .line 792
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 795
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 798
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_6
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 799
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->textPositions:[I

    .line 800
    rem-int/lit16 v7, p2, 0x320

    aget v6, v6, v7

    .line 799
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 802
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 805
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_7
    const/16 v5, 0x4ba

    if-ge p2, v5, :cond_a

    .line 806
    rem-int/lit16 v3, p2, 0x4b0

    .line 807
    .local v3, index:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 808
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->specialFuns:[I

    aget v6, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    if-ne v3, v9, :cond_9

    .line 810
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mSpecialFunTileTextView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 813
    :cond_9
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 814
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 817
    .end local v1           #data:Landroid/content/Intent;
    .end local v3           #index:I
    :cond_a
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 818
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value1"

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->specialFunTileTexts:[I

    rem-int/lit16 v7, p2, 0x4ba

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 819
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 820
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 824
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_8
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 825
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->settingStyles:[I

    .line 826
    rem-int/lit16 v7, p2, 0x514

    aget v6, v6, v7

    .line 825
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 828
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 831
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_9
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 832
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    .line 833
    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->folderPopup:[I

    rem-int/lit16 v7, p2, 0x578

    aget v6, v6, v7

    .line 832
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 835
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    .line 837
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_a
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 838
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->screenStyle:[I

    .line 839
    rem-int/lit16 v7, p2, 0x5dc

    aget v6, v6, v7

    .line 838
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 840
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 841
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
