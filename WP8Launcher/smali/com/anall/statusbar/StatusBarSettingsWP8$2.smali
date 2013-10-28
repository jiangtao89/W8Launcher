.class Lcom/anall/statusbar/StatusBarSettingsWP8$2;
.super Ljava/lang/Object;
.source "StatusBarSettingsWP8.java"

# interfaces
.implements Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;


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
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V
    .locals 8
    .parameter "v"
    .parameter "enable"

    .prologue
    const v7, 0x7f0a0159

    const v6, 0x7f0a0158

    const v5, 0x7f09018d

    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, parent:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 329
    :sswitch_0
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusDisplay(Z)V

    .line 330
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$1(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f0a0203

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #parent:Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 331
    .restart local v2       #parent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 332
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    .local v0, about:Landroid/widget/TextView;
    if-eqz p2, :cond_1

    .line 334
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    invoke-virtual {v3, v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    invoke-virtual {v3, v7}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    .end local v0           #about:Landroid/widget/TextView;
    :sswitch_1
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusBattey(Z)V

    .line 342
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$1(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f0a0204

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #parent:Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 343
    .restart local v2       #parent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 344
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 345
    .restart local v0       #about:Landroid/widget/TextView;
    if-eqz p2, :cond_2

    .line 346
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    invoke-virtual {v3, v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    invoke-virtual {v3, v7}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    .end local v0           #about:Landroid/widget/TextView;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    const/16 v4, 0x63

    invoke-virtual {v3, v1, v4}, Lcom/anall/statusbar/StatusBarSettingsWP8;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 357
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #calls: Lcom/anall/statusbar/StatusBarSettingsWP8;->enableHit()Z
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$5(Lcom/anall/statusbar/StatusBarSettingsWP8;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_0

    .line 358
    :cond_3
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #getter for: Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusToast(Z)V

    goto/16 :goto_0

    .line 327
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
    .end sparse-switch
.end method
