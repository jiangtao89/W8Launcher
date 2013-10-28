.class public Lcom/app/download/DownloadManagerAct;
.super Lcom/app/common/MainActivity;
.source "DownloadManagerAct.java"


# instance fields
.field final REFRESH_CODE:I

.field protected choseArray:[Ljava/lang/String;

.field protected choseArray1:[Ljava/lang/String;

.field protected final choseArray2:[Ljava/lang/String;

.field protected choseArray3:[Ljava/lang/String;

.field final delay:I

.field protected mAdapter:Lcom/app/download/ExpandableListAdapter;

.field protected mChildClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected mDownloadManager:Lcom/app/download/bean/DownloadManager;

.field protected mExListView:Landroid/widget/ExpandableListView;

.field private mIsViewRefreshing:Z

.field protected mRecodeInfo:Lcom/app/download/bean/RecodeInfo;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Lcom/app/common/MainActivity;-><init>()V

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u505c\u6b62\u4e0b\u8f7d"

    aput-object v1, v0, v3

    const-string v1, "\u5220\u9664\u4efb\u52a1"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/app/download/DownloadManagerAct;->choseArray:[Ljava/lang/String;

    .line 29
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    aput-object v1, v0, v3

    const-string v1, "\u5220\u9664\u4efb\u52a1"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/app/download/DownloadManagerAct;->choseArray1:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6253\u5f00\u6587\u4ef6"

    aput-object v1, v0, v3

    const-string v1, "\u5220\u9664\u4efb\u52a1"

    aput-object v1, v0, v4

    const-string v1, "\u91cd\u65b0\u4e0b\u8f7d"

    aput-object v1, v0, v5

    const-string v1, "\u91cd\u65b0\u547d\u540d"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u6587\u4ef6\u4fe1\u606f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/app/download/DownloadManagerAct;->choseArray2:[Ljava/lang/String;

    .line 31
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    aput-object v1, v0, v3

    const-string v1, "\u91cd\u65b0\u4e0b\u8f7d"

    aput-object v1, v0, v4

    const-string v1, "\u5220\u9664\u4efb\u52a1"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/app/download/DownloadManagerAct;->choseArray3:[Ljava/lang/String;

    .line 96
    iput-boolean v3, p0, Lcom/app/download/DownloadManagerAct;->mIsViewRefreshing:Z

    .line 97
    iput v4, p0, Lcom/app/download/DownloadManagerAct;->REFRESH_CODE:I

    .line 98
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/app/download/DownloadManagerAct;->delay:I

    .line 138
    new-instance v0, Lcom/app/download/DownloadManagerAct$1;

    invoke-direct {v0, p0}, Lcom/app/download/DownloadManagerAct$1;-><init>(Lcom/app/download/DownloadManagerAct;)V

    iput-object v0, p0, Lcom/app/download/DownloadManagerAct;->mChildClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;

    return-object v0
.end method


# virtual methods
.method public chose(I)V
    .locals 10
    .parameter "childPosition"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 160
    const/4 v8, 0x0

    .line 161
    .local v8, groupPosition:I
    invoke-virtual {p0, v9, p1}, Lcom/app/download/DownloadManagerAct;->getSelectedFileSeed(II)Lcom/app/download/bean/FileSeed;

    move-result-object v7

    .line 162
    .local v7, fileSeed:Lcom/app/download/bean/FileSeed;
    if-nez v7, :cond_0

    .line 225
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/app/download/DownloadManagerAct;->choseArray1:[Ljava/lang/String;

    .line 167
    .local v3, array:[Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v3, p0, Lcom/app/download/DownloadManagerAct;->choseArray:[Ljava/lang/String;

    .line 170
    :cond_1
    const/16 v1, 0x20

    invoke-virtual {v7, v1}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v3, p0, Lcom/app/download/DownloadManagerAct;->choseArray3:[Ljava/lang/String;

    .line 173
    :cond_2
    new-instance v0, Lcom/app/common/adapter/ItemHintMoreAdapter;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;

    .line 174
    sget-object v5, Lcom/app/common/config/Resources;->doc:Ljava/lang/String;

    .line 173
    invoke-static {v1, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    aput v1, v2, v9

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/app/common/adapter/ItemHintMoreAdapter;-><init>(Landroid/content/Context;[I[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 176
    .local v0, adapter:Lcom/app/common/adapter/ItemHintMoreAdapter;
    new-instance v6, Lcom/app/download/DownloadManagerAct$3;

    invoke-direct {v6, p0, v7}, Lcom/app/download/DownloadManagerAct$3;-><init>(Lcom/app/download/DownloadManagerAct;Lcom/app/download/bean/FileSeed;)V

    .line 224
    .local v6, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public chose1(I)V
    .locals 11
    .parameter "childPosition"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 228
    const/4 v9, 0x1

    .line 229
    .local v9, groupPosition:I
    invoke-virtual {p0, v1, p1}, Lcom/app/download/DownloadManagerAct;->getSelectedFileSeed(II)Lcom/app/download/bean/FileSeed;

    move-result-object v8

    .line 230
    .local v8, fileSeed:Lcom/app/download/bean/FileSeed;
    if-nez v8, :cond_0

    .line 264
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/app/common/adapter/ItemHintMoreAdapter;

    new-array v2, v1, [I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;

    .line 234
    sget-object v5, Lcom/app/common/config/Resources;->doc:Ljava/lang/String;

    .line 233
    invoke-static {v3, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 234
    iget-object v3, p0, Lcom/app/download/DownloadManagerAct;->choseArray2:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/app/common/adapter/ItemHintMoreAdapter;-><init>(Landroid/content/Context;[I[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 236
    .local v0, adapter:Lcom/app/common/adapter/ItemHintMoreAdapter;
    new-instance v6, Lcom/app/download/DownloadManagerAct$4;

    invoke-direct {v6, p0, v8}, Lcom/app/download/DownloadManagerAct$4;-><init>(Lcom/app/download/DownloadManagerAct;Lcom/app/download/bean/FileSeed;)V

    .line 258
    .local v6, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 259
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 260
    .local v10, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;

    const/high16 v2, 0x4307

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 261
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMinimumWidth(I)V

    .line 262
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 263
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public createView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 35
    invoke-super {p0}, Lcom/app/common/MainActivity;->createView()V

    .line 36
    new-instance v1, Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    .line 37
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;

    .line 39
    iget-object v2, p0, Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;

    sget-object v3, Lcom/app/common/config/Resources;->titilebar_right:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 38
    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->decodeDrawable(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object v0

    .line 40
    .local v0, ss:Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mTitle:Lcom/app/common/view/TitleBar;

    const-string v2, "\u4e0b\u8f7d\u7ba1\u7406"

    invoke-virtual {v1, v5, v2, v0}, Lcom/app/common/view/TitleBar;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mTitle:Lcom/app/common/view/TitleBar;

    iget-object v1, v1, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    const/high16 v2, 0x4198

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 42
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v5}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 45
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v4}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 46
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mMainContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    .line 49
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v1, v1, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    iput-object v1, p0, Lcom/app/download/DownloadManagerAct;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    .line 51
    new-instance v1, Lcom/app/download/ExpandableListAdapter;

    invoke-direct {v1, p0}, Lcom/app/download/ExpandableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/app/download/DownloadManagerAct;->mAdapter:Lcom/app/download/ExpandableListAdapter;

    .line 52
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/app/download/DownloadManagerAct;->mAdapter:Lcom/app/download/ExpandableListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 53
    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v4}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 55
    return-void
.end method

.method public exec()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mTitle:Lcom/app/common/view/TitleBar;

    iget-object v0, v0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    new-instance v1, Lcom/app/download/DownloadManagerAct$2;

    invoke-direct {v1, p0}, Lcom/app/download/DownloadManagerAct$2;-><init>(Lcom/app/download/DownloadManagerAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mExListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/app/download/DownloadManagerAct;->mChildClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 66
    return-void
.end method

.method public getSelectedFileSeed(II)Lcom/app/download/bean/FileSeed;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 267
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v0, p2}, Lcom/app/download/bean/RecodeInfo;->FinishGet(I)Lcom/app/download/bean/FileSeed;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :cond_0
    if-nez p1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v0, p2}, Lcom/app/download/bean/RecodeInfo;->NotFinishGet(I)Lcom/app/download/bean/FileSeed;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMsg(ILandroid/os/Message;)V
    .locals 4
    .parameter "codeNum"
    .parameter "msg"

    .prologue
    .line 100
    iget v0, p2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-boolean v0, p0, Lcom/app/download/DownloadManagerAct;->mIsViewRefreshing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mAdapter:Lcom/app/download/ExpandableListAdapter;

    invoke-virtual {v0}, Lcom/app/download/ExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v0, v0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v0}, Lcom/app/download/bean/RecodeInfo;->saveToFile()V

    .line 93
    invoke-super {p0}, Lcom/app/common/MainActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/app/common/MainActivity;->onPause()V

    .line 71
    invoke-virtual {p0}, Lcom/app/download/DownloadManagerAct;->sotpViewRefreshListener()V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/app/common/MainActivity;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/app/download/DownloadManagerAct;->startViewRefreshListener()V

    .line 79
    invoke-virtual {p0}, Lcom/app/download/DownloadManagerAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 80
    .local v2, mIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, mBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 82
    const-string v3, "FileSeed"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "FileSeed"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/app/download/bean/FileSeed;

    .line 84
    .local v1, mFileSeed:Lcom/app/download/bean/FileSeed;
    const-string v3, "FileSeed"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    invoke-virtual {v3, p0, v1}, Lcom/app/download/bean/DownloadManager;->openFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 88
    .end local v1           #mFileSeed:Lcom/app/download/bean/FileSeed;
    :cond_0
    return-void
.end method

.method protected sotpViewRefreshListener()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/download/DownloadManagerAct;->mIsViewRefreshing:Z

    .line 134
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method

.method protected startViewRefreshListener()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-boolean v0, p0, Lcom/app/download/DownloadManagerAct;->mIsViewRefreshing:Z

    if-nez v0, :cond_0

    .line 127
    iput-boolean v1, p0, Lcom/app/download/DownloadManagerAct;->mIsViewRefreshing:Z

    .line 128
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    :cond_0
    return-void
.end method
