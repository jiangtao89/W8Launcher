.class public Lcom/lx/launcher8/download/DownloadChangeBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "DownloadChangeBroadcast.java"


# instance fields
.field private mPopupDialog:Lcom/lx/launcher8/view/PopupDialog;

.field private mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

.field private mTopAppDetailAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

.field private mTopAppSearchAct:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/lx/launcher8/setting/view/SettingView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mTopAppDetailAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mTopAppSearchAct:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    .line 41
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_download_broadcast_action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "FileSeed"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/download/FileSeed;

    .line 47
    .local v0, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-nez v0, :cond_1

    .line 94
    .end local v0           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    instance-of v2, v2, Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    if-eqz v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->refresh()V

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 88
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0258

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mTopAppDetailAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    if-eqz v2, :cond_4

    .line 54
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mTopAppDetailAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->refresh()V

    goto :goto_1

    .line 55
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mTopAppSearchAct:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    if-eqz v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mTopAppSearchAct:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->refresh()V

    goto :goto_1

    .line 61
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0257

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    move-object v1, p1

    .line 64
    .local v1, mContext:Landroid/content/Context;
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mPopupDialog:Lcom/lx/launcher8/view/PopupDialog;

    if-eqz v2, :cond_5

    .line 65
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mPopupDialog:Lcom/lx/launcher8/view/PopupDialog;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PopupDialog;->dismiss()V

    .line 67
    :cond_5
    new-instance v2, Lcom/lx/launcher8/view/PopupDialog;

    invoke-direct {v2, p1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mPopupDialog:Lcom/lx/launcher8/view/PopupDialog;

    .line 68
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;->mPopupDialog:Lcom/lx/launcher8/view/PopupDialog;

    const v3, 0x7f0a01c4

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v2

    .line 69
    const v3, 0x7f0a01c5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v2

    .line 70
    const v3, 0x7f0a01c9

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/download/DownloadChangeBroadcast$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast$1;-><init>(Lcom/lx/launcher8/download/DownloadChangeBroadcast;Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;)V

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v2

    .line 75
    const v3, 0x7f0a0078

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/download/DownloadChangeBroadcast$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast$2;-><init>(Lcom/lx/launcher8/download/DownloadChangeBroadcast;)V

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto/16 :goto_0

    .line 82
    .end local v1           #mContext:Landroid/content/Context;
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0256

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0255

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
