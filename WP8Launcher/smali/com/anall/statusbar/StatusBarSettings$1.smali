.class Lcom/anall/statusbar/StatusBarSettings$1;
.super Ljava/lang/Object;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/StatusBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/StatusBarSettings;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 13
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x3

    .line 282
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 283
    .local v4, paretView:Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v5

    .line 354
    .local v5, statusbar:I
    if-eq v5, v9, :cond_1

    if-ne v5, v8, :cond_7

    .line 355
    :cond_1
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    const-class v9, Lcom/anall/statusbar/BarService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/anall/statusbar/StatusBarSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 360
    :goto_1
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #calls: Lcom/anall/statusbar/StatusBarSettings;->hideShowItems()V
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$2(Lcom/anall/statusbar/StatusBarSettings;)V

    .line 361
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #calls: Lcom/anall/statusbar/StatusBarSettings;->changeNotificationStatus(Z)V
    invoke-static {v6, v10}, Lcom/anall/statusbar/StatusBarSettings;->access$3(Lcom/anall/statusbar/StatusBarSettings;Z)V

    .line 362
    return-void

    .line 285
    .end local v5           #statusbar:I
    :pswitch_1
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 286
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarSettings;->finish()V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_0

    .line 292
    :pswitch_3
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$1(Lcom/anall/statusbar/StatusBarSettings;)Landroid/widget/LinearLayout;

    move-result-object v6

    const v7, 0x7f0a01f6

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 293
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 294
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 295
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Landroid/widget/RadioGroup;

    if-eqz v6, :cond_2

    .line 297
    check-cast v0, Landroid/widget/RadioGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 298
    .local v2, id:I
    const v6, 0x7f0a01f8

    if-ne v2, v6, :cond_3

    .line 299
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 294
    .end local v2           #id:I
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 300
    .restart local v2       #id:I
    :cond_3
    const v6, 0x7f0a01f9

    if-ne v2, v6, :cond_4

    .line 301
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_3

    .line 303
    :cond_4
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    goto :goto_3

    .line 310
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #parent:Landroid/view/ViewGroup;
    :pswitch_4
    if-eqz v4, :cond_0

    .line 311
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusTTime(I)V

    goto/16 :goto_0

    .line 315
    :pswitch_5
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0a01fa

    if-ne v6, v7, :cond_5

    .line 316
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    .line 320
    :goto_4
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarSettings;->finish()V

    goto/16 :goto_0

    .line 318
    :cond_5
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusTTime(I)V

    goto :goto_4

    .line 323
    :pswitch_6
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0a01fa

    if-ne v6, v7, :cond_6

    .line 324
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    .line 328
    :goto_5
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarSettings;->finish()V

    goto/16 :goto_0

    .line 326
    :cond_6
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusTTime(I)V

    goto :goto_5

    .line 331
    :pswitch_7
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    .line 332
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarSettings;->finish()V

    goto/16 :goto_0

    .line 335
    :pswitch_8
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusHoldTime(I)V

    .line 336
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarSettings;->finish()V

    goto/16 :goto_0

    .line 339
    :pswitch_9
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 340
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarSettings;->finish()V

    goto/16 :goto_0

    .line 343
    :pswitch_a
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 344
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarSettings;->finish()V

    goto/16 :goto_0

    .line 347
    :pswitch_b
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v6}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 348
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    invoke-virtual {v6}, Lcom/anall/statusbar/StatusBarSettings;->finish()V

    goto/16 :goto_0

    .line 357
    .restart local v5       #statusbar:I
    :cond_7
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettings$1;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    const-class v9, Lcom/anall/statusbar/BarService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/anall/statusbar/StatusBarSettings;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 283
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
