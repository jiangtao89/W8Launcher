.class public Lcom/lx/launcher8/view/FooterLayout;
.super Landroid/widget/LinearLayout;
.source "FooterLayout.java"


# instance fields
.field private mProgress:Landroid/widget/ProgressBar;

.field private mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FooterLayout;->setupViews()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FooterLayout;->setupViews()V

    .line 26
    return-void
.end method


# virtual methods
.method public preperFresh()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/view/FooterLayout;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public preperFresh(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/view/FooterLayout;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public pullToPull()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FooterLayout;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/view/FooterLayout;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    return-void
.end method

.method setupViews()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, -0x100

    .line 29
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FooterLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03004c

    invoke-static {v3, v4, p0}, Lcom/lx/launcher8/view/FooterLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    const v3, 0x7f0900df

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/FooterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/lx/launcher8/view/FooterLayout;->mProgress:Landroid/widget/ProgressBar;

    .line 31
    const v3, 0x7f090103

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/FooterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lx/launcher8/view/FooterLayout;->mTv:Landroid/widget/TextView;

    .line 32
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FooterLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, deskSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v1

    .line 34
    .local v1, settingStyle:I
    if-ne v1, v7, :cond_3

    .line 35
    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v2

    .line 36
    .local v2, themeWallPaper:I
    if-ne v2, v7, :cond_1

    .line 37
    iget-object v3, p0, Lcom/lx/launcher8/view/FooterLayout;->mTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .end local v2           #themeWallPaper:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FooterLayout;->pullToPull()V

    .line 47
    return-void

    .line 38
    .restart local v2       #themeWallPaper:I
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 39
    iget-object v3, p0, Lcom/lx/launcher8/view/FooterLayout;->mTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 40
    :cond_2
    if-nez v2, :cond_0

    .line 41
    iget-object v3, p0, Lcom/lx/launcher8/view/FooterLayout;->mTv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 43
    .end local v2           #themeWallPaper:I
    :cond_3
    if-nez v1, :cond_0

    .line 44
    iget-object v3, p0, Lcom/lx/launcher8/view/FooterLayout;->mTv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
