.class Lcom/anall/statusbar/StatusBarSettingsWP8$1;
.super Ljava/lang/Object;
.source "StatusBarSettingsWP8.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/StatusBarSettingsWP8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarSettingsWP8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x3

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 240
    .local v1, drop:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    instance-of v6, v1, Lcom/anall/statusbar/DropDowmLinearLayout;

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 241
    check-cast v6, Lcom/anall/statusbar/DropDowmLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/anall/statusbar/DropDowmLinearLayout;->selected(I)V

    :cond_0
    move-object v6, v1

    .line 243
    check-cast v6, Lcom/anall/statusbar/DropDowmLinearLayout;

    invoke-virtual {v6}, Lcom/anall/statusbar/DropDowmLinearLayout;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 320
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #drop:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 245
    .restart local v1       #drop:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 311
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v5

    .line 312
    .local v5, statusbar:I
    if-eq v5, v9, :cond_3

    if-ne v5, v8, :cond_9

    .line 313
    :cond_3
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    const-class v9, Lcom/anall/statusbar/BarService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/anall/statusbar/StatusBarSettingsWP8;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 318
    :goto_2
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #calls: Lcom/anall/statusbar/StatusBarSettingsWP8;->hideShowItems()V
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$3(Lcom/anall/statusbar/StatusBarSettingsWP8;)V

    .line 319
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #calls: Lcom/anall/statusbar/StatusBarSettingsWP8;->changeNotificationStatus(Z)V
    invoke-static {v6, v10}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$4(Lcom/anall/statusbar/StatusBarSettingsWP8;Z)V

    goto :goto_0

    .line 247
    .end local v5           #statusbar:I
    :pswitch_1
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_1

    .line 250
    :pswitch_2
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_1

    .line 253
    :pswitch_3
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$1(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/widget/LinearLayout;

    move-result-object v6

    const v7, 0x7f0a01f6

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 254
    .local v4, parent:Landroid/view/ViewGroup;
    if-eqz v4, :cond_2

    .line 255
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 256
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/anall/statusbar/DropDowmLinearLayout;

    if-eqz v6, :cond_4

    .line 258
    check-cast v0, Lcom/anall/statusbar/DropDowmLinearLayout;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/anall/statusbar/DropDowmLinearLayout;->getSelectedChildID()I

    move-result v3

    .line 259
    .local v3, id:I
    const v6, 0x7f0a01f8

    if-ne v3, v6, :cond_5

    .line 260
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 255
    .end local v3           #id:I
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 261
    .restart local v3       #id:I
    :cond_5
    const v6, 0x7f0a01f9

    if-ne v3, v6, :cond_6

    .line 262
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_4

    .line 264
    :cond_6
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_4

    .line 271
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v4           #parent:Landroid/view/ViewGroup;
    :pswitch_4
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDToastView:Landroid/view/View;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$2(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/view/View;

    move-result-object v6

    if-ne v1, v6, :cond_2

    .line 272
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusTTime(I)V

    goto/16 :goto_1

    .line 276
    :pswitch_5
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDToastView:Landroid/view/View;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$2(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/view/View;

    move-result-object v6

    if-ne v1, v6, :cond_7

    .line 277
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusTTime(I)V

    goto/16 :goto_1

    .line 279
    :cond_7
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    goto/16 :goto_1

    .line 283
    :pswitch_6
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDToastView:Landroid/view/View;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$2(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/view/View;

    move-result-object v6

    if-ne v1, v6, :cond_8

    .line 284
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusTTime(I)V

    goto/16 :goto_1

    .line 286
    :cond_8
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    goto/16 :goto_1

    .line 290
    :pswitch_7
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDToastView:Landroid/view/View;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$2(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/view/View;

    move-result-object v6

    if-eq v1, v6, :cond_2

    .line 291
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    goto/16 :goto_1

    .line 295
    :pswitch_8
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDToastView:Landroid/view/View;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$2(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/view/View;

    move-result-object v6

    if-eq v1, v6, :cond_2

    .line 296
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    goto/16 :goto_1

    .line 300
    :pswitch_9
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto/16 :goto_1

    .line 303
    :pswitch_a
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto/16 :goto_1

    .line 306
    :pswitch_b
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto/16 :goto_1

    .line 315
    .restart local v5       #statusbar:I
    :cond_9
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    const-class v9, Lcom/anall/statusbar/BarService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/anall/statusbar/StatusBarSettingsWP8;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_2

    .line 245
    :pswitch_data_0
    .packed-switch 0x7f0a01f1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
