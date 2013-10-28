.class Lcom/anall/statusbar/StatusBarSettings$2;
.super Ljava/lang/Object;
.source "StatusBarSettings.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


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
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarSettings$2;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 3
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/lx/launcher8/view/SeekButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 384
    :goto_0
    :pswitch_0
    return-void

    .line 370
    :pswitch_1
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettings$2;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusDisplay(Z)V

    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettings$2;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusBattey(Z)V

    goto :goto_0

    .line 376
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettings$2;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    const/16 v2, 0x63

    invoke-virtual {v1, v0, v2}, Lcom/anall/statusbar/StatusBarSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 380
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettings$2;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarSettings;->access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->setStatusToast(Z)V

    .line 381
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettings$2;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    #getter for: Lcom/anall/statusbar/StatusBarSettings;->mDToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarSettings;->access$4(Lcom/anall/statusbar/StatusBarSettings;)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    .line 368
    :pswitch_data_0
    .packed-switch 0x7f0a0203
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
