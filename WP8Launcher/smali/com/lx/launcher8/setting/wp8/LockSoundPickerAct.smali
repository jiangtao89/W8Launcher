.class public Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "LockSoundPickerAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_LOCK_SOUND:I = 0x1

.field private static final REQUEST_UNLOCK_SOUND:I = 0x2


# instance fields
.field private lockSoundLinear:Landroid/widget/LinearLayout;

.field private lockSoundText:Landroid/widget/TextView;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mMainView:Landroid/view/View;

.field private unlockSoundLinear:Landroid/widget/LinearLayout;

.field private unlockSoundText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method private createView()V
    .locals 4

    .prologue
    const/high16 v3, -0x100

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mMainView:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->lockSoundLinear:Landroid/widget/LinearLayout;

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->lockSoundLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->unlockSoundLinear:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->unlockSoundLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->lockSoundText:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->lockSoundText:Landroid/widget/TextView;

    const-string v1, "#dddddd"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->lockSoundText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->lockSoundText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Lcom/anall/screenlock/provider/LockSetting;->getLockSoundPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mMainView:Landroid/view/View;

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->unlockSoundText:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->unlockSoundText:Landroid/widget/TextView;

    const-string v1, "#dddddd"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->unlockSoundText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->unlockSoundText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Lcom/anall/screenlock/provider/LockSetting;->getUnLockSoundPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter "tv"
    .parameter "path"

    .prologue
    .line 62
    if-eqz p2, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    const v1, 0x7f0a023e

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v1, "sound_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, position:I
    sget-object v1, Lcom/lx/launcher8/util/Utils;->soundNameResources:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 68
    .end local v0           #position:I
    :cond_2
    const v1, 0x7f0a0240

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a0176

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 37
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->createView()V

    .line 38
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 39
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 90
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    if-eqz p3, :cond_4

    .line 91
    const-string v2, "extral_value"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->lockSoundText:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 93
    if-eqz v1, :cond_0

    const-string v2, "sound_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockSoundPath(Ljava/lang/String;)V

    .line 100
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/anall/screenlock/LockScreenService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    return-void

    .line 96
    .restart local v1       #path:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "locksound"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v0, file:Ljava/io/File;
    invoke-static {v1, v0}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/provider/LockSetting;->setLockSoundPath(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2, v4}, Lcom/anall/screenlock/provider/LockSetting;->setLockSoundPath(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0           #file:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-eqz p3, :cond_1

    .line 103
    const-string v2, "extral_value"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1       #path:Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->unlockSoundText:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 105
    if-eqz v1, :cond_5

    const-string v2, "sound_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 106
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2, v1}, Lcom/anall/screenlock/provider/LockSetting;->setUnLockSoundPath(Ljava/lang/String;)V

    .line 112
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/anall/screenlock/LockScreenService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 108
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "unlocksound"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .restart local v0       #file:Ljava/io/File;
    invoke-static {v1, v0}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/provider/LockSetting;->setUnLockSoundPath(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_7
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2, v4}, Lcom/anall/screenlock/provider/LockSetting;->setUnLockSoundPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 86
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_value"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getLockSoundPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 81
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "extral_value"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getUnLockSoundPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundPickerAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f090169
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
