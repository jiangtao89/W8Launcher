.class public Lcom/app/ads/adapter/AdInfoAdapter;
.super Lcom/app/common/gy/GyAdapter;
.source "AdInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/app/common/gy/GyAdapter",
        "<",
        "Lcom/app/ads/bll/BllAds;",
        ">;"
    }
.end annotation


# static fields
.field private static mIsCreditsShow:Z


# instance fields
.field public mAttchePath:Ljava/lang/String;

.field mIsChange:Ljava/lang/String;

.field mIsFree:Ljava/lang/String;

.field mOnClick:Landroid/view/View$OnClickListener;

.field mSuffixLoadCount:Ljava/lang/String;

.field mSuffixSorceAward:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/app/ads/adapter/AdInfoAdapter;->mIsCreditsShow:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/app/ads/bll/BllAds;Z)V
    .locals 1
    .parameter "context"
    .parameter "bll"
    .parameter "isImgToFileCache"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/app/common/gy/GyAdapter;-><init>(Landroid/content/Context;Lcom/app/common/bll/BllXmlPull;Z)V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mAttchePath:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/app/ads/adapter/AdInfoAdapter$1;

    invoke-direct {v0, p0}, Lcom/app/ads/adapter/AdInfoAdapter$1;-><init>(Lcom/app/ads/adapter/AdInfoAdapter;)V

    iput-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    .line 27
    const-string v0, "\u6b21\u4e0b\u8f7d"

    iput-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mSuffixLoadCount:Ljava/lang/String;

    .line 28
    const-string v0, "\u79ef\u5206"

    iput-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mSuffixSorceAward:Ljava/lang/String;

    .line 29
    const-string v0, "\u514d\u8d39"

    iput-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mIsFree:Ljava/lang/String;

    .line 30
    const-string v0, "\u6536\u8d39"

    iput-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mIsChange:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$1(Lcom/app/ads/adapter/AdInfoAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isCreditsShow()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/app/ads/adapter/AdInfoAdapter;->mIsCreditsShow:Z

    return v0
.end method

.method public static setCreditsShow(Z)V
    .locals 0
    .parameter "isCreditsShow"

    .prologue
    .line 121
    sput-boolean p0, Lcom/app/ads/adapter/AdInfoAdapter;->mIsCreditsShow:Z

    .line 122
    return-void
.end method


# virtual methods
.method public addBll(Lcom/app/ads/bll/BllAds;)V
    .locals 2
    .parameter "bll"

    .prologue
    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/app/ads/bll/BllAds;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v0, Lcom/app/ads/bll/BllAds;

    iget-object v0, v0, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    iget-object v1, p1, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v0, Lcom/app/ads/bll/BllAds;

    iget-object v1, p1, Lcom/app/ads/bll/BllAds;->mPage:Lcom/app/common/bll/CPage;

    iput-object v1, v0, Lcom/app/ads/bll/BllAds;->mPage:Lcom/app/common/bll/CPage;

    .line 94
    :cond_0
    return-void
.end method

.method public bridge synthetic addBll(Lcom/app/common/bll/BllXmlPull;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/app/ads/bll/BllAds;

    invoke-virtual {p0, p1}, Lcom/app/ads/adapter/AdInfoAdapter;->addBll(Lcom/app/ads/bll/BllAds;)V

    return-void
.end method

.method public clearBll()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v0, Lcom/app/ads/bll/BllAds;

    iget-object v0, v0, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v0, Lcom/app/ads/bll/BllAds;

    iget-object v0, v0, Lcom/app/ads/bll/BllAds;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v0}, Lcom/app/common/bll/CPage;->reset()V

    .line 100
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v0, Lcom/app/ads/bll/BllAds;

    invoke-virtual {v0}, Lcom/app/ads/bll/BllAds;->getSize()I

    move-result v0

    return v0
.end method

.method public getItemImgLocalPath(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v1, Lcom/app/ads/bll/BllAds;

    iget-object v1, v1, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bean/AdInfo;

    .line 117
    .local v0, info:Lcom/app/ads/bean/AdInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/app/common/config/BasePath;->getCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mAttchePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getAppid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItemImgUrl(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v1, Lcom/app/ads/bll/BllAds;

    iget-object v1, v1, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bean/AdInfo;

    .line 108
    .local v0, info:Lcom/app/ads/bean/AdInfo;
    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getPic()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, isb:Lcom/app/ads/view/AdItemView;
    iget-object v3, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v3, Lcom/app/ads/bll/BllAds;

    iget-object v3, v3, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bean/AdInfo;

    .line 42
    .local v0, ai:Lcom/app/ads/bean/AdInfo;
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 43
    check-cast v2, Lcom/app/ads/view/AdItemView;

    .line 55
    :goto_0
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/app/ads/adapter/AdInfoAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mLoadCountTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getDownCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mSuffixLoadCount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mRatingBar:Lcom/app/common/view/RatingLayout;

    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getScore()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/app/common/view/RatingLayout;->setRating(I)V

    .line 61
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mSizeTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getFileSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getSorceAward()I

    move-result v3

    if-lez v3, :cond_1

    .line 63
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mSorceAwardTv:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mSorceAwardTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getSorceAward()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mSuffixSorceAward:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    return-object v2

    .line 45
    :cond_0
    new-instance v2, Lcom/app/ads/view/AdItemView;

    .end local v2           #isb:Lcom/app/ads/view/AdItemView;
    iget-object v3, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/app/ads/view/AdItemView;-><init>(Landroid/content/Context;)V

    .line 47
    .restart local v2       #isb:Lcom/app/ads/view/AdItemView;
    iget-object v3, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x425c

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 48
    .local v1, dimen:I
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mBtn:Landroid/widget/Button;

    const-string v4, "\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/app/ads/adapter/AdInfoAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/app/ads/config/Resources;->ad_down_bg:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 65
    .end local v1           #dimen:I
    :cond_1
    iget-object v3, v2, Lcom/app/ads/view/AdItemView;->mSorceAwardTv:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
