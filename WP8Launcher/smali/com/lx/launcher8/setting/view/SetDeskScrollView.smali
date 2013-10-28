.class public Lcom/lx/launcher8/setting/view/SetDeskScrollView;
.super Landroid/widget/ScrollView;
.source "SetDeskScrollView.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lx$launcher$util$Utils$SettingsStyle:[I


# instance fields
.field private allChild:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBgColor:I

.field private mContext:Landroid/content/Context;

.field private mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mThemeColor:I

.field private mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lx$launcher$util$Utils$SettingsStyle()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->$SWITCH_TABLE$com$lx$launcher$util$Utils$SettingsStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lx/launcher8/util/Utils$SettingsStyle;->values()[Lcom/lx/launcher8/util/Utils$SettingsStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lx/launcher8/util/Utils$SettingsStyle;->BUTTON:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    invoke-virtual {v1}, Lcom/lx/launcher8/util/Utils$SettingsStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lx/launcher8/util/Utils$SettingsStyle;->COLOR:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    invoke-virtual {v1}, Lcom/lx/launcher8/util/Utils$SettingsStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    invoke-virtual {v1}, Lcom/lx/launcher8/util/Utils$SettingsStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/lx/launcher8/util/Utils$SettingsStyle;->TEXT:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    invoke-virtual {v1}, Lcom/lx/launcher8/util/Utils$SettingsStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->$SWITCH_TABLE$com$lx$launcher$util$Utils$SettingsStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    .line 33
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mRootView:Landroid/widget/LinearLayout;

    .line 34
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    const v1, -0x161617

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->setBackgroundColor(I)V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 40
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 41
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mThemeColor:I

    .line 42
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mBgColor:I

    .line 43
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addItems(ILandroid/view/View;I)V
    .locals 5
    .parameter "titleResID"
    .parameter "view"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->allChild:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->allChild:Ljava/util/HashMap;

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->allChild:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030067

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    .local v0, title:Landroid/widget/TextView;
    const/16 v1, 0x14

    const/16 v2, 0xa

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 146
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_0
    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    return-void

    .line 149
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public addItems(I[I[Ljava/lang/String;[Lcom/lx/launcher8/util/Utils$SettingsStyle;[Ljava/lang/Object;I)V
    .locals 14
    .parameter "titleResID"
    .parameter "picResID"
    .parameter "text"
    .parameter "style"
    .parameter "obj"
    .parameter "id"

    .prologue
    .line 57
    move-object/from16 v0, p2

    array-length v5, v0

    .line 58
    .local v5, length:I
    if-eqz v5, :cond_0

    move-object/from16 v0, p3

    array-length v10, v0

    if-ne v10, v5, :cond_0

    move-object/from16 v0, p4

    array-length v10, v0

    if-ne v10, v5, :cond_0

    move-object/from16 v0, p5

    array-length v10, v0

    if-eq v10, v5, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iput-object v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v4, layout:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    const v10, 0x7f0201e4

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v5, :cond_2

    .line 131
    move/from16 v0, p6

    invoke-virtual {p0, p1, v4, v0}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->addItems(ILandroid/view/View;I)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03005e

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 74
    .local v3, itemLayout:Landroid/widget/LinearLayout;
    add-int v10, p6, v2

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 75
    const v10, 0x7f09018b

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, content:Landroid/widget/TextView;
    aget-object v10, p3, v2

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    aget v10, p2, v2

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 78
    aget v10, p2, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 82
    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 83
    aget-object v8, p4, v2

    .line 84
    .local v8, s:Lcom/lx/launcher8/util/Utils$SettingsStyle;
    const/4 v9, 0x0

    .line 85
    .local v9, view:Landroid/view/View;
    invoke-static {}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->$SWITCH_TABLE$com$lx$launcher$util$Utils$SettingsStyle()[I

    move-result-object v10

    invoke-virtual {v8}, Lcom/lx/launcher8/util/Utils$SettingsStyle;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 123
    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    add-int/lit8 v10, v5, -0x1

    if-eq v2, v10, :cond_3

    .line 125
    new-instance v6, Landroid/view/View;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    .local v6, line:Landroid/view/View;
    const-string v10, "#dcdcdc"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .end local v6           #line:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v8           #s:Lcom/lx/launcher8/util/Utils$SettingsStyle;
    .end local v9           #view:Landroid/view/View;
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 87
    .restart local v8       #s:Lcom/lx/launcher8/util/Utils$SettingsStyle;
    .restart local v9       #view:Landroid/view/View;
    :pswitch_0
    const v10, 0x7f09018f

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const v10, 0x7f09018c

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 89
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 90
    aget-object v10, p5, v2

    if-eqz v10, :cond_5

    .line 91
    aget-object v10, p5, v2

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    :goto_4
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 93
    :cond_5
    iget v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mThemeColor:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 98
    :pswitch_1
    const v10, 0x7f09018f

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const v10, 0x7f09018d

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 100
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 101
    aget-object v10, p5, v2

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_7

    move-object v10, v9

    .line 102
    check-cast v10, Landroid/widget/TextView;

    aget-object v11, p5, v2

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 103
    :cond_7
    aget-object v10, p5, v2

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    move-object v10, v9

    .line 104
    check-cast v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget-object v11, p5, v2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 109
    :pswitch_2
    const v10, 0x7f09018e

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v9

    .line 110
    check-cast v10, Lcom/lx/launcher8/view/SeekButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    move-object v10, v9

    .line 111
    check-cast v10, Lcom/lx/launcher8/view/SeekButton;

    add-int v11, p6, v2

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/view/SeekButton;->setId(I)V

    move-object v10, v9

    .line 112
    check-cast v10, Lcom/lx/launcher8/view/SeekButton;

    aget-object v11, p5, v2

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    move-object v10, v9

    .line 113
    check-cast v10, Lcom/lx/launcher8/view/SeekButton;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    move-object v10, v9

    .line 114
    check-cast v10, Lcom/lx/launcher8/view/SeekButton;

    iget v11, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mBgColor:I

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/view/SeekButton;->setThemeColor(I)V

    move-object v10, v9

    .line 115
    check-cast v10, Lcom/lx/launcher8/view/SeekButton;

    iget v11, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mThemeColor:I

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/view/SeekButton;->setFitColor(I)V

    goto/16 :goto_3

    .line 118
    :pswitch_3
    const v10, 0x7f09018f

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItem(II)Landroid/view/View;
    .locals 4
    .parameter "parentID"
    .parameter "childID"

    .prologue
    .line 171
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->allChild:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 185
    :goto_0
    return-object v2

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->allChild:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 176
    .local v1, layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 185
    .end local v0           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 179
    .restart local v0       #i:I
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 180
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 177
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setMargins(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 190
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 191
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    int-to-float v3, p2

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    int-to-float v4, p3

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mContext:Landroid/content/Context;

    int-to-float v5, p4

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method

.method public setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V
    .locals 0
    .parameter "touchOver"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    .line 162
    return-void
.end method
