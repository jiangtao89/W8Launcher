.class Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    .line 805
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

    .line 809
    div-int/lit8 v5, p2, 0x64

    packed-switch v5, :pswitch_data_0

    .line 917
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 811
    :pswitch_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->gaps:[I

    rem-int/lit16 v7, p2, 0xc8

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellGap(I)V

    .line 812
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, gaps:[Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 814
    .local v1, data:Landroid/content/Intent;
    const-string v5, "extral_value"

    rem-int/lit16 v6, p2, 0xc8

    aget-object v6, v2, v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 816
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto :goto_0

    .line 819
    .end local v1           #data:Landroid/content/Intent;
    .end local v2           #gaps:[Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->background:[I

    rem-int/lit16 v7, p2, 0x12c

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 820
    rem-int/lit16 v5, p2, 0x12c

    if-nez v5, :cond_2

    .line 821
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v5

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5, v10}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppTextColor(I)V

    .line 825
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, back:[Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 827
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    rem-int/lit16 v6, p2, 0x12c

    aget-object v6, v0, v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 829
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 822
    .end local v0           #back:[Ljava/lang/String;
    .end local v1           #data:Landroid/content/Intent;
    :cond_2
    rem-int/lit16 v5, p2, 0x12c

    if-ne v5, v9, :cond_1

    .line 823
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v5

    if-ne v5, v10, :cond_1

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5, v8}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppTextColor(I)V

    goto :goto_1

    .line 832
    :pswitch_3
    const/16 v5, 0x19a

    if-ge p2, v5, :cond_7

    .line 833
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->statusBar:[I

    rem-int/lit16 v8, p2, 0x190

    aget v4, v5, v8

    .line 834
    .local v4, statusIndex:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 835
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v8, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mHoldTimeView:Landroid/view/View;

    if-eq v4, v9, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mStatusView:Landroid/view/View;

    const/4 v8, 0x2

    if-ge v4, v8, :cond_4

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 837
    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    .end local v4           #statusIndex:I
    :goto_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #calls: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->startBarService()V
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$1(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    .line 848
    const/16 v5, 0x191

    if-eq p2, v5, :cond_0

    const/16 v5, 0x192

    if-eq p2, v5, :cond_0

    .line 849
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .restart local v4       #statusIndex:I
    :cond_3
    move v5, v7

    .line 835
    goto :goto_2

    :cond_4
    move v6, v7

    .line 836
    goto :goto_3

    .line 839
    :cond_5
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    if-ne v4, v9, :cond_6

    const v5, 0x7f0a01fa

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_6
    const v5, 0x7f0a01f6

    goto :goto_5

    .line 842
    .end local v4           #statusIndex:I
    :cond_7
    const/16 v5, 0x1a4

    if-ge p2, v5, :cond_8

    .line 843
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->holdTime:[I

    rem-int/lit16 v7, p2, 0x19a

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    goto :goto_4

    .line 845
    :cond_8
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->hideStatusBar:[I

    rem-int/lit16 v7, p2, 0x1a4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_4

    .line 852
    :pswitch_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->applistStyle:[I

    rem-int/lit16 v7, p2, 0x258

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    .line 853
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 856
    :pswitch_5
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 857
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->picPositions:[I

    rem-int/lit16 v7, p2, 0x2bc

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 859
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 862
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_6
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 863
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textPositions:[I

    rem-int/lit16 v7, p2, 0x320

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 864
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 865
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 868
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_7
    const/16 v5, 0x4ba

    if-ge p2, v5, :cond_a

    .line 869
    rem-int/lit16 v3, p2, 0x4b0

    .line 870
    .local v3, index:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 871
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->specialFuns:[I

    aget v6, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 872
    if-ne v3, v9, :cond_9

    .line 873
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mSpecialFunTileTextView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 876
    :cond_9
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 877
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 880
    .end local v1           #data:Landroid/content/Intent;
    .end local v3           #index:I
    :cond_a
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 881
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value1"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->specialFunTileTexts:[I

    rem-int/lit16 v7, p2, 0x4ba

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 883
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 887
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_8
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 888
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->settingStyles:[I

    rem-int/lit16 v7, p2, 0x3e8

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 889
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 890
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 893
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_9
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 894
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderDisplay:[I

    rem-int/lit16 v7, p2, 0x514

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 895
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 896
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 899
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_a
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 900
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderAnim:[I

    rem-int/lit16 v7, p2, 0x578

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 902
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 905
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_b
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 906
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderPopup:[I

    rem-int/lit16 v7, p2, 0x5dc

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 908
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 911
    .end local v1           #data:Landroid/content/Intent;
    :pswitch_c
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 912
    .restart local v1       #data:Landroid/content/Intent;
    const-string v5, "extral_value"

    rem-int/lit16 v6, p2, 0x640

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 914
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto/16 :goto_0

    .line 809
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
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
