.class public Lcom/anall/statusbar/StatusBarSettings;
.super Lcom/lx/launcher8/setting/PageSetAct;
.source "StatusBarSettings.java"


# instance fields
.field private mDShowView:Landroid/view/View;

.field private mDStatusView:Landroid/view/View;

.field private mDTimeView:Landroid/view/View;

.field private mDToastView:Landroid/view/View;

.field private mLListenView:Landroid/view/View;

.field private mNActiveView:Landroid/view/View;

.field private mRootNotification:Landroid/widget/LinearLayout;

.field private mRootStatusBar:Landroid/widget/LinearLayout;

.field mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

.field private mWPSeekView:Landroid/view/View;

.field private margin:I

.field private onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lx/launcher8/setting/PageSetAct;-><init>()V

    .line 279
    new-instance v0, Lcom/anall/statusbar/StatusBarSettings$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/StatusBarSettings$1;-><init>(Lcom/anall/statusbar/StatusBarSettings;)V

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarSettings;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 365
    new-instance v0, Lcom/anall/statusbar/StatusBarSettings$2;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/StatusBarSettings$2;-><init>(Lcom/anall/statusbar/StatusBarSettings;)V

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarSettings;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/StatusBarSettings;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anall/statusbar/StatusBarSettings;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/anall/statusbar/StatusBarSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarSettings;->hideShowItems()V

    return-void
.end method

.method static synthetic access$3(Lcom/anall/statusbar/StatusBarSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/anall/statusbar/StatusBarSettings;->changeNotificationStatus(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/anall/statusbar/StatusBarSettings;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarSettings;->mDToastView:Landroid/view/View;

    return-object v0
.end method

.method private createRadioGroup([II)Landroid/widget/RadioGroup;
    .locals 10
    .parameter "text"
    .parameter "selected"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 251
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 252
    .local v1, group:Landroid/widget/RadioGroup;
    const v5, 0x7f0201e4

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 253
    invoke-virtual {v1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 254
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    iget v6, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    invoke-virtual {v3, v5, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/anall/statusbar/StatusBarSettings;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 276
    return-object v1

    .line 258
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03005f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 259
    .local v0, btn:Landroid/widget/RadioButton;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x2

    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    aget v5, p1, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setText(I)V

    .line 262
    aget v5, p1, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 263
    if-ne v2, p2, :cond_1

    .line 264
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 266
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 267
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_2

    .line 268
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 269
    .local v4, view:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v5, "#dcdcdc"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 271
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 257
    .end local v4           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createSeekbars()Landroid/view/View;
    .locals 12

    .prologue
    .line 116
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v3, layout:Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget v8, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    iget v9, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    mul-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    iget v11, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    const v8, 0x7f0201e4

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 123
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03005e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 124
    .local v2, itemLayout_01:Landroid/widget/LinearLayout;
    const v8, 0x7f09018b

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, content:Landroid/widget/TextView;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 126
    const v8, 0x7f0a0203

    invoke-virtual {p0, v8}, Lcom/anall/statusbar/StatusBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusDispaly()Z

    move-result v1

    .line 128
    .local v1, dispaly:Z
    const v8, 0x7f09018e

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SeekButton;

    .line 129
    .local v7, view:Lcom/lx/launcher8/view/SeekButton;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 130
    const v8, 0x7f0a0203

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setId(I)V

    .line 131
    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettings;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 132
    invoke-virtual {v7, v1}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 133
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 135
    .local v4, line:Landroid/view/View;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    .restart local v5       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v8, "#dcdcdc"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03005e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #itemLayout_01:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 141
    .restart local v2       #itemLayout_01:Landroid/widget/LinearLayout;
    const v8, 0x7f09018b

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #content:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 142
    .restart local v0       #content:Landroid/widget/TextView;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 143
    const v8, 0x7f0a0204

    invoke-virtual {p0, v8}, Lcom/anall/statusbar/StatusBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusBattey()Z

    move-result v1

    .line 145
    const v8, 0x7f09018e

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #view:Lcom/lx/launcher8/view/SeekButton;
    check-cast v7, Lcom/lx/launcher8/view/SeekButton;

    .line 146
    .restart local v7       #view:Lcom/lx/launcher8/view/SeekButton;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 147
    const v8, 0x7f0a0204

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setId(I)V

    .line 148
    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettings;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 149
    invoke-virtual {v7, v1}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 150
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v4, Landroid/view/View;

    .end local v4           #line:Landroid/view/View;
    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    .restart local v4       #line:Landroid/view/View;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    .restart local v5       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v8, "#dcdcdc"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03005e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #itemLayout_01:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 158
    .restart local v2       #itemLayout_01:Landroid/widget/LinearLayout;
    const v8, 0x7f09018b

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #content:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 159
    .restart local v0       #content:Landroid/widget/TextView;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 160
    const v8, 0x7f0a0207

    invoke-virtual {p0, v8}, Lcom/anall/statusbar/StatusBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v8, 0x7f09018e

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #view:Lcom/lx/launcher8/view/SeekButton;
    check-cast v7, Lcom/lx/launcher8/view/SeekButton;

    .line 162
    .restart local v7       #view:Lcom/lx/launcher8/view/SeekButton;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 163
    const v8, 0x7f0a0207

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setId(I)V

    .line 164
    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettings;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 165
    invoke-static {}, Lcom/anall/statusbar/NotificationService;->isLaunching()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 166
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    iput-object v2, p0, Lcom/anall/statusbar/StatusBarSettings;->mNActiveView:Landroid/view/View;

    .line 169
    new-instance v4, Landroid/view/View;

    .end local v4           #line:Landroid/view/View;
    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 170
    .restart local v4       #line:Landroid/view/View;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    .restart local v5       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v8, "#dcdcdc"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-direct {v6, p0}, Lcom/lx/launcher8/view/SettingLinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v6, sl:Lcom/lx/launcher8/view/SettingLinearLayout;
    const v8, 0x7f0201b1

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 176
    const v8, 0x7f0a0209

    invoke-virtual {p0, v8}, Lcom/anall/statusbar/StatusBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 177
    const v8, 0x7f0a020b

    invoke-virtual {p0, v8}, Lcom/anall/statusbar/StatusBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 178
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 179
    new-instance v8, Lcom/anall/statusbar/StatusBarSettings$3;

    invoke-direct {v8, p0}, Lcom/anall/statusbar/StatusBarSettings$3;-><init>(Lcom/anall/statusbar/StatusBarSettings;)V

    invoke-virtual {v6, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    iput-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mLListenView:Landroid/view/View;

    .line 206
    iget-object v8, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    return-object v3
.end method

.method private createTextTitle(I)Landroid/widget/TextView;
    .locals 4
    .parameter "titleID"

    .prologue
    const/4 v3, 0x0

    .line 235
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, title:Landroid/widget/TextView;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 237
    iget v1, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    iget v2, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    const v1, -0xacacad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 241
    return-object v0
.end method

.method private createTitleRadioGroup(I[II)Landroid/widget/LinearLayout;
    .locals 6
    .parameter "titleID"
    .parameter "items"
    .parameter "selected"

    .prologue
    .line 217
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, layout:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 222
    invoke-direct {p0, p1}, Lcom/anall/statusbar/StatusBarSettings;->createTextTitle(I)Landroid/widget/TextView;

    move-result-object v3

    .line 223
    .local v3, title:Landroid/widget/TextView;
    invoke-direct {p0, p2, p3}, Lcom/anall/statusbar/StatusBarSettings;->createRadioGroup([II)Landroid/widget/RadioGroup;

    move-result-object v2

    .line 224
    .local v2, radio:Landroid/widget/RadioGroup;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    return-object v0
.end method

.method private hideShowItems()V
    .locals 8

    .prologue
    const v7, 0x7f0a01f6

    const v6, 0x7f0a014e

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 391
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v2

    .line 397
    .local v2, statusbar:I
    packed-switch v2, :pswitch_data_0

    .line 432
    :cond_0
    return-void

    .line 399
    :pswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 403
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 409
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 410
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 412
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 422
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v6, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 425
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private matchSelected([II)I
    .locals 3
    .parameter "items"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 101
    if-nez p1, :cond_1

    move v0, v1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_2

    move v0, v1

    .line 109
    goto :goto_0

    .line 105
    :cond_2
    aget v2, p1, v0

    if-eq v2, p2, :cond_0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setupStatusBar()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v7, -0x1

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x3

    .line 53
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v2, rootParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-array v4, v9, [I

    fill-array-data v4, :array_0

    .line 58
    .local v4, statusBar:[I
    new-array v6, v9, [I

    aput v8, v6, v8

    aput v10, v6, v10

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/anall/statusbar/StatusBarSettings;->matchSelected([II)I

    move-result v3

    .line 59
    .local v3, selected:I
    const v6, 0x7f0a014e

    invoke-direct {p0, v6, v4, v3}, Lcom/anall/statusbar/StatusBarSettings;->createTitleRadioGroup(I[II)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mDStatusView:Landroid/view/View;

    .line 60
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettings;->mDStatusView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    new-array v1, v9, [I

    fill-array-data v1, :array_1

    .line 63
    .local v1, pullDown:[I
    new-array v6, v9, [I

    aput v8, v6, v8

    aput v10, v6, v10

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/anall/statusbar/StatusBarSettings;->matchSelected([II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 64
    const v6, 0x7f0a01f6

    invoke-direct {p0, v6, v1, v3}, Lcom/anall/statusbar/StatusBarSettings;->createTitleRadioGroup(I[II)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mDShowView:Landroid/view/View;

    .line 65
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettings;->mDShowView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-array v0, v11, [I

    fill-array-data v0, :array_2

    .line 68
    .local v0, holdTime:[I
    new-array v6, v11, [I

    fill-array-data v6, :array_3

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusHoldTime()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/anall/statusbar/StatusBarSettings;->matchSelected([II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 69
    const v6, 0x7f0a01fa

    invoke-direct {p0, v6, v0, v3}, Lcom/anall/statusbar/StatusBarSettings;->createTitleRadioGroup(I[II)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mDTimeView:Landroid/view/View;

    .line 70
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettings;->mDTimeView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarSettings;->createSeekbars()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mWPSeekView:Landroid/view/View;

    .line 74
    new-array v5, v9, [I

    fill-array-data v5, :array_4

    .line 75
    .local v5, toastTime:[I
    new-array v6, v9, [I

    fill-array-data v6, :array_5

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusTTime()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/anall/statusbar/StatusBarSettings;->matchSelected([II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 76
    const v6, 0x7f0a020c

    invoke-direct {p0, v6, v5, v3}, Lcom/anall/statusbar/StatusBarSettings;->createTitleRadioGroup(I[II)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mDToastView:Landroid/view/View;

    .line 77
    iget-object v6, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/anall/statusbar/StatusBarSettings;->mDToastView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarSettings;->hideShowItems()V

    .line 80
    return-void

    .line 57
    nop

    :array_0
    .array-data 0x4
        0xf1t 0x1t 0xat 0x7ft
        0xf2t 0x1t 0xat 0x7ft
        0xf3t 0x1t 0xat 0x7ft
    .end array-data

    .line 62
    :array_1
    .array-data 0x4
        0xf7t 0x1t 0xat 0x7ft
        0xf8t 0x1t 0xat 0x7ft
        0xf9t 0x1t 0xat 0x7ft
    .end array-data

    .line 67
    :array_2
    .array-data 0x4
        0xfdt 0x1t 0xat 0x7ft
        0xfet 0x1t 0xat 0x7ft
        0xfft 0x1t 0xat 0x7ft
        0x0t 0x2t 0xat 0x7ft
    .end array-data

    .line 68
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 74
    :array_4
    .array-data 0x4
        0xfct 0x1t 0xat 0x7ft
        0xfdt 0x1t 0xat 0x7ft
        0xfet 0x1t 0xat 0x7ft
    .end array-data

    .line 75
    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method hideOrShowListen(Z)V
    .locals 5
    .parameter "launch"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 92
    if-eqz p1, :cond_0

    move v0, v1

    .line 93
    .local v0, visible:I
    :goto_0
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mLListenView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarSettings;->mDToastView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/anall/statusbar/StatusBarSettings;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->isStatusToast()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void

    .end local v0           #visible:I
    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    .restart local v0       #visible:I
    :cond_1
    move v1, v2

    .line 96
    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Lcom/lx/launcher8/setting/PageSetAct;->onResume()V

    .line 85
    invoke-static {}, Lcom/anall/statusbar/NotificationService;->isLaunching()Z

    move-result v0

    .line 86
    .local v0, isActvie:Z
    iget-object v2, p0, Lcom/anall/statusbar/StatusBarSettings;->mNActiveView:Landroid/view/View;

    const v3, 0x7f09018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/view/SeekButton;

    .line 87
    .local v1, sb:Lcom/lx/launcher8/view/SeekButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Lcom/anall/statusbar/StatusBarSettings;->hideOrShowListen(Z)V

    .line 89
    return-void
.end method

.method protected onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 0
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 436
    return-void
.end method

.method protected setupViews()V
    .locals 3

    .prologue
    .line 36
    const/high16 v2, 0x4120

    invoke-static {p0, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/anall/statusbar/StatusBarSettings;->margin:I

    .line 37
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, scrollStatus:Landroid/widget/ScrollView;
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, scrollNotification:Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    .line 40
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootNotification:Landroid/widget/LinearLayout;

    .line 41
    iget-object v2, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootStatusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 42
    iget-object v2, p0, Lcom/anall/statusbar/StatusBarSettings;->mRootNotification:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 43
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarSettings;->setupStatusBar()V

    .line 45
    const v2, 0x7f0a0027

    invoke-virtual {p0, v2}, Lcom/anall/statusbar/StatusBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/anall/statusbar/StatusBarSettings;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 47
    return-void
.end method
