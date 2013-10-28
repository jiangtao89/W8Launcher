.class public Lcom/app/common/view/EmptyView;
.super Landroid/widget/LinearLayout;
.source "EmptyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/view/EmptyView$OnFreshListener;,
        Lcom/app/common/view/EmptyView$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$app$common$view$EmptyView$State:[I


# instance fields
.field mFreshListener:Lcom/app/common/view/EmptyView$OnFreshListener;

.field mState:Lcom/app/common/view/EmptyView$State;


# direct methods
.method static synthetic $SWITCH_TABLE$com$app$common$view$EmptyView$State()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/app/common/view/EmptyView;->$SWITCH_TABLE$com$app$common$view$EmptyView$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/app/common/view/EmptyView$State;->values()[Lcom/app/common/view/EmptyView$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/app/common/view/EmptyView$State;->EMPTY:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {v1}, Lcom/app/common/view/EmptyView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/app/common/view/EmptyView$State;->ERROR:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {v1}, Lcom/app/common/view/EmptyView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/app/common/view/EmptyView$State;->LOADING:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {v1}, Lcom/app/common/view/EmptyView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/app/common/view/EmptyView;->$SWITCH_TABLE$com$app$common$view$EmptyView$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/common/view/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/app/common/view/EmptyView;->initView()V

    .line 36
    sget-object v0, Lcom/app/common/view/EmptyView$State;->LOADING:Lcom/app/common/view/EmptyView$State;

    iput-object v0, p0, Lcom/app/common/view/EmptyView;->mState:Lcom/app/common/view/EmptyView$State;

    .line 37
    return-void
.end method

.method private changeViewsSate(Lcom/app/common/view/EmptyView$State;Lcom/app/common/view/EmptyView$State;)V
    .locals 2
    .parameter "needChange"
    .parameter "current"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/app/common/view/EmptyView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeState(Lcom/app/common/view/EmptyView$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/app/common/view/EmptyView;->mState:Lcom/app/common/view/EmptyView$State;

    if-ne v1, p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/app/common/view/EmptyView$State;->values()[Lcom/app/common/view/EmptyView$State;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_1

    .line 74
    iput-object p1, p0, Lcom/app/common/view/EmptyView;->mState:Lcom/app/common/view/EmptyView$State;

    goto :goto_0

    .line 71
    :cond_1
    aget-object v0, v2, v1

    .line 72
    .local v0, st:Lcom/app/common/view/EmptyView$State;
    invoke-direct {p0, v0, p1}, Lcom/app/common/view/EmptyView;->changeViewsSate(Lcom/app/common/view/EmptyView$State;Lcom/app/common/view/EmptyView$State;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method executeAction(Lcom/app/common/view/EmptyView$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 124
    invoke-static {}, Lcom/app/common/view/EmptyView;->$SWITCH_TABLE$com$app$common$view$EmptyView$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/app/common/view/EmptyView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/app/common/view/EmptyView;->mFreshListener:Lcom/app/common/view/EmptyView$OnFreshListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/app/common/view/EmptyView;->mFreshListener:Lcom/app/common/view/EmptyView$OnFreshListener;

    invoke-interface {v0}, Lcom/app/common/view/EmptyView$OnFreshListener;->fresh()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initView()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 40
    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/app/common/view/EmptyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/app/common/view/EmptyView;->setOrientation(I)V

    .line 42
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/app/common/view/EmptyView;->setGravity(I)V

    .line 43
    invoke-virtual {p0, v5}, Lcom/app/common/view/EmptyView;->setBackgroundResource(I)V

    .line 45
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/app/common/view/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, pb:Landroid/widget/ProgressBar;
    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/app/common/view/EmptyView;->setLoadingView(Landroid/view/View;)V

    .line 50
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/app/common/view/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, btn:Landroid/widget/Button;
    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 53
    const-string v3, "\u91cd\u65b0\u8bf7\u6c42"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0, v0, v0}, Lcom/app/common/view/EmptyView;->setErrorView(Landroid/view/View;Landroid/view/View;)V

    .line 56
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/common/view/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v2, tv:Landroid/widget/TextView;
    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    const-string v3, "\u6682\u65e0\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/app/common/view/EmptyView;->setEmptyView(Landroid/view/View;)V

    .line 62
    sget-object v3, Lcom/app/common/view/EmptyView$State;->LOADING:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {p0, v3}, Lcom/app/common/view/EmptyView;->changeState(Lcom/app/common/view/EmptyView$State;)V

    .line 63
    return-void
.end method

.method removeView(Lcom/app/common/view/EmptyView$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/app/common/view/EmptyView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, oldView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/app/common/view/EmptyView;->removeView(Landroid/view/View;)V

    .line 148
    const/4 v1, 0x1

    .line 150
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/app/common/view/EmptyView$State;->EMPTY:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/app/common/view/EmptyView$State;->EMPTY:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {p0, v0}, Lcom/app/common/view/EmptyView;->removeView(Lcom/app/common/view/EmptyView$State;)Z

    .line 120
    invoke-virtual {p0, p1}, Lcom/app/common/view/EmptyView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setErrorView(Landroid/view/View;I)V
    .locals 1
    .parameter "container"
    .parameter "rid"

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/app/common/view/EmptyView;->setErrorView(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public setErrorView(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "container"
    .parameter "actionView"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/app/common/view/EmptyView$State;->ERROR:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/app/common/view/EmptyView$State;->ERROR:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {p0, v0}, Lcom/app/common/view/EmptyView;->removeView(Lcom/app/common/view/EmptyView$State;)Z

    .line 95
    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 96
    :cond_1
    new-instance v0, Lcom/app/common/view/EmptyView$1;

    invoke-direct {v0, p0}, Lcom/app/common/view/EmptyView$1;-><init>(Lcom/app/common/view/EmptyView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_2
    invoke-virtual {p0, p1}, Lcom/app/common/view/EmptyView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setFreshListener(Lcom/app/common/view/EmptyView$OnFreshListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/app/common/view/EmptyView;->mFreshListener:Lcom/app/common/view/EmptyView$OnFreshListener;

    .line 108
    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/app/common/view/EmptyView$State;->LOADING:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/app/common/view/EmptyView$State;->LOADING:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {p0, v0}, Lcom/app/common/view/EmptyView;->removeView(Lcom/app/common/view/EmptyView$State;)Z

    .line 114
    invoke-virtual {p0, p1}, Lcom/app/common/view/EmptyView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
