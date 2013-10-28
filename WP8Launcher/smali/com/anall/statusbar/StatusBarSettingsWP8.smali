.class public Lcom/anall/statusbar/StatusBarSettingsWP8;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "StatusBarSettingsWP8.java"


# static fields
.field private static final DISPLAY_BATTEY_ID:I = 0xc8

.field private static final DISPLAY_RANGE_ID:I = 0x64

.field private static final NOTIFY_ACTIVE:I = 0x12c

.field private static final NOTIFY_TOAST:I = 0x190


# instance fields
.field private dropDownListener:Landroid/view/View$OnClickListener;

.field private mBetteryView:Landroid/view/View;

.field private mDShowView:Landroid/view/View;

.field private mDStatusView:Landroid/view/View;

.field private mDTimeView:Landroid/view/View;

.field private mDToastView:Landroid/view/View;

.field private mGlobalView:Landroid/view/View;

.field private mLListenView:Lcom/lx/launcher8/view/SettingLinear;

.field private mNActiveView:Landroid/view/View;

.field private mRootNotification:Landroid/widget/LinearLayout;

.field private mRootStatusBar:Landroid/widget/LinearLayout;

.field mTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

.field private margin:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 236
    new-instance v0, Lcom/anall/statusbar/StatusBarSettingsWP8$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/StatusBarSettingsWP8$1;-><init>(Lcom/anall/statusbar/StatusBarSettingsWP8;)V

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->dropDownListener:Landroid/view/View$OnClickListener;

    .line 323
    new-instance v0, Lcom/anall/statusbar/StatusBarSettingsWP8$2;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/StatusBarSettingsWP8$2;-><init>(Lcom/anall/statusbar/StatusBarSettingsWP8;)V

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/StatusBarSettingsWP8;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/anall/statusbar/StatusBarSettingsWP8;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/anall/statusbar/StatusBarSettingsWP8;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarSettingsWP8;->hideShowItems()V

    return-void
.end method

.method static synthetic access$4(Lcom/anall/statusbar/StatusBarSettingsWP8;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/anall/statusbar/StatusBarSettingsWP8;->changeNotificationStatus(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/anall/statusbar/StatusBarSettingsWP8;)Z
    .locals 1
    .parameter

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarSettingsWP8;->enableHit()Z

    move-result v0

    return v0
.end method

.method private createSeekbars(IIZ)Landroid/widget/LinearLayout;
    .locals 10
    .parameter "titleID"
    .parameter "barID"
    .parameter "isOpen"

    .prologue
    .line 112
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v2, layout:Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030066

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 118
    .local v1, itemLayout_01:Landroid/widget/LinearLayout;
    iget v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->margin:I

    iget v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->margin:I

    iget v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->margin:I

    iget v9, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->margin:I

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    const v6, 0x7f09018b

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 120
    .local v4, title:Landroid/widget/TextView;
    const/16 v6, 0x53

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    const v6, -0xacacad

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    const/high16 v6, 0x4180

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    const v6, 0x7f09018d

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, about:Landroid/widget/TextView;
    iget v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mTitleColorValue:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    if-eqz p3, :cond_0

    .line 127
    const v6, 0x7f0a0158

    invoke-virtual {p0, v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    const v6, 0x7f09018e

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 132
    .local v5, view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setVisibility(I)V

    .line 133
    invoke-virtual {v5, p2}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setId(I)V

    .line 134
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 135
    invoke-virtual {v5, p3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 136
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 137
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 142
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    return-object v2

    .line 129
    .end local v5           #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    :cond_0
    const v6, 0x7f0a0159

    invoke-virtual {p0, v6}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    .restart local v5       #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    :cond_1
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    goto :goto_1
.end method

.method private createTextTitle(I)Landroid/widget/TextView;
    .locals 5
    .parameter "titleID"

    .prologue
    .line 175
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, title:Landroid/widget/TextView;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    iget v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->margin:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->margin:I

    iget v3, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->margin:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    const v1, -0xacacad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    return-object v0
.end method

.method private createTitleDropDown(I[II)Landroid/view/View;
    .locals 6
    .parameter "titleID"
    .parameter "items"
    .parameter "selected"

    .prologue
    .line 153
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, layout:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 159
    invoke-direct {p0, p1}, Lcom/anall/statusbar/StatusBarSettingsWP8;->createTextTitle(I)Landroid/widget/TextView;

    move-result-object v3

    .line 160
    .local v3, title:Landroid/widget/TextView;
    new-instance v0, Lcom/anall/statusbar/DropDowmLinearLayout;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/anall/statusbar/DropDowmLinearLayout;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;)V

    .line 161
    .local v0, dropDown:Lcom/anall/statusbar/DropDowmLinearLayout;
    iget-object v4, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->dropDownListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p2, v4}, Lcom/anall/statusbar/DropDowmLinearLayout;->addChild([ILandroid/view/View$OnClickListener;)V

    .line 162
    const/4 v4, 0x0

    invoke-virtual {v0, p3, v4}, Lcom/anall/statusbar/DropDowmLinearLayout;->show(IZ)V

    .line 163
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object v4, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    return-object v1
.end method

.method private enableHit()Z
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/anall/statusbar/NotificationService;->isLaunching()Z

    move-result v0

    .line 390
    .local v0, active:Z
    if-nez v0, :cond_0

    .line 391
    const v1, 0x7f0a020a

    invoke-static {p0, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    .line 393
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private hideOrShowListen(ZZ)V
    .locals 5
    .parameter "launch"
    .parameter "visible"

    .prologue
    .line 377
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 382
    .local v1, vb:I
    :goto_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mTitleColorValue:I

    .line 383
    .local v0, textColor:I
    :goto_1
    iget-object v2, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mLListenView:Lcom/lx/launcher8/view/SettingLinear;

    const v3, 0x7f0a0209

    invoke-virtual {p0, v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 386
    return-void

    .line 377
    .end local v0           #textColor:I
    .end local v1           #vb:I
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 382
    .restart local v1       #vb:I
    :cond_1
    const v0, -0xacacad

    goto :goto_1
.end method

.method private hideShowItems()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 200
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v0

    .line 201
    .local v0, statusbar:I
    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDShowView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDTimeView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mGlobalView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mBetteryView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDShowView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDTimeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mGlobalView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mBetteryView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDShowView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDTimeView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mGlobalView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mBetteryView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 225
    :pswitch_3
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDShowView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDTimeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mGlobalView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mBetteryView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private matchSelected([II)I
    .locals 3
    .parameter "items"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p1, :cond_1

    move v0, v1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_2

    move v0, v1

    .line 193
    goto :goto_0

    .line 189
    :cond_2
    aget v2, p1, v0

    if-eq v2, p2, :cond_0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setupStatusBar()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x3

    .line 58
    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v2, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v2, rootParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-array v5, v10, [I

    fill-array-data v5, :array_0

    .line 63
    .local v5, statusBar:[I
    new-array v7, v10, [I

    aput v9, v7, v9

    aput v11, v7, v11

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/anall/statusbar/StatusBarSettingsWP8;->matchSelected([II)I

    move-result v3

    .line 64
    .local v3, selected:I
    const v7, 0x7f0a014e

    invoke-direct {p0, v7, v5, v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->createTitleDropDown(I[II)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDStatusView:Landroid/view/View;

    .line 66
    new-array v1, v10, [I

    fill-array-data v1, :array_1

    .line 67
    .local v1, pullDown:[I
    new-array v7, v10, [I

    aput v9, v7, v9

    aput v11, v7, v11

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/anall/statusbar/StatusBarSettingsWP8;->matchSelected([II)I

    move-result v3

    .line 68
    const v7, 0x7f0a01f6

    invoke-direct {p0, v7, v1, v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->createTitleDropDown(I[II)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDShowView:Landroid/view/View;

    .line 70
    const/4 v7, 0x4

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    .line 71
    .local v0, holdTime:[I
    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_3

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusHoldTime()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/anall/statusbar/StatusBarSettingsWP8;->matchSelected([II)I

    move-result v3

    .line 72
    const v7, 0x7f0a01fa

    invoke-direct {p0, v7, v0, v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->createTitleDropDown(I[II)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDTimeView:Landroid/view/View;

    .line 74
    const v7, 0x7f0a0203

    const/16 v8, 0x64

    iget-object v9, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusDispaly()Z

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/anall/statusbar/StatusBarSettingsWP8;->createSeekbars(IIZ)Landroid/widget/LinearLayout;

    move-result-object v7

    iput-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mGlobalView:Landroid/view/View;

    .line 75
    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mGlobalView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    const v7, 0x7f0a0204

    const/16 v8, 0xc8

    iget-object v9, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusBattey()Z

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/anall/statusbar/StatusBarSettingsWP8;->createSeekbars(IIZ)Landroid/widget/LinearLayout;

    move-result-object v7

    iput-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mBetteryView:Landroid/view/View;

    .line 78
    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mBetteryView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    const v7, 0x7f0a0207

    const/16 v8, 0x12c

    invoke-static {}, Lcom/anall/statusbar/NotificationService;->isLaunching()Z

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/anall/statusbar/StatusBarSettingsWP8;->createSeekbars(IIZ)Landroid/widget/LinearLayout;

    move-result-object v7

    iput-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mNActiveView:Landroid/view/View;

    .line 81
    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mNActiveView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v4, Lcom/lx/launcher8/view/SettingLinear;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/view/SettingLinear;-><init>(Landroid/content/Context;)V

    .line 84
    .local v4, sl:Lcom/lx/launcher8/view/SettingLinear;
    const v7, 0x7f0a0209

    invoke-virtual {p0, v7}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v13, v12}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 85
    const v7, 0x7f0a020b

    invoke-virtual {p0, v7}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v13, v12}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 86
    new-instance v7, Lcom/anall/statusbar/StatusBarSettingsWP8$3;

    invoke-direct {v7, p0}, Lcom/anall/statusbar/StatusBarSettingsWP8$3;-><init>(Lcom/anall/statusbar/StatusBarSettingsWP8;)V

    invoke-virtual {v4, v7}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    iput-object v4, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mLListenView:Lcom/lx/launcher8/view/SettingLinear;

    .line 99
    new-array v6, v10, [I

    fill-array-data v6, :array_4

    .line 100
    .local v6, toastTime:[I
    new-array v7, v10, [I

    fill-array-data v7, :array_5

    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusTTime()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/anall/statusbar/StatusBarSettingsWP8;->matchSelected([II)I

    move-result v3

    .line 101
    const v7, 0x7f0a020c

    invoke-direct {p0, v7, v6, v3}, Lcom/anall/statusbar/StatusBarSettingsWP8;->createTitleDropDown(I[II)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDToastView:Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarSettingsWP8;->hideShowItems()V

    .line 104
    return-void

    .line 62
    :array_0
    .array-data 0x4
        0xf1t 0x1t 0xat 0x7ft
        0xf2t 0x1t 0xat 0x7ft
        0xf3t 0x1t 0xat 0x7ft
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0xf7t 0x1t 0xat 0x7ft
        0xf8t 0x1t 0xat 0x7ft
        0xf9t 0x1t 0xat 0x7ft
    .end array-data

    .line 70
    :array_2
    .array-data 0x4
        0xfdt 0x1t 0xat 0x7ft
        0xfet 0x1t 0xat 0x7ft
        0xfft 0x1t 0xat 0x7ft
        0x0t 0x2t 0xat 0x7ft
    .end array-data

    .line 71
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 99
    :array_4
    .array-data 0x4
        0xfct 0x1t 0xat 0x7ft
        0xfdt 0x1t 0xat 0x7ft
        0xfet 0x1t 0xat 0x7ft
    .end array-data

    .line 100
    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected initData()V
    .locals 5

    .prologue
    const v4, 0x7f0a0027

    .line 40
    iget-object v2, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const/high16 v2, 0x4140

    invoke-static {p0, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->margin:I

    .line 42
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v1, scrollStatus:Landroid/widget/ScrollView;
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, scrollNotification:Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    .line 45
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootNotification:Landroid/widget/LinearLayout;

    .line 46
    iget-object v2, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 47
    iget-object v2, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mRootNotification:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarSettingsWP8;->setupStatusBar()V

    .line 50
    invoke-virtual {p0, v4}, Lcom/anall/statusbar/StatusBarSettingsWP8;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/anall/statusbar/StatusBarSettingsWP8;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 366
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 367
    invoke-static {}, Lcom/anall/statusbar/NotificationService;->isLaunching()Z

    move-result v0

    .line 368
    .local v0, activeLaunch:Z
    iget-object v4, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mNActiveView:Landroid/view/View;

    const v6, 0x7f09018d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 369
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    const v4, 0x7f0a0158

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 370
    :cond_0
    iget-object v4, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mNActiveView:Landroid/view/View;

    const/16 v6, 0x12c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 371
    .local v1, sb:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 372
    :cond_1
    iget-object v4, p0, Lcom/anall/statusbar/StatusBarSettingsWP8;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v2

    .line 373
    .local v2, statuStyle:I
    if-eq v2, v5, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/anall/statusbar/StatusBarSettingsWP8;->hideOrShowListen(ZZ)V

    .line 374
    return-void

    .line 369
    .end local v1           #sb:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    .end local v2           #statuStyle:I
    :cond_2
    const v4, 0x7f0a0159

    goto :goto_0

    .restart local v1       #sb:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    .restart local v2       #statuStyle:I
    :cond_3
    move v4, v5

    .line 373
    goto :goto_1
.end method
