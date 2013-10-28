.class Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$10;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageTTransparency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

.field private final synthetic val$seekBarText2:Lcom/lx/launcher8/view/DragSeekBar2;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;Lcom/lx/launcher8/view/DragSeekBar2;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$10;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$10;->val$seekBarText2:Lcom/lx/launcher8/view/DragSeekBar2;

    .line 721
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
    .line 724
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$10;->val$seekBarText2:Lcom/lx/launcher8/view/DragSeekBar2;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/DragSeekBar2;->getProgress()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 725
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$10;->val$seekBarText2:Lcom/lx/launcher8/view/DragSeekBar2;

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/view/DragSeekBar2;->setProgress(I)V

    .line 726
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 728
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 730
    return-void
.end method
