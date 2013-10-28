.class public Lcom/app/download/bean/DownloadInfoShower;
.super Landroid/widget/LinearLayout;
.source "DownloadInfoShower.java"


# static fields
.field public static final DOWNLOADING:I = 0x2

.field public static final DOWNLOAD_ERROR:I = 0x20

.field public static final DOWNLOAD_FINISH:I = 0x8

.field public static final DOWNLOAD_STOP:I = 0x10

.field public static final DOWNLOAD_WAITING:I = 0x4

.field public static final UNKNOW:I = 0x1


# instance fields
.field public mButton:Landroid/widget/Button;

.field mContext:Landroid/content/Context;

.field public mImage:Landroid/widget/ImageView;

.field public mInfo1:Landroid/widget/TextView;

.field public mInfo2:Landroid/widget/TextView;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/app/download/bean/DownloadInfoShower;->initView()V

    .line 33
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
    iput-object p1, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/app/download/bean/DownloadInfoShower;->initView()V

    .line 27
    return-void
.end method

.method private initView()V
    .locals 15

    .prologue
    const v14, -0x99999a

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 44
    invoke-virtual {p0, v12, v13, v12, v13}, Lcom/app/download/bean/DownloadInfoShower;->setPadding(IIII)V

    .line 45
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, fl:Landroid/widget/FrameLayout;
    invoke-static {v10, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/app/download/bean/DownloadInfoShower;->addView(Landroid/view/View;)V

    .line 48
    new-instance v6, Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const v9, 0x1010078

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mProgressBar:Landroid/widget/ProgressBar;

    .line 49
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/app/download/config/Resources;->down_progress:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v10, v10}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 53
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, rl:Landroid/widget/RelativeLayout;
    invoke-static {v11, v11}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 56
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    .line 57
    const/16 v6, 0x28

    const/16 v7, 0x28

    invoke-static {v6, v7}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 58
    .local v3, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 60
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    const/high16 v7, 0x40a0

    invoke-static {v6, v7}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v4, v6

    .line 62
    .local v4, tmp:I
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 63
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    .line 65
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setFocusable(Z)V

    .line 66
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 67
    invoke-static {v11, v11}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 68
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-static {v10, v10}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 75
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v3, v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 76
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getId()I

    move-result v6

    invoke-virtual {v3, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    .line 81
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    .line 83
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .local v5, tmpll:Landroid/widget/LinearLayout;
    invoke-static {v10, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo1:Landroid/widget/TextView;

    .line 90
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo1:Landroid/widget/TextView;

    const/high16 v7, 0x3f80

    invoke-static {v10, v11, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo1:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo2:Landroid/widget/TextView;

    .line 93
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo2:Landroid/widget/TextView;

    invoke-static {v11, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo2:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    const/high16 v7, 0x4188

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    const v7, -0xe5b988

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo1:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo2:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/app/download/config/Resources;->list_button_bg:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 102
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const/high16 v7, 0x4160

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 103
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const v7, -0xbbbbbc

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 104
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const-string v7, " \u7ee7 \u7eed "

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "info1"
    .parameter "info2"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/app/download/bean/DownloadInfoShower;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    if-eqz p2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_1
    if-eqz p2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/app/download/bean/DownloadInfoShower;->mInfo2:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_2
    return-void
.end method

.method public updata(Lcom/app/download/bean/FileSeed;)V
    .locals 11
    .parameter "fileSeed"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 130
    .local v0, df:Ljava/text/DecimalFormat;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 133
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    const-wide/16 v8, 0x400

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getLoadedSize()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v9, 0x4090

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v9, 0x4090

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 135
    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, rate:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getSpeed()D

    move-result-wide v2

    .line 141
    .local v2, load_speed:D
    const-string v5, ""

    .line 143
    .local v5, speed:Ljava/lang/String;
    const-wide/high16 v6, 0x4090

    cmpg-double v6, v2, v6

    if-gez v6, :cond_1

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getSpeed()D

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "b/s  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    :cond_1
    const-wide/high16 v6, 0x4090

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_2

    const-wide/high16 v6, 0x4130

    cmpg-double v6, v2, v6

    if-gez v6, :cond_2

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getSpeed()D

    move-result-wide v7

    const-wide/high16 v9, 0x4090

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "KB/S  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    :cond_2
    const-wide/high16 v6, 0x4130

    cmpl-double v6, v2, v6

    if-lez v6, :cond_3

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getSpeed()D

    move-result-wide v7

    const-wide/high16 v9, 0x4130

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "MB/S  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    :cond_3
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 154
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getLoadedSize()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    new-instance v7, Lcom/app/download/bean/DownloadInfoShower$1;

    invoke-direct {v7, p0, p1}, Lcom/app/download/bean/DownloadInfoShower$1;-><init>(Lcom/app/download/bean/DownloadInfoShower;Lcom/app/download/bean/FileSeed;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getState()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 223
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const-string v7, " \u5220 \u9664 "

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u672a\u77e5\u72b6\u6001"

    invoke-virtual {p0, v6, v4, v7}, Lcom/app/download/bean/DownloadInfoShower;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v2           #load_speed:D
    .end local v4           #rate:Ljava/lang/String;
    .end local v5           #speed:Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getLoadedSize()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v9, 0x4130

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 138
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v9, 0x4130

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #rate:Ljava/lang/String;
    goto/16 :goto_1

    .line 191
    .restart local v2       #load_speed:D
    .restart local v5       #speed:Ljava/lang/String;
    :sswitch_0
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const-string v7, " \u6682 \u505c "

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/app/download/config/Resources;->down_state_ing:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Lcom/app/download/bean/DownloadInfoShower;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :sswitch_1
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const-string v7, " \u4e0b \u8f7d "

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/app/download/config/Resources;->down_state_stop:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7b49\u5f85\u4e2d...   "

    invoke-virtual {p0, v6, v4, v7}, Lcom/app/download/bean/DownloadInfoShower;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :sswitch_2
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const-string v7, " \u7ee7 \u7eed "

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/app/download/config/Resources;->down_state_stop:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u4e0b\u8f7d\u6682\u505c   "

    invoke-virtual {p0, v6, v4, v7}, Lcom/app/download/bean/DownloadInfoShower;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :sswitch_3
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const-string v7, " \u7ee7 \u7eed "

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/app/download/config/Resources;->down_state_error:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u4e0b\u8f7d\u51fa\u9519   "

    invoke-virtual {p0, v6, v4, v7}, Lcom/app/download/bean/DownloadInfoShower;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :sswitch_4
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mButton:Landroid/widget/Button;

    const-string v7, " \u6253 \u5f00 "

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/app/download/config/Resources;->down_state_finish:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v6, p0, Lcom/app/download/bean/DownloadInfoShower;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    const-wide/16 v8, 0x400

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v9, 0x4090

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, fileSize:Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u4e0b\u8f7d\u5b8c\u6210   "

    invoke-virtual {p0, v6, v1, v7}, Lcom/app/download/bean/DownloadInfoShower;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    .end local v1           #fileSize:Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v9, 0x4130

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #fileSize:Ljava/lang/String;
    goto :goto_2

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
