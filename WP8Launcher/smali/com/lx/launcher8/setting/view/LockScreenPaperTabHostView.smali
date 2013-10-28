.class public Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;
.super Ljava/lang/Object;
.source "LockScreenPaperTabHostView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentPage:I

.field private fl:Landroid/widget/FrameLayout;

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

.field private mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

.field private mLockScreenPaperSearchView:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

.field private mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

.field private mMainView:Landroid/view/View;

.field private tabText1:Landroid/widget/TextView;

.field private tabText2:Landroid/widget/TextView;

.field private tabText3:Landroid/widget/TextView;

.field private tabText4:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "act"

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    .line 36
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    .line 37
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mMainView:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    .line 42
    new-instance v0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    .line 43
    new-instance v0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    .line 44
    new-instance v0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperSearchView:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    .line 46
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->setTabText(I)V

    .line 47
    return-void
.end method

.method private createTabLinear()Landroid/widget/LinearLayout;
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x2

    const v7, -0xacacad

    const/high16 v6, 0x4160

    const/4 v5, 0x0

    .line 62
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, tabLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    const v2, 0x7f02018b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 66
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0264

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    const v3, 0x7f020187

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 71
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 72
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 74
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    .line 77
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0265

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    const v3, 0x7f020185

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 81
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 82
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 84
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0267

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    const v3, 0x7f020183

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 91
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 92
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 94
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0263

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    const v3, 0x7f020189

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 101
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 102
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 104
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const/4 v2, -0x2

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-object v1
.end method

.method private createView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 50
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->fl:Landroid/widget/FrameLayout;

    .line 52
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->createTabLinear()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 54
    .local v1, tabLinear:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->fl:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f80

    invoke-static {v5, v4, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-static {v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-object v0
.end method

.method private setTabText(I)V
    .locals 6
    .parameter "currentPage"

    .prologue
    const v5, 0x7f02018c

    const v1, -0xacacad

    const v4, -0xcf4d19

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 199
    iput p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    .line 200
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    const v1, 0x7f020187

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 205
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    const v1, 0x7f020185

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 206
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    const v1, 0x7f020183

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 207
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    const v1, 0x7f020189

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 208
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 210
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 212
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->fl:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    const v1, 0x7f020188

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 217
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->fl:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onStart()V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    const v1, 0x7f020186

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 224
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 225
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->fl:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onStart()V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    const v1, 0x7f020184

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 231
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText3:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 232
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->fl:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->onStart()V

    goto :goto_0

    .line 236
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    const v1, 0x7f02018a

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 238
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->tabText4:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 239
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->fl:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperSearchView:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperSearchView:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->onStart()V

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 161
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    packed-switch v0, :pswitch_data_0

    .line 171
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperSearchView:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    packed-switch v0, :pswitch_data_0

    .line 186
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onBack()Z

    move-result v0

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onBack()Z

    move-result v0

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->onBack()Z

    move-result v0

    goto :goto_0

    .line 184
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperSearchView:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->onBack()Z

    move-result v0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    if-eq v0, v1, :cond_0

    .line 120
    invoke-direct {p0, v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->setTabText(I)V

    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onResume()V

    goto :goto_0

    .line 124
    :pswitch_1
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    if-eq v0, v2, :cond_0

    .line 125
    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->setTabText(I)V

    .line 126
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onResume()V

    goto :goto_0

    .line 129
    :pswitch_2
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    if-eq v0, v3, :cond_0

    .line 130
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->setTabText(I)V

    .line 131
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->onResume()V

    goto :goto_0

    .line 134
    :pswitch_3
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    if-eq v0, v4, :cond_0

    .line 135
    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->setTabText(I)V

    .line 136
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperSearchView:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->onResume()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onResume()V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperOnlineView2:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onResume()V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperTypeListView:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->onResume()V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->mLockScreenPaperSearchView:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->onResume()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .parameter "currentPage"

    .prologue
    .line 195
    iput p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->currentPage:I

    .line 196
    return-void
.end method
