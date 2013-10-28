.class Lcom/lx/launcher8/setting/SettingDeskItemsAct$9;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageTTransparency()V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$9;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$9;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 723
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$9;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 724
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 717
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 713
    return-void
.end method
