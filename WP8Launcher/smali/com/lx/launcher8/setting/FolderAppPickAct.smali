.class public Lcom/lx/launcher8/setting/FolderAppPickAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "FolderAppPickAct.java"


# static fields
.field private static final BUTTON_CANCEL:I = 0x12

.field private static final BUTTON_EDIT:I = 0x13

.field private static final BUTTON_OK:I = 0x11

.field public static final EXTRAL_PAGE:Ljava/lang/String; = "extral_page"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private fc:Lcom/lx/launcher8/bean/FolderCell;

.field private mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

.field private mFilter:I

.field private mFilterBtn:Landroid/widget/TextView;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mTitleLyauot:Landroid/widget/LinearLayout;

.field private mWidth:I

.field private tv_00:Landroid/widget/TextView;

.field private tv_01:Landroid/widget/TextView;

.field private tv_02:Landroid/widget/TextView;

.field private tv_03:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 171
    new-instance v0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/FolderAppPickAct$1;-><init>(Lcom/lx/launcher8/setting/FolderAppPickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->clickListener:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/FolderAppPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->createPopup()V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/FolderAppPickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/FolderAppPickAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/FolderAppPickAct;)Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private createPopup()V
    .locals 6

    .prologue
    const/high16 v3, -0x100

    const v5, 0x7f0b0003

    .line 222
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 223
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 224
    const v2, 0x7f03002d

    const/4 v3, 0x0

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, popuView:Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mWidth:I

    add-int/lit8 v2, v2, -0xf

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;

    .line 226
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 230
    const/4 v1, 0x0

    iput v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I

    .line 231
    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_00:Landroid/widget/TextView;

    .line 232
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_00:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_01:Landroid/widget/TextView;

    .line 234
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_01:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_02:Landroid/widget/TextView;

    .line 236
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_02:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_03:Landroid/widget/TextView;

    .line 238
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_03:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_00:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .end local v0           #popuView:Landroid/view/View;
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_00:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_01:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_02:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_03:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_00:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_01:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_02:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->tv_03:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initView()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v10, -0x2

    const/16 v9, 0xa

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 69
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mTitleLyauot:Landroid/widget/LinearLayout;

    .line 73
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mTitleLyauot:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mTitleLyauot:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mTitleLyauot:Landroid/widget/LinearLayout;

    const v6, 0x7f020069

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 76
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mTitleLyauot:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v4, title:Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 81
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const v5, 0x7f0a0057

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    const/high16 v5, 0x7f01

    invoke-virtual {v4, p0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 85
    const/high16 v5, 0x4190

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    const v5, 0x7f0200e9

    invoke-virtual {v4, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 90
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mTitleLyauot:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mWidth:I

    add-int/lit8 v5, v5, -0xf

    invoke-direct {v3, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v7, v9, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    .line 95
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    const v6, 0x7f020077

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    const v6, 0x7f020076

    invoke-virtual {v5, v7, v7, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 101
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    .line 103
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    const v6, 0x7f0a01ed

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mTitleLyauot:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mTitleLyauot:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 116
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03004d

    .line 117
    const/4 v6, 0x0

    .line 116
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 118
    .local v2, listview:Landroid/widget/ListView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    .line 118
    invoke-direct {v3, v8, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 121
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v5}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v5

    iget-object v5, v5, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 122
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    new-instance v5, Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;

    invoke-direct {v5}, Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;-><init>()V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    new-instance v5, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    iget-object v6, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->fc:Lcom/lx/launcher8/bean/FolderCell;

    invoke-direct {v5, p0, v1, v6}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/lx/launcher8/bean/ItemCell;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object v5, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 51
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iput-object v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->fc:Lcom/lx/launcher8/bean/FolderCell;

    .line 53
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mRootView:Landroid/widget/LinearLayout;

    .line 54
    iget-object v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mRootView:Landroid/widget/LinearLayout;

    const v4, -0x161617

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 55
    iget-object v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mRootView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mWidth:I

    .line 60
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 61
    .local v0, hight:I
    iget v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62
    .local v2, min:I
    int-to-double v3, v2

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mWidth:I

    .line 64
    invoke-direct {p0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->initView()V

    .line 65
    iget-object v3, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/FolderAppPickAct;->setContentView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onDestroy()V

    .line 274
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->clear()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    .line 276
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 280
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->fc:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    .line 283
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct;->fc:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 284
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->setResult(ILandroid/content/Intent;)V

    .line 286
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
