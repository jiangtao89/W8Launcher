.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenPaperDetailAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadStateChangeBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 704
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_broadcast_action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    const-string v1, "FileSeed"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/download/FileSeed;

    .line 706
    .local v0, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$13(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Lcom/lx/launcher8/setting/bean/PaperInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getVo()Lcom/lx/launcher8/setting/bean/VO;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    .end local v0           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_0
    :goto_0
    return-void

    .line 707
    .restart local v0       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_1
    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 723
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$13(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Lcom/lx/launcher8/setting/bean/PaperInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$14(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/ImageView;

    move-result-object v3

    #calls: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V
    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$16(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 709
    :sswitch_0
    const v1, 0x7f0a0257

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :sswitch_1
    const v1, 0x7f0a0256

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 715
    :sswitch_2
    const v1, 0x7f0a0255

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :sswitch_3
    const v1, 0x7f0a0258

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 707
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method
